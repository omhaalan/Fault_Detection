function C_L_alpha = interp_C_L_alpha(alpha, icing) 
persistent C_L_aInterpolation
if isempty(C_L_aInterpolation)
    C_L_aInterpolation = evalin('base', 'C_L_aInterpolation');
end
    C_L_alpha = C_L_aInterpolation(alpha, icing); 
end