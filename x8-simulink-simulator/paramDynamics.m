function [param] = paramDynamics(param_0, param_1, rise_time, time)
%PARAMDYNAMICS 
%   return the parameter value  at t >= 0, for a parameter that
%   drifts from param_0 to param_1. Change is given by a sigmoid funciton
persistent startTime
if isempty(startTime)
    startTime = time;
end
diff = abs(param_1 - param_0);

%Sigmoind is never truly 0. Accuracy gives the acceptable start value
accuracy = 0.001 * diff; 
slope = log(1/accuracy)/(rise_time/2);

param = sigmoid(time - startTime, rise_time/2, slope) * diff + param_0;
end


