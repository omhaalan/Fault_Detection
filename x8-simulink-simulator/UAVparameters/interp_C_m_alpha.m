function C_m_alpha = interp_C_m_alpha(alpha, icing)
persistent C_m_aInterpolation
if isempty(C_m_aInterpolation)
    C_m_aInterpolation = evalin('base', 'C_m_aInterpolation');
end
    C_m_alpha = C_m_aInterpolation(alpha, icing); 
end