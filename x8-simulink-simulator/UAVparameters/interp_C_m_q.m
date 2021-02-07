function C_m_q = interp_C_m_q(alpha, icing)
persistent C_m_qInterpolation
if isempty(C_m_qInterpolation)
    C_m_qInterpolation = evalin('base', 'C_m_qInterpolation');
end
    C_m_q = C_m_qInterpolation(alpha, icing); 
end