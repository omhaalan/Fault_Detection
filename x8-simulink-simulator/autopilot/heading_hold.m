function phi_c = heading_hold(psi_c, psi, r, chi, chi_c, Vg, Va, gamma, reset_integrator, P)
    %% heading_hold
    % This function holds the commanded heading chi_c by controlling the
    % ailerons (phi_c)
    % TODO: documentation of parameters. 
    
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
    course_kp = - 0.5 * P.course_kp;
    course_ki = - 0.5 * P.course_ki;
    course_kd =   0;
    
%     course_kp =  P.course_kp;
%     course_ki =  P.course_ki;
%     course_kd =  P.course_kd;
%     
    % compute the current error
    %   error = psi_c -psi;
    error = chi_c - chi;
    
    % update the integrator
    if abs(error) > deg2rad(15)
        integrator = 0;
    else
        integrator = integrator + (Ts / 2) * (error  + error_d1); % trapazoidal rule
    end
    
    % proportional term
    up = course_kp * (error);
    
    % integral term
    ui = course_ki * integrator;
    
    % derivative term
    ud = -course_kd * r;
    
    g = -9.81; % TODO remove this! 
    %   phi_c = atan((up + ui + ud)*Va/g);
    phi_c = atan(Vg * (up + ui + ud)/ g / cos(chi - psi));
    
    % implement PID control
    if (phi_c) > deg2rad(P.roll_max)
        phi_c = deg2rad(P.roll_max);
    elseif (phi_c) < - deg2rad(P.roll_max)
        phi_c = -deg2rad(P.roll_max);
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