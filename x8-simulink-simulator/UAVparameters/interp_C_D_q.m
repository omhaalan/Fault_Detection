function C_D_q = interp_C_D_q(alpha, icing)
persistent C_D_qInterpolation
if isempty(C_D_qInterpolation)
    C_D_qInterpolation = evalin('base', 'C_D_qInterpolation');
end
    C_D_q = C_D_qInterpolation(alpha, icing); 
end