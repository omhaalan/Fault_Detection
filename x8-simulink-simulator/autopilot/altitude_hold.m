function theta_c = altitude_hold(h_c, h, reset_integrator, P)
% theta_c = ALTITUDE_HOLD(h_c, h, reset_integrator, P)
% This routine controls the desired altituce by changing pitch
% h_c               (float)     commanded altitude
% h                 (float)     actual altitude
% reset_integrator  (bool)      resets the integrator to zero, useful for
%                               changing the operating mode.
% P                 (struct)    contains the status of the aircraft and
%                               parameters
%
% theta_c           (float)     limited commanded pitch

persistent integrator;
persistent differentiator; % TODO this does not have to be persistent, does it?
persistent differentiator_d1;
persistent error_d1;

% initialize persistent variables at beginning of simulation
if reset_integrator == 1
    integrator = 0;
    differentiator = 0;
    differentiator_d1 = 0;
    error_d1   = 0;
end

% variables
Ts = P.Ts;
tau = P.tau;
altitude_kp = 0.8 * P.altitude_kp;
altitude_ki = 0.8 * P.altitude_ki;
altitude_kd =       P.altitude_kd;

% TODO: remove hard coded values? 
%   Ts = 0.01;
%   tau = 5;
%   altitude_kp = .0656;
%   altitude_ki = .0138;
%   altitude_kd = 0;


% compute the current error
error = h_c - h;

% update the integrator
integrator = integrator + (Ts / 2) * (error + error_d1); % trapazoidal rule

% update the differentiator
differentiator = (2 * tau - Ts) / (2 * tau + Ts) * differentiator_d1...
                + (2 / (2 * tau + Ts)) * (error - error_d1);

% proportional term
up = altitude_kp * error;

% integral term
ui = altitude_ki * integrator;

% derivative term
ud = altitude_kd * differentiator;

% TODO: set simits in init.m or something else. 
% TODO: write limiter function? 
% implement PID control
if (up + ui + ud) > deg2rad(20)
    theta_c = deg2rad(20); 
elseif (up + ui + ud) < deg2rad(-20)
    theta_c = deg2rad(-20); 
else
    theta_c = up + ui + ud;
end

% implement integrator anti-windup
if altitude_ki ~= 0
    theta_c_unsat = up + ui + ud;
    k_antiwindup = Ts / altitude_ki;
    integrator = integrator + k_antiwindup * (theta_c - theta_c_unsat);
end

% update persistent variables
error_d1 = error;
differentiator_d1 = differentiator;

end