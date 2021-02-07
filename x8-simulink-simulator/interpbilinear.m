function interpolated = interpbilinear(x, y, fx0y0, fx0y1, fx1x0, fx1y1, xlow, xhigh, ylow, yhigh)
    %interpbilinear Bilinear interpolation between four function points on recangular grid
    %   This is very similar to interp2, but extrapolation is possible here. 
    % 
    %   Four function points given at the values xlow|ylow, xlow|yhigh etc. are interpolated
    %   x        x value to evaluate the expression at
    %   y        y value to evaluate the expression at
    %   fx0y0    f(xlow, ylow)
    %   fx0y1    f(xlow, yhigh)
    %   fx1y0    f(xhigh, ylow)
    %   fx1y1    f(xhigh, yhigh)
    %   xlow     lower x value of the rectlinear grid
    %   xhigh    higher x value of the rectlinear grid
    %   ylow     lower y value of the rectlinear grid
    %   yhigh    higher y value of the rectlinear grid
    %   allowExtrapolation 
    %            if "true", a value outside of the grid is extrapolated. If false, an exception if
    %            thrown in that case. Relevant for example if x = -1 and xlow = 0
    % based on https://de.wikipedia.org/wiki/Bilineare_Filterung
    
    
    assert(xlow < xhigh, "xlow not less than xhigh")
    assert(ylow < yhigh, "ylow not less than yhigh")

     % project all points to the (0, 0) - (1, 0) - (1, 1), (0, 1) grid: 
     xproj = (x - xlow) / (xhigh - xlow); 
     yproj = (y - ylow) / (yhigh - ylow); 
     
     interpolated = [ 1 - xproj, xproj ] * [fx0y0, fx0y1; fx1x0, fx1y1] * [1 - yproj; yproj];  
end

