close all


%% Frequency respons
load('ampDouble.mat', 'logsout')
ind = 1;
switch ind
    case 1
        rpm_index = 43;
        v_a_index = 9;
        NED_index = 45;
        I_a_index = 40;
    case 2
        rpm_index = 35;
        v_a_index = 9;
        NED_index = 39;
end

mission_type = 1;
switch mission_type
    case 0
        [~,index1] = min(abs(logsout{39}.Values.Position.p_N.Data-500));
        [~,index2] = min(abs(logsout{39}.Values.Position.p_N.Data-2000));
    case 1
        [~,index1] = min(abs(logsout{NED_index}.Values.Position.p_N.Data-400));
        %index1 = find(logsout{NED_index}.Values.Position.p_D.Time>150, 1, 'first');
        
        [~,index2] = min(abs(logsout{NED_index}.Values.Position.p_N.Data-5000));
end

time_org = logsout{NED_index}.Values.Position.p_D.Time(index1:index2);
altitude_org = -logsout{NED_index}.Values.Position.p_D.Data(index1:index2);
rpm_org = logsout{rpm_index}.Values.Data(index1:index2);
Va_org = logsout{9}.Values.Data(index1:index2);


%Remove discontinous points
mask = rpm_org > 0; %12;

%Remove false simulation points
rpm = rpm_org(mask);
Va = Va_org(mask);
alt = altitude_org(mask);
time = time_org(mask);


step = logsout{9}.Values.Time(index1+1) - logsout{9}.Values.Time(index1);
[samplesNum, ~] = size(rpm); 
timeSpan = samplesNum * step;






%% FFT
Nsamps = samplesNum;
Nfft = samplesNum; %200000;
fsamp = 1000;


[Pxx,f] = pwelch(Va,gausswin(Nfft),Nfft/2,Nfft,fsamp);
%Pxx = pwelch(x)


%% SVD


[S, level, Sva] = PEanalysis(rpm, Va);
S_normalized = S / timeSpan




%% Quick test singular values

W = zeros(simLen, 3);
for i=1:simLen
    W(i, :) = [filterBank.filters{1}.H(v_a(i), omega(i))];
end
[U, S, VT] = svd(W, 'econ');

V = VT'
L = S^2;
W_o = V * L * VT;

V * L;
W_o * V;

V' * inv(W_o) * V;

L_i = diag(diag(L .^ (-1))) ; 

%Identity is given by

(V * L)' * inv(W_o) * (V);
W_i = inv(W_o);

dir = [C_0_true(end)- C_D_0_W_REF, C_1_true(end)-C_D_J_W_REF, C_2_true(end)-C_D_J_2_W_REF];
dir_o = [-dir(2) - dir(3), dir(1), dir(1)];
sp = 0;
for i=1:2
    if i == 1
        n = 2;
    else
        n = 3;
    end
    for j=n:3
        sp = sp +1;
        subplot(4, 1, sp)
        
        R = chol([W_(i,i), W_(i,j) ; W_(j,i), W_(j,j)]);
        t = linspace(0, 2*pi, 100); % or any high number to make curve smooth
        z = [cos(t); sin(t)];
        ellipse = inv(R) * z;
        plot(ellipse(1,:), ellipse(2,:))
        hold on
        
        vec = [dir(i); dir(j)];
        scale = 1000 / norm(vec);
        plotv(scale * vec)
        tit = strcat('Plane: x_', num2str(i), ', x_', num2str(j));
        title(tit)
    end

end

T = ([dir/ norm(dir); dir_o/ norm(dir_o)])

R = chol(T * W_i * T');
t = linspace(0, 2*pi, 100); % or any high number to make curve smooth
z = [cos(t); sin(t)];
ellipse = inv(R) * z;

sp=sp+1;
subplot(4, 1, sp)
plot(ellipse(1,:), ellipse(2,:))
hold on        
vec = T * dir';
scale = 1000 / norm(vec);
plotv(scale * vec)
title("Ellipse cut along vector")


%% Plots
figure(1)
plot(f(1:500),Pxx(1:500));
title('Power Spectral Density plot')

figure(2)
%Plotting the attitude
plot(logsout{NED_index}.Values.Position.p_N.Data, -logsout{NED_index}.Values.Position.p_D.Data)
% plot(logsout{39}.Values.Attitude.theta)

figure(3)
mask_neg = not(mask);
t_nm = time_org(mask_neg);
title('Simulation State Data')
subplot(3, 1, 1)
hold on
plot(t_nm, altitude_org(mask_neg), '-', 'MarkerEdgeColor','red')
plot(time, alt, '.', 'MarkerEdgeColor' ,'blue')
legend('Faulty Simulation data', 'Healthy Simulation Data')
title('Altitude')
subplot(3, 1, 2)
hold on
plot(t_nm, rpm_org(mask_neg), '-', 'MarkerEdgeColor','red')
plot(time, rpm, '.', 'MarkerEdgeColor','blue')
legend('Faulty Simulation data', 'Healthy Simulation Data')
title('RPM')
subplot(3,1,3)
hold on
plot(t_nm, Va_org(mask_neg),'-', 'MarkerEdgeColor','red')
plot(time, Va,'.', 'MarkerEdgeColor','blue')
legend('Faulty Simulation data', 'Healthy Simulation Data')
title('Airspeed')





