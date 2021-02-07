function C_l_delta_r = interp_C_l_delta_r(delta_r, icing)
persistent C_l_delta_rInterpolation
if isempty(C_l_delta_rInterpolation)
    C_l_delta_rInterpolation = evalin('base', 'C_l_delta_rInterpolation');
end
    C_l_delta_r = C_l_delta_rInterpolation(delta_r, icing); 
end