function C_m_delta_e = interp_C_m_delta_e(delta_e, icing)
persistent C_m_delta_eInterpolation
if isempty(C_m_delta_eInterpolation)
    C_m_delta_eInterpolation = evalin('base', 'C_m_delta_eInterpolation');
end
    C_m_delta_e = C_m_delta_eInterpolation(delta_e, icing); 
end