function C_Y_delta_a = interp_C_Y_delta_a(delta_a, icing) 
persistent C_Y_delta_aInterpolation
if isempty(C_Y_delta_aInterpolation)
    C_Y_delta_aInterpolation = evalin('base', 'C_Y_delta_aInterpolation');
end
    C_Y_delta_a = C_Y_delta_aInterpolation(delta_a, icing); 
end