function C_n_delta_a = interp_C_n_delta_a(delta_a, icing)
persistent C_n_delta_aInterpolation
if isempty(C_n_delta_aInterpolation)
    C_n_delta_aInterpolation = evalin('base', 'C_n_delta_aInterpolation');
end
    C_n_delta_a = C_n_delta_aInterpolation(delta_a, icing); 
end