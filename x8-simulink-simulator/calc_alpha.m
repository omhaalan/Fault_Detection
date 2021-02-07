function [ alpha ] = calc_alpha(f, P, Va)
% [ alpha ] = CALC_ALPHA(f, P, Va)
%   This functions calculates the angle of attack alpha based on the
%   aircraft geometry and estimates for the aerodynamic coefficients
%
%   f       TODO figure out what f is... 
%   P       System state and description (such as wing area)
%   Va      measured airspeed. 
%   alpha   calculated AOA, PROBABLY in rad TODO check if acutally rad

% TODO: this function does not seem to be used anywhere. Is it required?

global f_x C_D_0 C_D_alpha K C_L_O C_L_alpha

K = P.rho * P.S_wing * Va.^2 / (2 * P.mass);
f_x=(f(1));
C_D_0 = P.C_D_p + (P.C_L_0^2 + 2 * P.C_L_0) / (pi * P.e * (P.b^2 / P.S_wing));
C_D_alpha=(2 * P.C_L_alpha) / (pi * P.e * (P.b^2 / P.S_wing));
C_L_O = P.C_L_O;
C_L_alpha = P.C_L_alpha;

alpha = fsolve(@aero_f_x,0);
end

function F = aero_f_x(alpha)
% F = AERO_F_X(alpha)
% This function models the forces in x-direction (?) dependent on alpha and is used to estimate 
% the AoA above. 

global f_x C_D_0 C_D_alpha K C_L_O C_L_alpha
F = K * (-(C_D_0 + C_D_alpha * alpha) * cos(alpha) ... 
    + (C_L_O + C_L_alpha * alpha)*sin(alpha)) - f_x;
end