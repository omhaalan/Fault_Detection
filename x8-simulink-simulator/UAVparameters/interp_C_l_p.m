function C_l_p = interp_C_l_p(beta, icing) 
persistent C_l_pInterpolation
if isempty(C_l_pInterpolation)
    C_l_pInterpolation = evalin('base', 'C_l_pInterpolation');
end
    C_l_p = C_l_pInterpolation(beta, icing); 
end