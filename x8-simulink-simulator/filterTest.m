%Test kalmanFilter bank

%Note the possibility of index errors in many of these data sets. Something to check for if something dosen't work at all



%% Import mission data

mission_name = "F2_step";
% if isnan(mission_name)
%     inputName = 'What mission would you like to fetch? ';
%     mission_name = input(inputName, 's');
% end
fileName = strcat('flightData/', mission_name, '.mat');

load(fileName, 'mission_desc', 'simulated', 'simLen', 'omega', 'I_e', 'v_a', 'time', 'fault_state', 'transitions', 'C_0_true', 'C_1_true', 'C_2_true', 'I_0_true', 'c_v_true', 'rho', 'K_E', 'prop_diam');
load('nominal_values.mat', 'C_D_0_W_REF', 'C_D_J_W_REF', 'C_D_J_2_W_REF', 'c_v', 'I_0')

mode_index = {[1 2 3], 4, 5};


phi_nominal= [C_D_0_W_REF, C_D_J_W_REF, C_D_J_2_W_REF, c_v, I_0];
phi_true = [C_0_true, C_1_true, C_2_true, I_0_true, c_v_true];

parameter_names = ["C_{Q,0}", "C_{Q,1}", "C_{Q,2}", "c_v", "I_0"];



%% Add measurement noise if the results were simulated
if simulated == 1
    %Measurement noise of states
    w_o = gmdistribution(0,1e0);
    w_a = gmdistribution(0,1e0);
    w_i = gmdistribution(0,1e-1);
    % Add measurement noise
    omega_noisy = omega; % + random(w_o, simLen+1);
    I_e_noisy = I_e; % + random(w_i, simLen+1);
    v_a_noisy = v_a; % + random(w_a, simLen+1);
else
    omega_noisy = omega;
    I_e_noisy = I_e;
    v_a_noisy = v_a;
end


%% Calculations for filters
%Induce fault in nominal values




dummy = kalmanFilters(simLen, phi_nominal,  rho, K_E, prop_diam, 1, 1, 1);
dummy.addFilter(2, 0, 1e-20, 0.1, 1*1e-7, phi_nominal(mode_index{1}), 1);

W = zeros(transitions(1), 3);
for i=1:transitions(1)
    W(i, :) = [dummy.filters{1}.H(v_a(i), omega(i))];
end
[U, S, VT] = svd(W, 'econ');
phiTilde_1 = VT' * phi_nominal(1:3)';
condNumb = S(2,2) / S(1,1);
Q_eigen = 1e-14 * eye(2);
%Q_eigen(2,2) = condNumb * Q_eigen(2,2);

P_eigen = 1e-7 * eye(2);
%For square filter
Q_s = [1e-10, 0; 0, 1e-12];
phi_s_init = [0.994; -0.06] * 1e-06;

%Parameterization filter
P = 1; %P ~= 1 imply error

phi_pertubation = 1e-8;
phi_nominal(1:2) = phi_nominal(1:2) + phi_pertubation;
phi_nominal(3) = phi_nominal(3) + phi_pertubation;


%% Initialize filters
state = struct('det', 0, 'id', 1, 'est', 2);
R = 1e-03; %-7

u = 1e05;
d = 1e-05;

start_index = 1; %Adjust this to make the simulation start from different times. Tip: Make use of transitions(i) to start at transition
end_index = transitions(1); %transitions; %Adjust this to make the simulation stop at different times.


updateRate = 1000;	%Tuning parameter
detWindow = 2000;
idenWindow = 2000;

%Initialize filters			
bank = kalmanFilters(simLen, phi_nominal,  rho, K_E, prop_diam, updateRate, detWindow, idenWindow);
bank.setSimTransform(VT);





bank.addFilter(1, state.det, 0, R, 0, 0, start_index);


%bank.addFilter(3, state.det,  1e-13, R, 1e-7, phi_nominal(4), start_index);
%bank.addFilter(3, state.det,  1e-14, R, 1e-7, phi_nominal(4), start_index);
%bank.addFilter(3, state.det,  1e-15, R, 1e-7, phi_nominal(4), start_index);

bank.addFilter(4, state.det, 1e-3, R, 1e-7, phi_nominal(5), start_index);
bank.addFilter(4, state.det, 1e-7, R, 1e-7, phi_nominal(5), start_index);
bank.addFilter(4, state.det, 1e-11, R, 1e-7, phi_nominal(5), start_index);


