function C_D_delta_e = interp_C_D_delta_e(delta_e, icing)
persistent C_D_delta_eInterpolation
if isempty(C_D_delta_eInterpolation)
    C_D_delta_eInterpolation = evalin('base', 'C_D_delta_eInterpolation');
end
    C_D_delta_e = C_D_delta_eInterpolation(delta_e, icing); 
end