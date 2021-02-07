param_0 = 2;
param_1 = 2 * param_0;

rise_time_1 = 45;
rise_time_2 = 20;



iterations = 100000;
p1 = zeros(1, iterations+1);
p2 = zeros(1, iterations+1);
p3 = zeros(1, iterations+1);



clear paramDynamics
end_time = 50;
time = [0:end_time/iterations:end_time];
for i=1:iterations+1
    if time(i) < 2
        p1(i)= param_0;
        p2(i)= param_0;
        p3(i) = param_0;
    else
        p1(i) = paramDynamics(param_0, param_1, rise_time_1, time(i));
        p2(i) = paramDynamics(param_0, param_1, rise_time_2, time(i));
        p3(i) = param_1;
    end
end

close all
figure(1)
hold on
plot(time, p1);
plot(time, p2);
plot(time, p3);
title('c_v: possible responses')
legend('Slow dynamics', 'Rapid dynamics', 'step')

