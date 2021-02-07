function delta_r = sideslip_hold(beta, flag,P)
    % SIDESLIP_HOLD
    % This function does not seem to be useful for X8 because X8 has no
    % rudder!?!
    
    
    persistent integrator;
    persistent error_d1;
    % initialize persistent variables at beginning of simulation
    if flag==1,
        integrator = 0;
        error_d1   = 0; % error at last sample (d1-delayed by one sample)
    end
    
    %Variables
    Ts = P.Ts;
    beta_kp = 2*P.beta_kp;
    beta_ki = 1*P.beta_ki;
    beta_kd = 0*P.beta_kd;
    %     roll_kp = 2.1424;
    %   roll_ki = .1;
    %   roll_kd = 1.2029;
    
    
    % compute the current error
    error = beta;
    
    % update the integrator
    integrator = integrator + (Ts/2)*(error + error_d1); % trapazoidal rule
    
    % proportional term
    up = -beta_kp * error;
    
    % integral term
    ui = -beta_ki * integrator;
    
    % derivative term
    ud = 0;
    
    
    % implement PID control
    if (up + ui + ud) > 31*pi/180
        delta_r = 31*pi/180;
    elseif (up + ui + ud) < -22*pi/180
        delta_r = -31*pi/180;
    else
        delta_r = up + ui + ud;
    end
    
    % implement integrator anti-windup
    if beta_ki~=0
        delta_r_unsat = up + ui + ud;
        k_antiwindup=Ts/beta_ki;
        integrator = integrator + k_antiwindup*(delta_r - delta_r_unsat);
    end
    
    % update persistent variables
    error_d1 = error;
    
end