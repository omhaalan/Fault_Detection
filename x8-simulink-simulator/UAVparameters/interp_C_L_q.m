function C_L_q = interp_C_L_q(alpha, icing)
persistent C_L_qInterpolation
if isempty(C_L_qInterpolation)
    C_L_qInterpolation = evalin('base', 'C_L_qInterpolation');
end
    C_L_q = C_L_qInterpolation(alpha, icing); 
end