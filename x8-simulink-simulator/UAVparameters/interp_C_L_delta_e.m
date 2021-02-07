function C_L_delta_e = interp_C_L_delta_e(delta_e, icing) 
persistent C_L_delta_eInterpolation
if isempty(C_L_delta_eInterpolation)
    C_L_delta_eInterpolation = evalin('base', 'C_L_delta_eInterpolation');
end
    C_L_delta_e = C_L_delta_eInterpolation(delta_e, icing); 
end