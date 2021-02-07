function C_D_alpha = interp_C_D_alpha(alpha, icing)
persistent C_D_aInterpolation
if isempty(C_D_aInterpolation)
    C_D_aInterpolation = evalin('base', 'C_D_aInterpolation');
end
    C_D_alpha = C_D_aInterpolation(alpha, icing); 
end