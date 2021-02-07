function delta_e = pitch_hold(theta_c, theta, q, reset_integrator,P)
    % PITCH_HOLD
    % This function sets the elevator such that the commanded pitch angle
    % is equal to the measured pitch angle.
    
    
    persistent integrator;
    persistent error_d1;
    
    % initialize persistent variables at beginning of simulation
    if reset_integrator==1
        integrator = 0;
        error_d1   = 0; % error at last sample (d1-delayed by one sample)
    end
    % Variables
    Ts = P.Ts;
    pitch_kp =  .3 * P.pitch_kp;
    pitch_ki =      P.pitch_ki;
    pitch_kd =      P.pitch_kd;
    
%     %   Ts = 0.01;
%       pitch_kp = -.5477;
%         pitch_ki = -0.05;
%       pitch_kd = -.1208;
    
    % compute the current error
    error = theta_c - theta;
    
    % update the integrator
    integrator = integrator + (Ts / 2)*(error + error_d1); % trapazoidal rule
    
    % proportional term
    up = pitch_kp * error;
    
    % integral term
    ui = pitch_ki * integrator;
    
    % derivative term
    ud = -pitch_kd * q;
    
    
    % implement PID control
    % TODO: change 35 to P.elevatorMax (or that's what I believe it should
    % be?... surprisingly, this value is not set in init.m, but aileronMax
    % is set. 
    if (up + ui + ud) > deg2rad(35)
        delta_e = deg2rad(35);
    elseif (up + ui + ud) < -deg2rad(35)
        delta_e = -deg2rad(35);
    else
        delta_e = up + ui + ud;
    end
    
    % implement integrator anti-windup
    if pitch_ki~=0
        delta_e_unsat = up + ui + ud;
        k_antiwindup = Ts / pitch_ki;
        integrator = integrator + k_antiwindup * (delta_e - delta_e_unsat);
    end
    
    % update persistent variables
    error_d1 = error;
end