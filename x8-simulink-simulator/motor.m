function [thrust,torque,omega,I_a] = motor(throttle, Va)
    %MOTOR Calculates thrust and torque for X8 based on Fitzpatrick model
    %   Based on Erlend Coates et al's "Propulsion System Modeling for Small Fixed-Wing UAVs"
    %   and Fitzpatrick's model, the thrust of the motor is determined
    %   TODO: Model torque? 
    %   TODO: Check if it's better to use P.S_prop which is slightly different (0.1018 vs 0.0993)
    % 
    % Written by Adrian Winter, 2019-07-27
    
    % Parameters: 
    rho = 1.225;                % Air density
    prop_diam = 14 * 0.0254;    % Prop diameter
    S_p = pi / 4 * prop_diam^2; % Prop area
    eta_p = 0.248; 
    k_m = 37.42;                % motor constant, m/s
    U_bat = 14;
    K_E = 0.0134;
    R_E = 0.0587;
    C_D_J_W = -0.0058/4/pi^2*prop_diam^5*rho;
    C_D_0_W = 0.0078/4/pi^2*prop_diam^5*rho;
    C_T_J_W = -0.1378/4/pi^2*prop_diam^4*rho;
    C_T_0_W = 0.126/4/pi^2*prop_diam^4*rho;
    I_0 = 1.97;
    c_v = 1e-5;
    
    
    poly = -[C_D_0_W, K_E^2/R_E + c_v + C_D_J_W*Va*2*pi/prop_diam, K_E*I_0 - K_E/R_E*U_bat*throttle];
    
    omega= min(abs(roots(poly)));
    
    J = 2*pi*Va/omega/prop_diam;
    
    thrust = (C_T_0_W + J * C_T_J_W)*omega^2;
    torque = (C_D_0_W + J * C_D_J_W)*omega^2;
    I_a = (1/R_E)*U_bat*throttle - (K_E/R_E)*omega;
%     thrust = rho * S_p * eta_p * (Va + throttle * (k_m - Va)) ... 
%                 * throttle * (k_m - Va); 
end

