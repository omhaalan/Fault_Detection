function [thrust,torque,omega,I_a,U_out, faultParams] = motor_fault(throttle, Va,fault, time)
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
    U_bat = 16.56;
    R_bat = 0.04479;
    K_E = 0.0134;
    R_E = 0.0587;
    
    C_D_0_W = 1.505683827973845e-06; %0.0078/4/pi^2*prop_diam^5*rho;
    C_D_J_W = 1.521252584734914e-06;  %-0.0058/4/pi^2*prop_diam^5*rho; %Change this, remove multiplications!!!
    C_D_J_2_W = -3.405071296948050e-06;
    
    
    C_T_J_W = -0.1378/4/pi^2*prop_diam^4*rho;
    C_T_0_W = 0.126/4/pi^2*prop_diam^4*rho;
    I_0 = 1.97;
    c_v =1e-5;
    
    riseTime = 200; %Base these on length of mission
    
    scenario = 3;
    
    if scenario == 1
        gain = 1.1;
    elseif scenario == 2
        gain = 1.01;
    elseif scenario == 3
        gain = 1.001;
    end
    gain2 = gain - 1;
    switch fault 
        case 1
            C_D_0_W = 1.505683827973845e-06; %0.0078/4/pi^2*prop_diam^5*rho;
            C_D_J_W = 1.521252584734914e-06;  %-0.0058/4/pi^2*prop_diam^5*rho; %Change this, remove multiplications!!!
            C_D_J_2_W = -3.405071296948050e-06;
            
            %Old values
            %C_D_J_W =  -0.0046/4/pi^2*prop_diam^5*rho;
            %C_D_0_W = 0.007/4/pi^2*prop_diam^5*rho;
            
            %C_T_J_W = -0.1225/4/pi^2*prop_diam^4*rho;
            %C_T_0_W = 0.1148/4/pi^2*prop_diam^4*rho;
        case 2
            c_v = c_v; %Jumps back to old values
        case 3
            I_0 = I_0; %Jumps back home!
        case 4
            %Put in correct values
            C_D_0_W = paramDynamics(C_D_0_W, gain*C_D_0_W, riseTime, time);
            C_D_J_W = paramDynamics(C_D_J_W, gain*C_D_J_W, riseTime, time);
            C_D_J_2_W = paramDynamics(C_D_J_2_W, gain2*C_D_J_2_W, riseTime, time);
            
            C_T_J_W = -0.1225/4/pi^2*prop_diam^4*rho;
            C_T_0_W = 0.1148/4/pi^2*prop_diam^4*rho;
        case 5
            c_v = paramDynamics(c_v, gain*c_v, riseTime, time);
        case 6
            I_0 = paramDynamics(I_0, gain*I_0, riseTime, time);
    end
    %poly = -[C_D_0_W, K_E^2/(R_bat*throttle^2+R_E) + c_v + C_D_J_W*Va*2*pi/prop_diam, K_E*I_0 - K_E/(R_bat*throttle^2+R_E)*U_bat*throttle]; %Change! Todo!!
    
    c1 = prop_diam^5*rho/(4*pi^2);
    c2 = 2*pi*Va/prop_diam;
    poly = -[c1*C_D_0_W, K_E^2/(R_bat*throttle^2+R_E) + c_v + C_D_J_W*c1*c2, K_E*I_0 - K_E/(R_bat*throttle^2+R_E)*U_bat*throttle + C_D_J_2_W*c1*c2^2]; 
    
    
    
    omega= min(abs(roots(poly)));
    J = c2 / omega;
    
    
    thrust = (C_T_0_W + J * C_T_J_W)*omega^2;   
    torque = (C_D_0_W + J * C_D_J_W + J^2 *C_D_J_2_W)*omega^2; %Add here
    
    I_a = (U_bat*throttle - K_E*omega)/(R_bat*throttle^2+R_E);
    U_out = U_bat - I_a*throttle * R_bat;
    faultParams = [C_D_0_W; C_D_J_W; C_D_J_2_W; c_v; I_0];
%     thrust = rho * S_p * eta_p * (Va + throttle * (k_m - Va)) ... 
%                 * throttle * (k_m - Va); 
end