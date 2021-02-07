function [sys, A, B, C, D] = calc_sys_long(aoa, icing)
    % [sys, A, B, C, D] = CALC_SYS_LONG(AOA, ICING)
    %   aoa in degree
    %   icing from 0 to 1 
    % 
    % calculates the system matrix for the linear model x-dot = Ax + Bu for the specified AOA and 
    % icing condition
    % x = (u, alpha, q, theta)
    % 
    % TODO: TRANSFORM FROM STABILITY TO BODY AXES
    % 
    % Written by A. Winter, 2019-07-31
    
    % Start by getting all required data. That's the stability derivatives, and the model's
    % parameters: 
    
    load('UAVparameters/X8_ardupilot.mat', 'P');
    coeff_long; 
    coeff_ctrl; 
    
    % C and D matrices are easy: 
    C = eye(4); 
    D = 0; 
    
    aoa = deg2rad(aoa); 
    STEP = deg2rad(0.25); % for symmetrical difference quotient f'(x) approx (f(x+STEP) - f(x-STEP))/2*STEP
    
    % rename a few parameters: 
    m = P.mass; 
    U = P.Va; 
    Jy = P.Jy; 
    g = P.gravity; 
    theta = aoa; % assume horizontal flight, where theta = aoa
    c = P.c; 
    
    e = P.rho * U * P.S_wing;  % prefactor similar to q but not. "e" is just any random letter!
    
    % Define rotation matrix from stability to body axes: 
    R_bs = @(alpha,beta) [
        cos(alpha) * cos(beta), sin(beta), cos(beta) * sin(alpha); 
        -sin(beta) * cos(alpha), cos(beta), -sin(beta)*sin(alpha);
        -sin(alpha), 0, cos(alpha)
        ]'; 
    
    
    %% Calculate A matrix
    Cxu = -.5; % neglible
    Czu = 0; % neglible 
    Cmu = 0; % neglible 
    Cw0 = m * g/(1/2 * P.rho * U^2 * P.S_wing); 
    
    CDalpha = (interp_C_D_alpha(aoa + STEP, icing) - interp_C_D_alpha(aoa - STEP, icing)) / (2 * STEP); 
    CLalpha = (interp_C_L_alpha(aoa + STEP, icing) - interp_C_L_alpha(aoa - STEP, icing)) / (2 * STEP); 
    Cmalpha = (interp_C_m_alpha(aoa + STEP, icing) - interp_C_m_alpha(aoa - STEP, icing)) / (2 * STEP); 
    
    tmp = R_bs(aoa, 0) * [-CDalpha; 0; - CLalpha]; 
    CXalpha = tmp(1);
    CZalpha = tmp(3); 
    
    Czq = (interp_C_L_q(aoa + STEP, icing) - interp_C_L_q(aoa - STEP, icing)) / (2 * STEP); 
    Cmq = (interp_C_m_q(aoa + STEP, icing) - interp_C_m_q(aoa - STEP, icing)) / (2 * STEP); 
    
    
    %Xu = e * Cw0 * sin(theta) + 1/2 * e * Cxu; 
    Xu = -1/m * 1/2 * e * 2 * interp_C_D_alpha(aoa, icing)
    Xalpha = 1/2 * e * CXalpha; 
    
    
    Zu = - e * Cw0 * cos(theta) + 1/2 * e * Czu; 
    Zalpha = 1/2 * e * CZalpha;   % negative because z is down!
    Zq = - 1/4 * e * c * Czq;     % negative because z is down!
    
    Mu = 1/2 * e * c * Cmu; 
    Malpha = 1/2 * e * c * Cmalpha; 
    Mq = 1/4 * e * c^2 * Cmq ; 
    
    
    A = [
        Xu / m    , Xalpha / m    , 0             , -g * cos(theta) ; 
        Zu /(m*U) , Zalpha /(m*U) , 1 + Zq / (m*U), -g / U * sin(theta); 
        Mu /Jy    , Malpha / Jy   , Mq / Jy       , 0 ; 
        0         , 0             , 1             , 0
        ]; 
    
    %% Calculate B matrix: 
    % Assume thrust has no pitching moment and lift: 
    Zthr = 0; 
    Mthr = 0; 
    
    % Use Fitzpatrick thrust model: 
    
    syms T(deltaT) deltaT
    
    % data from Coates: 
    eta_p = 0.248;
    k_m = 37.42; 
    T(deltaT) = P.rho * P.S_prop * eta_p * (U + deltaT*(k_m - U)) * deltaT * (k_m - U); 
    dT = diff(T); 
    
    % linearize around medium thrust -- don't forget to convert to numerical value. 
    Xthr = double(dT(0.5)); 
    
    CDelev = (interp_C_D_delta_e(0 - STEP, icing) - interp_C_D_delta_e(0 + STEP, icing)) / (2 * STEP); 
    CLelev = (interp_C_L_delta_e(0 - STEP, icing) - interp_C_L_delta_e(0 + STEP, icing)) / (2 * STEP); 
    Cmelev = (interp_C_m_delta_e(0 - STEP, icing) - interp_C_m_delta_e(0 + STEP, icing)) / (2 * STEP); 
    
    tmp = R_bs(aoa, 0) * [-CDelev; 0; - CLelev]; 
    CXelev = tmp(1);
    CZelev = tmp(3); 
    
    Xelev = 1/2 * P.rho * U^2 * P.S_wing       * CXelev; 
    Zelev = 1/2 * P.rho * U^2 * P.S_wing       * CZelev; 
    Melev = 1/2 * P.rho * U^2 * P.S_wing * P.c * Cmelev; 
    
    B = [ 
        Xthr / m       , Xelev / m ; 
        Zthr / (m * U) , Zelev / (m * U); 
        Mthr / Jy      , Melev / Jy; 
        0              , 0 
        ]; 
    
    sys = ss(A, B, C, D, 'StateName', {'U', 'alpha', 'q', 'theta'}); 

    
end