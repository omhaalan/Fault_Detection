function C_n_p = interp_C_n_p(beta, icing) 
persistent C_n_pInterpolation
if isempty(C_n_pInterpolation)
    C_n_pInterpolation = evalin('base', 'C_n_pInterpolation');
end
    C_n_p = C_n_pInterpolation(beta, icing); 
end