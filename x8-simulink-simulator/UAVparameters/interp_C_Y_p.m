function C_Y_p = interp_C_Y_p(beta, icing) 
persistent C_Y_pInterpolation
if isempty(C_Y_pInterpolation)
    C_Y_pInterpolation = evalin('base', 'C_Y_pInterpolation');
end
    C_Y_p = C_Y_pInterpolation(beta, icing); 
end