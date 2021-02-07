function [A] = calc_sys_lat(aos, icing)
    % [sys, A, B, C, D] = CALC_SYS_LAT(AOS, ICING)
    %   aos in degree
    %   icing from 0 to 1 
    % 
    % calculates the system matrix for the linear model x-dot = Ax + Bu for the specified AOS and 
    % icing condition
    % x = (u, alpha, q, theta)
    % 
    % Based on Fichter/Grimm. 
    % Assumptions: Yp = Yr = Yxi = 0
    % 
    % Written by A. Winter, 2019-07-31
    
    % x = (phi, beta, p , r) 
    
    load('UAVparameters/X8_ardupilot.mat', 'P');
    coeff_long; 
    coeff_lat; 
    coeff_ctrl; 
    addpath UAVparameters
    addpath('../spielwiese'); 
    
    % C and D matrices are easy: 
    C = eye(4); 
    D = 0; 
    
    aos = deg2rad(aos); 
    STEP = deg2rad(0.25); % for symmetrical difference quotient f'(x) approx (f(x+STEP) - f(x-STEP))/2*STEP
    
    %Assume cruise with certain velocity: 
    V = 20; % m/s 
    % Calculate AOA, need for drag: 
    aoa = getAOA(V, icing); 
    fprintf('Calculated AOA of %.2f deg for airspeed of %2.1f m/s', aoa, V); 
    aoa = deg2rad(aoa); 
    
    % rename a few parameters: 
    m = P.mass; 
    Jx = P.Jx; 
    Jy = P.Jy; 
    Jz = P.Jz; 
    Jxz = P.Jxz; 
    g = P.gravity; 
    theta0 = aoa; % assume horizontal flight, where theta is equal to AOA 
   
    b = P.b ; 
    rho = P.rho; 
    S = P.S_wing; 
    
    
    q = 1/2 * rho * V^2; 
    qS = q * S; 
    
    Jpxx = (Jx * Jz - Jxz^2) / Jz; 
    Jpzz = (Jx * Jz - Jxz^2) / Jx; 
    Jpxz = Jxz / ( Jx * Jz - Jxz^2); 
    
    % Query lookup table parameters: 
    CY0 = interp_C_Y_beta(aos, icing);
    Cl0 = interp_C_l_beta(aos, icing); 
    Cn0 = interp_C_n_beta(aos, icing); 
    
    %Also query drag for the AOA. Need that for the side force component: 
    CD0 = interp_C_D_alpha(aoa, icing); 
    
    CYbeta = (interp_C_Y_beta(aos + STEP, icing) - interp_C_Y_beta(aos - STEP, icing)) / (2 * STEP); 
    Clbeta = (interp_C_l_beta(aos + STEP, icing) - interp_C_l_beta(aos - STEP, icing)) / (2 * STEP); 
    Cnbeta = (interp_C_n_beta(aos + STEP, icing) - interp_C_n_beta(aos - STEP, icing)) / (2 * STEP); 
    
    CYp = interp_C_Y_p(aos, icing); 
    Clp = interp_C_l_p(aos, icing); 
    Cnp = interp_C_n_p(aos, icing); 
    
    CYr = interp_C_Y_r(aos, icing); 
    Clr = interp_C_l_r(aos, icing); 
    Cnr = interp_C_n_r(aos, icing); 
    
    Ybeta = qS * (- sin(aos) * CY0 + cos(aos) * CYbeta + cos(aos) * CD0); 
    Yp    = qS * b/(2*V) * CYp; 
    Yr    = qS * b/(2*V) * CYr; 
    
    lbeta = qS * b * Clbeta; 
    lp    = qS * b^2/(2*V) * Clp;
    lr    = qS * b^2/(2*V) * Clr;
    
    nbeta = qS * b * Cnbeta; 
    np    = qS * b^2/(2*V) * Cnp;
    nr    = qS * b^2/(2*V) * Cnr;
    
    
    A = [ % (phi, beta, p , r) 
        0                 , 0                           , 1                     , tan(theta0); 
        g/V * cos(theta0) , Ybeta / (m*V)               , Yp / (m*V)            , Yr/(m*V) - 1; 
        0                 , lbeta / Jpxx + Jpxz * nbeta , lp/Jpxx + Jpxz*np     , lr/Jpxx + Jpxz * nr; 
        0                 , Jpxz * lbeta + nbeta / Jpzz , Jpxz * lp + np / Jpzz , Jpxz * lr + nr / Jpzz
        ]; 
end

