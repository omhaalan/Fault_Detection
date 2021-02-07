function C_Y_r = interp_C_Y_r(beta, icing) 
persistent C_Y_rInterpolation
if isempty(C_Y_rInterpolation)
    C_Y_rInterpolation = evalin('base', 'C_Y_rInterpolation');
end
    C_Y_r = C_Y_rInterpolation(beta, icing); 
end