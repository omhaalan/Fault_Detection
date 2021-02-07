function C_Y_delta_r = interp_C_Y_delta_r(delta_r, icing)
persistent C_Y_delta_rInterpolation
if isempty(C_Y_delta_rInterpolation)
    C_Y_delta_rInterpolation = evalin('base', 'C_Y_delta_rInterpolation');
end
C_Y_delta_r = C_Y_delta_rInterpolation(delta_r, icing);

end