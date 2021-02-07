function [output] = forces(eta, ny, quat, control, wind, P, trigger, stabilityParams, controlParams, time)
   %%  forces.m
    %   Function called from Simulink that calculates the gravitational,
    %   aerodynamical and propulsional forces acting on the UAS. Based on
    %   chapter 4 in Beard&McLain
    %
    %   Following SNAME naming convention
    %   input:
    %   output: F,m,
    %
    %   krisgry 03.09.14
    
    
    %% relabel the inputs
    %
    %     eta
    %     ny
    %     control: elevator (positive for pitch down), aileron (positive for right roll), throttle
    %     wind: wind components in N E D, rates in pqr
    %     pos     = eta(1:3);
    Theta   = eta(4:6);
    vel     = ny(1:3);
    rate    = ny(4:6);
    
    % Relabel the stability derivatives: 
    C_L_alpha = stabilityParams(1);
    C_L_q     = stabilityParams(2);
    C_D_alpha = stabilityParams(3);
    C_D_q     = stabilityParams(4);
    C_m_alpha = stabilityParams(5);
    C_m_q     = stabilityParams(6);
    C_Y_beta  = stabilityParams(7);
    C_Y_p     = stabilityParams(8); 
    C_Y_r     = stabilityParams(9);
    C_l_beta  = stabilityParams(10);
    C_l_p     = stabilityParams(11);
    C_l_r     = stabilityParams(12); 
    C_n_beta  = stabilityParams(13); 
    C_n_p     = stabilityParams(14); 
    C_n_r     = stabilityParams(15);
    C_L_delta_e = controlParams(1); 
    C_D_delta_e = controlParams(2);
    C_m_delta_e = controlParams(3); 
    C_Y_delta_a = controlParams(4); 
    C_Y_delta_r = controlParams(5); 
    C_l_delta_a = controlParams(6); 
    C_l_delta_r = controlParams(7); 
    C_n_delta_a = controlParams(8); 
    C_n_delta_r = controlParams(9); 

    
    
    %     N       = pos(1);
    %     E       = pos(2);
    %     D       = pos(3);
    %     u       = vel(1);
    %     v       = vel(2);
    %     w       = vel(3);
    phi     = Theta(1);
    theta   = Theta(2);
    psi     = Theta(3);
    p       = rate(1) + wind(4);
    q       = rate(2) + wind(5);
    r       = rate(3) + wind(6);
    
    elevator= control(1);
    aileron = control(2);
    rudder  = control(3);
    throttle= control(4);
    
    %% relative velocity
    wind_b = wind(1:3);
    vel_r = vel-wind_b;
    u_r = vel_r(1);
    v_r = vel_r(2);
    w_r = vel_r(3);
    
    %% compute airspeed Va, angle-of-attack alpha, side-slip beta. See (2.8)
    % in B&M
    Va    = sqrt(u_r^2 + v_r^2 + w_r^2);
    %if(Va == 0)
    %    Va = 0.00001;
    %end
    
    if(Va > 0.001)
        alpha = atan2(w_r , u_r);
        beta  = asin(v_r / Va);
    else 
        alpha = 0; 
        beta = 0; 
    end
    
    
    %% Compute crab angle, course angle and flight path angle
    %     crab    = atan2(vel(2),vel(1));
    %     course  = crab + psi;
    gamma_a = theta - alpha;
    gamma   = theta - atan2(vel(3), vel(1));
    vel_n   = Rquat(quat) * vel;
    course  = atan2(vel_n(2), vel_n(1));
    crab    = course - psi;
    %% compute gravitational force
    fg_v = [0; 0; P.mass * P.gravity];            % gravity in NED frame
    F_g  = Rquat(quat)' * fg_v;                   % gravity in body frame
        
    % Shorten prefator 0.5 * P.rho * Va^2 * P.S_wing = q * S := qS: 
    qS = 0.5 * P.rho * Va^2 * P.S_wing;
    
    
    %% Longitudinal mode

    % compute aero lift force
    f_lift_s = qS*( ...
               C_L_alpha  ... % = C_L(alpha)
            +  C_L_q * P.c / (2*Va) * q ...
            +  C_L_delta_e * elevator   ...
        );     %eqn 4.6 in B&M
    
    % drag
    f_drag_s = qS*( ...
            C_D_alpha ...  % C_D(alpha)
          + C_D_q * P.c / (2*Va) * q ...
          + C_D_delta_e*abs(elevator) ... 
      );     %eqn 4.7 in B&M
    
    % pitch moment
    m = qS * P.c * (            ...
         C_m_alpha              ...    % = C_m(alpha) 
       + C_m_q * P.c/(2*Va) * q ...
       + C_m_delta_e * elevator ... 
   ); %eqn 4.5 in B&M
    
    
    %% Lateral mode

    f_y = qS*(                              ...
              C_Y_beta                      ...  % C_Y_beta = C_Y(beta)! TODO: fix sign issue.
            + C_Y_p*P.b/(2*Va)*p            ...
            + C_Y_r*P.b/(2*Va)*r            ... 
            + C_Y_delta_a*aileron           ...
            + C_Y_delta_r*rudder           ... 
        ); %eqn 4.14 in B&M
    
    l   = qS * P.b * (                  ...
            C_l_beta                    ...
            + C_l_p * P.b/(2*Va) * p    ...
            + C_l_r * P.b/(2*Va) * r    ...
            + C_l_delta_a*aileron       ...
            + C_l_delta_r*rudder        ...
            ); %eqn 4.15
    

    n   = qS * P.b * (                      ...
            C_n_beta                        ...
            + P.b / (2*Va) * C_n_p * p        ...
            + P.b / (2*Va) * C_n_r * r        ...
            + C_n_delta_a * aileron           ...
            + C_n_delta_r*rudder ...
            );  
    
    %% Sum aero    %Convert from s to b frame
    F_aero = Ry(alpha)'*[-f_drag_s; 0; -f_lift_s] + [0; f_y; 0];
    T_aero = [l; m; n];
    
    %% Prop force
    [thrust,torque,omega,I_a,U_out, faultParams] = motor_fault(throttle, Va,trigger, time);
%     if trigger>=1
%         [thrust,torque,omega,I_a] = motor_fault(throttle, Va,trigger); 
%     end
    F_prop = [thrust; 0; 0];
    
    % TODO: Use more precise torque if available? 
    T_prop = [-torque;0;0];
    
    %% Sum forces
    Force = F_prop + F_g + F_aero;
    Torque = T_aero + T_prop;
   
    aerodynamicForces = [f_drag_s; f_y; f_lift_s];   % For debugging purposes only
    
    output = [Force; Torque; Va; alpha; beta; course; crab; gamma; gamma_a; wind_b;T_prop(1);aerodynamicForces;omega;I_a;U_out; faultParams];
end