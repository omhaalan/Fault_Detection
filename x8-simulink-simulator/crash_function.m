function crash_function(u)
    % This function does not seem to do anything (and is not called anywhere)
    % remove?
    
    %#codegen
    
    t = u(2);
    uu = u(1);
    
    if uu == 1;
        t = num2str(t);
        %     error(['Aircraft has crashed at t = ' t '!!!']);
end
