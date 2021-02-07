function C_Y_beta = interp_C_Y_beta(beta, icing) 
persistent C_Y_bInterpolation
if isempty(C_Y_bInterpolation)
    C_Y_bInterpolation = evalin('base', 'C_Y_bInterpolation');
end
    C_Y_beta = C_Y_bInterpolation(beta, icing); 
end