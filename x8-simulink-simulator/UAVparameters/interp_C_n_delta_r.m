function C_n_delta_r = interp_C_n_delta_r(delta_r, icing)
persistent C_n_delta_rInterpolation
if isempty(C_n_delta_rInterpolation)
    C_n_delta_rInterpolation = evalin('base', 'C_n_delta_rInterpolation');
end
    C_n_delta_r = C_n_delta_rInterpolation(delta_r, icing); 
end