bank.addFilter(5, state.det, Q_eigen(1)*u, R, 1*1e-1, P, start_index);
bank.addFilter(5, state.det, Q_eigen(1), R, 1*1e-1, P, start_index);
bank.addFilter(5, state.det, Q_eigen(1)*d, R, 1*1e-1, P, start_index);

%bank.addFilter(6, state.det, Q_s, 0.1, 1*1e-7, phi_s_init, start_index); %Square: Doesn't seem to work very well

%bank.addFilter(7, state.det, Q_eigen(1)*u*u, R, P_eigen, phiTilde_1(1), start_index);
%bank.addFilter(7, state.det, Q_eigen(1)*u, R, P_eigen, phiTilde_1(1), start_index);
bank.addFilter(7, state.det, Q_eigen(1), R, P_eigen(1,1), phiTilde_1(1), start_index);
%bank.addFilter(7, state.det, Q_eigen(1)*d, R, P_eigen, phiTilde_1(1), start_index);
%bank.addFilter(7, state.det, Q_eigen(1)*d*d, R, P_eigen, phiTilde_1(1), start_index);


bank.addFilter(8, state.det, Q_eigen*u*u, R, P_eigen, phiTilde_1(1:2), start_index);
%bank.addFilter(8, state.det, Q_eigen*u, R, P_eigen, phiTilde_1(1:2), start_index);
bank.addFilter(8, state.det, Q_eigen, R, P_eigen, phiTilde_1(1:2), start_index);
%bank.addFilter(8, state.det, Q_eigen*d, R, P_eigen, phiTilde_1(1:2), start_index);
bank.addFilter(8, state.det, Q_eigen*d*d, R, P_eigen, phiTilde_1(1:2), start_index);


%%%% weed out bug: define multiple eig-scalar filters


%% Run Kalman filtres

%%%%Note noisy not used


for i=start_index:end_index 
    bank.updateFilters(v_a(i), omega(i), I_e(i), i);
    if mod(i, updateRate) == 0
        bank.faultDetection(i);
    end
end
   
save('current2.mat', 'bank');

%% Plots
load('current2.mat', 'bank');
close all

a = find(bank.detHyp == 2, 1, 'first')

instance = 11;
figNum = 1;
[N, n, figNum] = magillPlot(bank, instance, figNum);
statePlot(instance * 1000 - bank.detectionWindow, instance * 1000, v_a, I_e, omega, N, n)


filterPlot(bank, bank.detProb, 9, instance, figNum)


function resPlot(bank, filToPlot, object)
    for i=2:length(filToPlot)
        figure(i)
        filter = bank.filters{filToPlot(i)};
        idx = isnan(filter.x(1,:));
        if object == 'x'
            dim=filter.stateDim;
            for i=1:dim
                subplot(dim, 1);
                plot(filter.x(i,idx));
            end
        end
    end
end

function [N, n, figNum] = magillPlot(bank,instance, figNum)
    figure(figNum)
    N = length(bank.detectionFilters);
    
    for i=1:N-1
        subplot(N, 1, i)
        title(num2str(i))
        hold on
        struct = bank.detProb{instance}{i};
        plot(struct.prob(1,:), 'LineWidth', 2, 'DisplayName', bank.filters{struct.id(1)}.label)
        plot(struct.prob(2,:), 'LineWidth', 2, 'DisplayName', bank.filters{struct.id(2)}.label)
        legend;
        xlabel("Samples")
        ylabel("Probablitiy")
    end
    n = N;
    figNum = figNum + 1;
end

function statePlot(start_idx, end_idx, v, I, omega, N, n)
    if start_idx < 1
        start_idx = 1;
    end
    subplot(N, 1, n)
    hold on
    %plot(v(start_idx: end_idx)/mean(v(start_idx: end_idx)))
    plot(omega(start_idx: end_idx)/mean(omega(start_idx: end_idx)))
    legend('omega')
end


%This function plots the likelihood comparision of id(i) compared to id(j)
%The estimate x and covarnce P is also plotted.
%Note that this function will probably be improved upon at a later point

%%%% Todo: Sort out the erros in this plotting function! There will be many

