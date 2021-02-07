function theta_c = airspeed_with_pitch_hold(Va_c, Va, reset_integrator, P)
% theta_c = AIRSPEED_WITH_PITCH_HOLD(Va_c, Va, reset_integrator, P)
% This routine controls the desired airspeed by changing the path angle and
% not touching the throttle. 
% Va_c              (float)     commanded airspeed
% Va                (float)     actual airspeed
% reset_integrator  (bool)      resets the integrator to zero, useful for
%                               changing the operating mode.
% P                 (struct)    contains the status of the aircraft and
%                               parameters
%
% theta_c           (float)     limited path angle that has to be flown

persistent integrator;
persistent differentiator; % TODO: I see no reason why this should be persistent. Remove?
persistent differentiator_d1;
persistent error_d1;

% initialize persistent variables at beginning of simulation
% (reset_integrator == 1) 
if reset_integrator==1
    integrator = 0;
    differentiator = 0;
    differentiator_d1 = 0;
    error_d1   = 0;
end

% Variables
Ts = P.Ts;
tau = P.tau;
airspeed_pitch_kp = 1*P.airspeed_pitch_kp;
airspeed_pitch_ki = 1.2*P.airspeed_pitch_ki;
airspeed_pitch_kd = P.airspeed_pitch_kd;
%   airspeed_pitch_kp = -0.2770;
%   airspeed_pitch_ki = -0.3373;
%   airspeed_pitch_kd = 0;

% compute the current error
error = Va_c - Va;

% update the integrator
integrator = integrator + (Ts/2)*(error + error_d1); % trapazoidal rule

% update the differentiator
differentiator = (2*tau-Ts)/(2*tau+Ts)*differentiator_d1...
    + (2/(2*tau+Ts))*(error - error_d1);

% proportional term
up = airspeed_pitch_kp * error;

% integral term
ui = airspeed_pitch_ki * integrator;

% derivative term
ud = airspeed_pitch_kd * differentiator;


% implement PID control and limit max. pitch angle
% TODO: move limits to init.m or something else, more reasonable! 
if (up + ui + ud) > deg2rad(20)
    theta_c = deg2rad(20); 
elseif (up + ui + ud) < deg2rad(-20)
    theta_c = deg2rad(-20);
else
    theta_c = up + ui + ud;
end

% implement integrator antiwindup
if airspeed_pitch_ki~=0
    theta_c_unsat = up + ui + ud;
    k_antiwindup = Ts/airspeed_pitch_ki;
    integrator = integrator + k_antiwindup*(theta_c-theta_c_unsat);
end

% update persistent variables
error_d1 = error;
differentiator_d1 = differentiator;

end