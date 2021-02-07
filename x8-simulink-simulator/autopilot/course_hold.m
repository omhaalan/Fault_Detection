function phi_c = course_hold(chi_c, chi, r, reset_integrator, P)
% COURSE_HOLD
% Function calculates a commanded roll angle to follow the requested
% path azimuth. 
    
    persistent integrator;
    persistent error_d1;
    % initialize persistent variables at beginning of simulation
    if reset_integrator == 1
        integrator = 0;
        error_d1   = 0; % error at last sample (d1-delayed by one sample)
    end
    
    % Variables
    Ts = P.Ts;
    %   course_kp = .7257;
    %   course_ki = .1344;
    %   course_kd = 0;
    course_kp = P.course_kp;
    course_ki = P.course_ki;
    course_kd = P.course_kd;
    % compute the current error
    error = chi_c - chi;
    
    % update the integrator
    % TODO: Why is this reset implemented here??
    if abs(error) > deg2rad(15)
        integrator = 0;
    else
        integrator = integrator + (Ts / 2) * (error + error_d1); % trapazoidal rule
    end
    
    % proportional term
    up = course_kp * error;
    
    % integral term
    ui = course_ki * integrator;
    
    % derivative term
    ud = -course_kd * r;
    
    
    % implement PID control and limit to max roll angle. 
    % TODO: Move max roll angle to central place together with pitch etc. 
    if (up + ui + ud) > deg2rad(45)
        phi_c = deg2rad(45); 
    elseif (up + ui + ud) < deg2rad(-45)
        phi_c = deg2rad(-45); 
    else
        phi_c = up + ui + ud;
    end
    
    % implement integrator anti-windup
    if course_ki~=0 
        phi_c_unsat = up + ui + ud;
        k_antiwindup = Ts / course_ki;
        integrator = integrator + k_antiwindup * (phi_c - phi_c_unsat);
    end
    
    % update persistent variables
    error_d1 = error;
    
end