function filterPlot(bank, likelihoods, id, instance, figNum)
    numFil = length(id);
    idx = zeros(1,numFil);
    
    for i=1:length(likelihoods{instance})
        ids = likelihoods{instance}{i}.id;
        isIdIn = sum(ids' == id);
        matches = sum(isIdIn);
        joint = false;
        
        if matches == numFil
            idx = i;
            joint = true;
            break;
        elseif matches == 1
            index = find(isIdIn, 1, 'first');
            idx(index) = i;
        end
    end
    if joint==1 && numFil > 1
        figure(figNum)
        sub_size = 5;
        array = likelihoods{instance}{idx};
        sub_end = magillPlotter(bank, array.id, array.prob, sub_size, 1);
        for i=1:numFil
            sub_end = statePlotter(bank.filters{id(i)}, sub_size, sub_end, array.k_0, array.k_1); 
        end
    elseif joint == 0 || numFil == 1
        for i=1:numFil
            sub_size = 3;
            figure(figNum + i - 1)
            array = likelihoods{instance}{idx(i)};
            sub_end = magillPlotter(bank, array.id, array.prob, sub_size, 1);
            sub_end = statePlotter(bank.filters{id(i)}, sub_size, sub_end, array.k_0, array.k_1);
        end
    end
end

function sub_end = magillPlotter(bank, id, array, sub_size, sub_start)
    rows = length(array(:,1));
    subplot(sub_size, 1, sub_start)
    for i=1:rows
        hold on
        label = bank.filters{id(i)}.label;
        plot(array(i, :), 'DisplayName', label)
    end
    legend;
    sub_end = sub_start + 1;
end
   
function sub_end = statePlotter(filter, sub_size, sub_start, k_0, k_1)
    subplot(sub_size, 1, sub_start)
    hold on
    title(strcat(num2str(filter.label), ': State'))
    for i=1:filter.state_dim
        stateName = strcat('x', num2str(i));
        plot(filter.x(i, k_0: k_1), 'DisplayName', stateName)
    end
    subplot(sub_size, 1, sub_start + 1)
    
    if filter.state_dim == 1
        P = filter.P(:, k_0: k_1);
        plot(P)
        %axis([0 (k_1-k_0) min(P)*0.9 (max(P)*1.1)])
    elseif filter.state_dim > 1
        hold on
        for i=1:filter.state_dim
            P = filter.P(i,i,k_0:k_1);
            plot(P(:,:)) %Can't be bothered with axis nowu..
        end
    end
    title(strcat(num2str(filter.mode), ' Covariance'))
    sub_end = sub_start + 2;
end
        


%% Results and labels  

%%% Todo: this is only relevant when making plots

% If else bellow is too case specific and redunant. Should be changed with
% parameter_names as given above. Some clever appraoch for scalar/vector
% case would be good.
%{
if fault_state(transitions(1)) == 1
    variables = ["C_{Q,0}", "C_{Q,1}", "C_{Q,2}", "P_{1,1}", "P_{2,2}", "P_{3,3}", "innovation \nu", "innovation covariance S"];
else
    stateName = ["c_v", "I_0"];
    variables = [stateName(fault_state(transitions(1)) - 1), "error covariance P", "innovation \nu", "innovation covariance S"];
end
vars = length(variables);
results = zeros(filterBank.numFilters * vars, simLen);
%}
%% Ploting results






%%%%%% phi_true bellow is not coherent with phi_true above

%%%%%5 phi_true above contain all parameters. It is indexed using
%%%%%phi_true(mode_index{i}). Phi true bellow only contain phi_true(mode_true).
%%%%% The new phi_size should now be given by
%%%%% length(phi_true(mode_index{i}))

%%% This is further complicated because mode_true should be traded with
%%% fault_state(transitions(1))


%Mode plots

%{
figure(1)
for i=1:N
    subplot(N, 1, i)
    hold on
    prob = modeProbs{i}.probs;
    plot(prob(1,end:-1:1), 'LineWidth', 2)
    plot(prob(2,end:-1:1), 'LineWidth', 2)
    plot(prob(3,end:-1:1), 'LineWidth', 2)
    plot(prob(4,end:-1:1), 'LineWidth', 2)
    legend("H_0", "H_1", "H_2", "H_3", 'FontSize', 18)
    xlabel("Samples")
    ylabel("Probablitiy")
    t = modeProbs{i}.time;
    if t <= transitions(2)
        tit = strcat("Bayes filter:", num2str(time(t)-time(transitions(1))), " seconds after fault start");
    else
        tit = strcat("Bayes filter:", num2str(time(t)-time(transitions(2))), " seconds after fix (step)");
    end
    title(tit, "FontSize", 18)
end
figure(3)
subplot(3, 1, 1)
hold on
plot(time(start:simLen), fault_state(start:simLen),'LineWidth', 2);
plot(time(start:simLen), hyp(start:simLen) - 1, 'LineWidth', 2);
legend("True mode", "Predicted mode")
title("System mode")
xlabel("Time")
ylabel("Mode")

subplot(3,1,2)
title("I_0 trajectory")
hold on
plot(time(start:simLen), phi_true(start:simLen))
r1 = results1(1,1:end);

start1 = r1 > 0;

time1=time(2:end);
plot(time1(start1), r1(start1))

legend("True parameter state", "Parameter estimates")
xlabel("Time")

subplot(3,1,3)
title("C_v trajectory")
hold on
plot(time(start+1:simLen), phi_nominal(mode_index{2})*ones(1, simLen-start))
r1 = results2(1,1:end);
r2 = results2(2,1:end);
r3 = results2(3,1:end);
start1 = r1 > 0;
start2 = r2 > 0;
start3 = r3 > 0;
time1=time(2:end);
plot(time1(start1), r1(1, start1))
plot(time1(start2), r2(1, start2))
plot(time1(start3), r3(1, start3))
legend("True parameter state", "Parameter estimates")
xlabel("Time")

figure(3)

subplot(2,1,1)
hold on
plot(fp1(1,end:-1:1), 'LineWidth', 2)
plot(fp1(2,end:-1:1), 'LineWidth', 2)
plot(fp1(3,end:-1:1), 'LineWidth', 2)

legend(strcat("Q = ", num2str(fp1Q(1))), strcat("Q = ", num2str(fp1Q(2))), strcat("Q = ", num2str(fp1Q(3))), 'FontSize', 18)
ylabel("Probablitiy")
xlabel("Samples")
tit2 = strcat("Mode ", num2str(mode_true),": Filter probability for growing c_v");
title(tit2, "FontSize", 18)

subplot(2,1,2)
hold on
plot(fp2(1,end:-1:1), 'LineWidth', 2)
plot(fp2(2,end:-1:1), 'LineWidth', 2)
plot(fp2(3,end:-1:1), 'LineWidth', 2)

legend(strcat("Q = ", num2str(fp2Q(1))), strcat("Q = ", num2str(fp2Q(2))), strcat("Q = ", num2str(fp2Q(3))), 'FontSize', 18)
ylabel("Probablitiy")
xlabel("Samples")
tit2 = strcat("Mode ", num2str(mode_true),": Filter probability for stable c_v");
title(tit2, "FontSize", 18)

subplot(3,1,3)
hold on
plot(fp3(1,end:-1:1), 'LineWidth', 2)
plot(fp3(2,end:-1:1), 'LineWidth', 2)
plot(fp3(3,end:-1:1), 'LineWidth', 2)

legend(strcat("Q = ", num2str(fp3Q(1))), strcat("Q = ", num2str(fp3Q(2))), strcat("Q = ", num2str(fp3Q(3))), 'FontSize', 18)
ylabel("Probablitiy")
xlabel("Samples")
tit2 = strcat("Mode ", num2str(mode_true),": Filter probability for stable c_v");
title(tit2, "FontSize", 18)



figure(3)
end1 = 21500;
r1 = results2(1,1:end-end1);
r2 = results2(2,1:end-end1);
r3 = results2(3,1:end-end1);
start1 = r1 > 0;
start2 = r2 > 0;
start3 = r3 > 0;


time1=time(2:end-end1);

subplot(2, 1 , 1, 'FontSize', 18)
hold on
plot(time1(start1), r1(start1))
plot(time1(start2), r2(start2))
plot(time1(start3), r3(start3))
legend('High noise filter', 'Moderate noise filter', 'Low noise filter')
title("During during rapid change")
subplot(2, 1 , 2, 'FontSize', 18)
hold on

plot(time1(start1), r1(start1))
plot(time1(start2), r2(start2))
plot(time1(start3), r3(start3))
legend('High noise filter', 'Moderate noise filter', 'Low noise filter')
title("Estimates before step")

if mode_true ~=  1
    for i=i:filterBank.numFilters
        
        
        figure(figNum);
        figNum = figNum + 1;
        for j=1:vars        
            subplot(vars, 1, j);
            plot(time(2:end), results(j + (i-1)*vars, :));
            tit = variables(j);
            if j == 2
                tit = strcat(tit, " with Q=", num2str(filterBank.filters{i}.Q));
            elseif j == 4
                tit = strcat(tit, " with R=", num2str(filterBank.filters{i}.R));
            end
            title(tit);
        end
    end
else
    for i=1:filterBank.numFilters
        figure(i);
        subplot(3, 1, 1)
        plot(results(7 + (i-1)*vars, :));
        title(variables(7))
        subplot(3, 1, 2)
        hold on
        plot(results(4 + (i-1)*vars, :));
        plot(results(5 + (i-1)*vars, :));
        plot(results(6 + (i-1)*vars, :));
        title('P covariances')
        subplot(3, 1, 3)
        plot(results(8 + (i-1)*vars, :));
        title('S innovation covariances')
    end
end





figure(figNum)
subplot(4, 1, 1)
plot(time, v_a)
title('v_a')
subplot(4, 1, 2)
plot(time, omega)
title('\omega')
subplot(4,1,3)
plot(time, I_e)
title('I_e')
subplot(4,1,4)
plot(time, -logsout{NED_index}.Values.Position.p_D.Data(index1:index2))
title('Altitude')
%}

%{
hold on
for i=1:phi_size
    
    figure(figNum)
    figNum = figNum + 1;
    
    for j=1:filterBank.numFilters
        subplot(filterBank.numFilters, 1, j, 'FontSize',18)
        hold on
        plot(time(2 :end), results(i + vars*(j-1),1:end))
        plot(time(1:end), phi_true(i, 1:end));
        Q = filterBank.filters{j}.Q;
        R = filterBank.filters{j}.R;
        title(strcat("Estimation of ", variables(i), ", Process noise: Q=", num2str(Q(1,1)), ", Measurement noise: R=", num2str(R(1,1))))
        leg_j = (strcat(variables(i), " estimate"));
        leg_true = strcat(variables(i), " true");
        legend(leg_j, leg_true)
    end
    
end



for j=1:filterBank.numFilters
    figure(figNum)
    figNum = figNum + 1;
    
    for i=1:phi_size
        subplot(phi_size, 1, i)
        hold on
        plot(time(2 :end), results(i + vars*(j-1),1:end))
        plot(time(1:end), phi_true(i, 1:end));
        Q = filterBank.filters{j}.Q;
        R = filterBank.filters{j}.R;
        title(strcat("Process noise: Q=", num2str(Q(1,1)), " Measurement noise: R=", num2str(R(1,1)) , ": estimation of ", variables(i)))
        leg_j = (strcat(variables(i), "estimate"));
        leg_true = strcat("True ", variables(i));
        legend(leg_j, leg_true)
    end
    
end
%}

%{
hold on
for j=1:filterBank.numFilters
    figNum = figNum + 1;
    figure(figNum)
    for i=1:phi_size
        subplot(phi_size,1,i)
        plot(time(1:end-1), abs(results(i + vars*(j-1),:) - phi_true(i, 1:end-1)))
        title(strcat("Absolute estimation error of Kalman filter ", num2str(j)));
    end
    
end
%}







% evalVariables = ["abs state error x"];
% evalVar = length(evalVariables);
% evaluation = zeros(filterBank.numFilters * evalVar, simLen);
% %Note that result arrays will need a small overhaul fault 1 is introduced.

%filter metrics
% for i=1:filterBank.numFilters
%     figure(filterBank.numFilters+i);
%     for j=1:1
%         subplot(evalVar, 1, j);
%         plot(time(2:end), evaluation((i-1)*var + j, :));
%         title(evalVariables(j));
%     end
% end

%{
figure(13)
subplot(2,1,1, 'FontSize',18)
hold on
plot(time(1:end), phi_true(1:end));
plot(time(2 :end), results(1 + vars*(2-1),1:end))
Q = filterBank.filters{2}.Q;
R = filterBank.filters{2}.R;
title(strcat("Estimation of small c_v, Process noise: Q=", num2str(Q(1,1)), ", Measurement noise: R=", num2str(R(1,1))))
legend("True c_v", "Estimated c_v")

subplot(2, 1, 2, 'FontSize',18)
hold on
plot(time(2:end), results(3 + (2-1)*vars, :));


plot(time(2:end), inn(1:end));
legend("Filter innovation \nu", "Innovation static model")
title("Innovation from Kalmanfilter and static model")

%}


% Functionplots



