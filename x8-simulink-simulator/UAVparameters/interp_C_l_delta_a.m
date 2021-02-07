function C_l_delta_a = interp_C_l_delta_a(delta_a, icing)
persistent C_l_delta_aInterpolation
if isempty(C_l_delta_aInterpolation)
    C_l_delta_aInterpolation = evalin('base', 'C_l_delta_aInterpolation');
end
    C_l_delta_a = C_l_delta_aInterpolation(delta_a, icing); 
end