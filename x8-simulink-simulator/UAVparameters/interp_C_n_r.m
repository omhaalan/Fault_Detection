function C_n_r = interp_C_n_r(beta, icing)
persistent C_n_rInterpolation
if isempty(C_n_rInterpolation)
    C_n_rInterpolation = evalin('base', 'C_n_rInterpolation');
end
    C_n_r = C_n_rInterpolation(beta, icing); 
end