function [ delta ] = autopilot( sys )
% [delta] = AUTOPILOT( sys )
% This function implements a simple autopilot with four different operating
% modes.
%
% sys               (?)         states of system (contains commands!)
% delta             (4x1 float) vector containing required commands:
%                   delta_e     elevator  in rad
%                   delta_a     aileron   in rad 
%                   delta_r     rudder    is zero because no rudder
%                   delta_t     thrust    between 0 and 1

%% Parameters

% While height is below altitude_take_off_zone, full thrust and a defined 
% max. pitch angle is applied
altitude_take_off_zone = 10; % m
pitch_take_off_zone    = deg2rad(5); % rad
altitude_hold_zone = 50;     % m


%% Initialization
persistent P                % P is collected from the workspace only once. The AP always assumes the 
                            % standard flight behaviour for the entire run time. 
persistent circle_count     % used to track how many full circles have been
                            % completed. Is incremented, if flight path
                            % angle is > Pi, decremented if flight path
                            % angle < Pi
                            % TODO: better name?
persistent chi_c_old chi_off n timer % should be able to remove this savely. 


if isempty(circle_count)    % on initialization, no circles have been completed. 
    circle_count = 0;
end

%System states
pn      = sys(1);
pe      = sys(2);
pd      = sys(3);
u       = sys(4);
v       = sys(5);
w       = sys(6);
phi     = sys(7);
theta   = sys(8);
psi     = sys(9);
p       = sys(10);
q       = sys(11);
r       = sys(12);

%Commanded states
Va_c    = sys(13);
h_c     = sys(14);
chi_c   = sys(15);

%Time
t       = sys(23);
if t == 0
    P       = evalin('base','P');
    n       = 0;
    timer   = 0;
else
    P.Ts = t - timer;
    timer = t;
end


%Airdata

% TODO: what does this do?!? Induce measurement error?!
% if tt < 500
%     Va  = sys(16);
% else
%     Va  = sys(16)*.9;
% end

Va      = sys(16);
alpha   = sys(17);
beta    = sys(18);
w_b     = sys(19:21);
w_ned   = Rzyx(phi, theta, psi) * w_b;
w_n     = w_ned(1);
w_e     = w_ned(2);
w_d     = w_ned(3);
Va      = Va * cos(alpha) * cos(beta); % This changes the absolute velocity to body-fixed x-velocity, right? 
%Other states
h       = -pd;
chi     = atan2(Va * sin(psi) + w_e, Va * cos(psi) + w_n); % Which one is it? 
chi     = sys(22);

%limit commanded course and course angle to +/- pi
chi_c = chi_c - circle_count * 2 * pi;

while (chi_c > pi)
    chi_c = chi_c - 2 * pi;
    circle_count = circle_count + 1;
end
while (chi_c < -pi)
    chi_c = chi_c + 2 * pi;
    circle_count = circle_count -1;
end
if circle_count ~=0
    chi = chi - round((chi - chi_c) / pi) * pi;
end
% if isempty(chi_c_old)
%     chi_c_old = chi_c;
% end
% if isempty(chi_off)
%     chi_off =0;
% end
% if abs(chi_c_old-chi_c) > 1.5*pi
%     chi_off = chi_off + round((chi_c_old-chi_c)/pi)*pi;
% end
% chi = chi - chi_off;
% chi_c_old = chi_c;
% chi = chi + n;


%% Lateral autopilot
if t==0
    % assume no rudder, therefore set delta_r=0
    delta_r = 0;
    % use commanded roll angle to regulate heading
    phi_c   = course_hold(chi_c, chi, r, 1, P);
    % use aileron to regulate roll angle
%     phi_c = 0; 
    delta_a = roll_hold(phi_c, phi, p, 1, P);
    
else
    delta_r = 0;
    phi_c   = course_hold(chi_c, chi, r, 0, P);
%     phi_c = 0; 
    delta_a = roll_hold(phi_c, phi, p, 0, P);
end

%% Longitudinal autopilot
% define persistent variable for state of altitude state machine
persistent altitude_state;          % used to track and set the current operating mode
                                    % TODO: change to enum? 
persistent initialize_integrator;
% initialize persistent variable
if t == 0
    if h <= altitude_take_off_zone
        altitude_state = 1;
    elseif h <= h_c - altitude_hold_zone
        altitude_state = 2;
    elseif h >= h_c + altitude_hold_zone
        altitude_state = 3;
    else
        altitude_state = 4;
    end
    initialize_integrator = 1;
end

% implement state machine
switch altitude_state
    %% TAKE-OFF (max. thrust, control pitch)
    case 1  
        delta_t = 1;
        theta_c = pitch_take_off_zone;
        if h >= altitude_take_off_zone
            altitude_state = 2;
            initialize_integrator = 1;
        else
            initialize_integrator = 0;
        end
        
    %% CLIMB (max. thrust, control airspeed via pitch)
    case 2
        delta_t = 1;
        theta_c = airspeed_with_pitch_hold(Va_c, Va, initialize_integrator,P);
        if h >= h_c-altitude_hold_zone
            altitude_state = 4;
            initialize_integrator = 1;
        elseif h <= altitude_take_off_zone
            altitude_state = 1;
            initialize_integrator = 1;
        else
            initialize_integrator = 0;
        end
        
    %% DESCEND (zero thrust, control airspeed via pitch)
    case 3
        delta_t = 0;
        theta_c = airspeed_with_pitch_hold(Va_c, Va, initialize_integrator,P);
        if h <= h_c + altitude_hold_zone
            altitude_state = 4;
            initialize_integrator = 1;
        else
            initialize_integrator = 0;
        end
        
    %% ALTITUDE HOLD (throttle for speed, pitch for altitude)
    case 4
        delta_t = airspeed_with_throttle_hold(Va_c, Va, initialize_integrator,P);
        theta_c = altitude_hold(h_c, h, initialize_integrator,P);
        if h <= h_c - altitude_hold_zone
            altitude_state = 2;
            initialize_integrator = 1;
        elseif h >= h_c + altitude_hold_zone
            altitude_state = 3;
            initialize_integrator = 1;
        else
            initialize_integrator = 0;
        end
end

% Now compute the required elevator deflection from the commanded path
% angle!
if t == 0
    delta_e = pitch_hold(theta_c, theta, q, 1, P);
else
    delta_e = pitch_hold(theta_c, theta, q, 0, P);
end

%% Output
delta = [delta_e; delta_a; delta_r; delta_t];

end

