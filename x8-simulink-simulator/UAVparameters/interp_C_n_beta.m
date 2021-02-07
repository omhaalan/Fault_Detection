function C_n_beta = interp_C_n_beta(beta, icing)
persistent C_n_bInterpolation
if isempty(C_n_bInterpolation)
    C_n_bInterpolation = evalin('base', 'C_n_bInterpolation');
end
    C_n_beta = C_n_bInterpolation(beta, icing); 
end