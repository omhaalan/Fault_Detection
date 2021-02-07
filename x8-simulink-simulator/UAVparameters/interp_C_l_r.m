function C_l_r = interp_C_l_r(beta, icing)
persistent C_l_rInterpolation
if isempty(C_l_rInterpolation)
    C_l_rInterpolation = evalin('base', 'C_l_rInterpolation');
end
    C_l_r = C_l_rInterpolation(beta, icing); 
end