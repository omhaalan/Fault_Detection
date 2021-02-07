function delta_t = airspeed_with_throttle_hold(Va_c, Va, reset_integrator, P)
% delta_t = AIRSPEED_WITH_THROTTLE_HOLD(Va_c, Va, reset_integrator, P)
% This routine controls the desired airspeed by changing the throttle and
% not touching anything else. 
% Va_c              (float)     commanded airspeed
% Va                (float)     actual airspeed
% reset_integrator  (bool)      resets the integrator to zero, useful for
%                               changing the operating mode.
% P                 (struct)    contains the status of the aircraft and
%                               parameters
%
% delta_t           (float)     limited (between 0 and 1) throttle setting

persistent integrator;
persistent differentiator; % TODO: This does not have to be persistent, does it?
persistent differentiator_d1;
persistent error_d1;

% initialize persistent variables at beginning of simulation
if reset_integrator == 1
    integrator = 0;
    differentiator = 0; 
    differentiator_d1 = 0;
    error_d1   = 0;
end

% Variables
Ts = P.Ts;
tau = P.tau;
airspeed_throttle_kp = 0.01*P.airspeed_throttle_kp;
airspeed_throttle_ki = .1*P.airspeed_throttle_ki;
airspeed_throttle_kd = 1*P.airspeed_throttle_kd;
u_trim = P.u_trim(4);

% TODO: remove hard coded values if possible?
%   tau = 5;
%   airspeed_throttle_kp = 7.0497;
%   airspeed_throttle_ki = 0.9649;
%   airspeed_throttle_kd = 0.1;
%   u_trim = 0.9135;

% compute the current error
error = Va_c - Va;

% update the integrator
integrator = integrator + (Ts / 2) * (error + error_d1); % trapazoidal rule

% update the differentiator
differentiator = (2 * tau - Ts) / (2 * tau + Ts) * differentiator_d1 ...
                 + (2 / (2 * tau + Ts)) * (error - error_d1);

% proportional term
up = airspeed_throttle_kp * error;

% integral term
ui = airspeed_throttle_ki * integrator;

% derivative term
ud = airspeed_throttle_kd * differentiator;

% implement PID control and limit to 0 and 1 (no thrust, full thrust)
if (u_trim + up + ui + ud) > 1
    delta_t = 1;
elseif (u_trim + up + ui + ud) < 0
    delta_t = 0;
else
    delta_t = u_trim + up + ui + ud;
end

% implement integrator anti-windup
if airspeed_throttle_ki ~= 0
    delta_t_unsat = u_trim + up + ui + ud;
    k_antiwindup = Ts / airspeed_throttle_ki;
    integrator = integrator + k_antiwindup * (delta_t - delta_t_unsat);
end

% update persistent variables
error_d1 = error;
differentiator_d1 = differentiator;

end % function