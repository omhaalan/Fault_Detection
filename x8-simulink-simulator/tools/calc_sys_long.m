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
    addpath UAVparameters
    
    % C and D matrices are easy: 
    C = eye(4); 
    D = 0; 
    
    aoa = deg2rad(aoa); 
    STEP = deg2rad(0.25); % for symmetrical difference quotient f'(x) approx (f(x+STEP) - f(x-STEP))/2*STEP
    
    % rename a few parameters: 
    m = P.mass; 
    V = P.Va; 
    Jy = P.Jy; 
    g = P.gravity; 
    theta0 = aoa; % assume horizontal flight, where theta = aoa
    c = P.c; 
    rho = P.rho; 
    S = P.S_wing; 
    
    iF = 0; % thrust parallel to x
    
    q = 1/2 * rho * V^2; 
    qS = q * S; 
    
    % Define rotation matrix from stability to body axes: 
    R_bs = @(alpha,beta) [
        cos(alpha) * cos(beta), sin(beta), cos(beta) * sin(alpha); 
        -sin(beta) * cos(alpha), cos(beta), -sin(beta)*sin(alpha);
        -sin(alpha), 0, cos(alpha)
        ]'; 
    
    %% Calculate trim conditions: 
    % Calculate trim CL, CD, Cm: 
    CL0 = interp_C_L_alpha(aoa, icing);
    CD0 = interp_C_D_alpha(aoa, icing); 
    Cm0 = interp_C_m_alpha(aoa, icing); 
    
    CDalpha = (interp_C_D_alpha(aoa + STEP, icing) - interp_C_D_alpha(aoa - STEP, icing)) / (2 * STEP); 
    CLalpha = (interp_C_L_alpha(aoa + STEP, icing) - interp_C_L_alpha(aoa - STEP, icing)) / (2 * STEP); 
    Cmalpha = (interp_C_m_alpha(aoa + STEP, icing) - interp_C_m_alpha(aoa - STEP, icing)) / (2 * STEP); 
    
    CDq = 0; 
    CLq = interp_C_L_q(aoa, icing); 
    Cmq = interp_C_m_q(aoa, icing);  
    
 
    % This and the takeoff mass gives us the trim velocity:
    V = sqrt( m*g/(0.5 * rho * S * CL0)); 
    % This also gives us a trim drag: 
    Drag = 1/2 * rho * S * V^2 * CD0;
    
    
    %% Thrust model: 
        % Assume thrust has no pitching moment and lift: 
    Zthr = 0; 
    Mthr = 0; 
    
    % Use Fitzpatrick thrust model: 
    
    syms T(s_deltaT, s_U) s_deltaT s_U
    
    % data from Coates: 
    eta_p = 0.248;
    k_m = 37.42; 
    T(s_deltaT, s_U) = P.rho * P.S_prop * eta_p * (s_U + s_deltaT*(k_m - V)) * s_deltaT * (k_m - s_U); 
    dT = diff(T, s_deltaT); 
    dU = diff(T, s_U);
    
    % Using the trim drag, we can calculate the required thrust setting: 
    throttle_settings = double(solve(Drag == T(s_deltaT, V), s_deltaT));
    % only select the solution > 0 and < 1: 
    deltaT = throttle_settings(throttle_settings > 0 & throttle_settings < 1); 
    if(size(deltaT, 1) == 0)
        error('could not trim thrust!')
    end
    % Calculate thrust coefficient: 
    
    
    % linearize around medium thrust -- don't forget to convert to numerical value. 
    Xthr = double(dT(deltaT, V)); 
    XFV = double(dU(deltaT, V)); 
    
   
    
    
    %% Calculate A matrix    
    XV = rho * S * V * (-cos(aoa) * CD0 + sin(aoa) * CL0) + XFV; 
    ZV = rho * S * V * (-sin(aoa) * CD0 - cos(aoa) * CL0);  % TODO: pos. oder neg. sin?
    MV = rho * S * V * c * Cm0; 
    
    Xalpha = qS * ( sin(aoa) * CD0 - cos(aoa) * CDalpha + cos(aoa) * CL0 + sin(aoa) * CLalpha); 
    Zalpha = qS * ( sin(aoa) * CL0 - cos(aoa) * CLalpha - cos(aoa) * CD0 - sin(aoa) * CDalpha); 
    Malpha = qS * c * Cmalpha; 
    
    Xq = qS * (-cos(aoa) *c/(2*V) * CDq + sin(aoa) * c/(2*V) * CLq); 
    Zq = qS * (-cos(aoa) * c/(2*V) * CLq - sin(aoa) * c/(2*V) * CDq); 
    Mq = qS * c * c/(2*V) * Cmq; 
    
    fprintf('AOA = %2.2f    V = %2.2f    Gleitzahl = %.5f\n', rad2deg(aoa), V, CL0/CD0); 
    
    
    A = [  % u alpha q theta
        XV / m      , Xalpha / m    , 0             , -g*cos(theta0); 
        ZV / (m * V), Zalpha / (m*V), 1 + Zq / (m*V), -g/V * sin(theta0); 
        MV / Jy     , Malpha / Jy   , Mq / Jy       , 0; 
        0           , 0             , 1             , 0
        ]; 
    
    %% Calculate B matrix: 

    
    CDelev = (interp_C_D_delta_e(0 - STEP, icing) - interp_C_D_delta_e(0 + STEP, icing)) / (2 * STEP); 
    CLelev = (interp_C_L_delta_e(0 - STEP, icing) - interp_C_L_delta_e(0 + STEP, icing)) / (2 * STEP); 
    Cmelev = (interp_C_m_delta_e(0 - STEP, icing) - interp_C_m_delta_e(0 + STEP, icing)) / (2 * STEP); 
    
    tmp = R_bs(aoa, 0) * [-CDelev; 0; - CLelev]; 
    CXelev = tmp(1);
    CZelev = tmp(3); 
    
    Xelev = 1/2 * P.rho * V^2 * P.S_wing       * CXelev; 
    Zelev = 1/2 * P.rho * V^2 * P.S_wing       * CZelev; 
    Melev = 1/2 * P.rho * V^2 * P.S_wing * P.c * Cmelev; 
    
    B = [ 
        Xthr / m       , Xelev / m ; 
        Zthr / (m * V) , Zelev / (m * V); 
        Mthr / Jy      , Melev / Jy; 
        0              , 0 
        ]; 
    
    sys = ss(A, B, C, D, 'StateName', { 'alpha', 'q', 'U', 'theta'}); 

    
end