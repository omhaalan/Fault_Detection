function C_l_beta = interp_C_l_beta(beta, icing) 
persistent C_l_bInterpolation
if isempty(C_l_bInterpolation)
    C_l_bInterpolation = evalin('base', 'C_l_bInterpolation');
end
    C_l_beta = C_l_bInterpolation(beta, icing); 
end