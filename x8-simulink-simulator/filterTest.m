%Test kalmanFilter bank

%Note the possibility of index errors in many of these data sets. Something to check for if something dosen't work at all



%% Import mission data

mission_name = "M1";
% if isnan(mission_name)
%     inputName = 'What mission would you like to fetch? ';
%     mission_name = input(inputName, 's');
% end
fileName = strcat('flightData/', mission_name, '.mat');

load(fileName, 'mission_desc', 'simulated', 'simLen', 'omega', 'I_e', 'v_a', 'time', 'fault_state', 'transitions', 'C_0_true', 'C_1_true', 'C_2_true', 'I_0_true', 'c_v_true', 'rho', 'K_E', 'prop_diam', 'k_s');
load('nominal_values.mat', 'C_D_0_W_REF', 'C_D_J_W_REF', 'C_D_J_2_W_REF', 'c_v', 'I_0')

mode_index = struct('Mode_1', [1 2 3], 'Mode_2',  4, 'Mode_3', 5);   %This data is redundant at this point!

phi_nominal= [C_D_0_W_REF, C_D_J_W_REF, C_D_J_2_W_REF, c_v, I_0];
phi_true = [C_0_true, C_1_true, C_2_true, c_v_true, I_0_true]';


parameter_names = ["C_{Q,0}", "C_{Q,1}", "C_{Q,2}", "c_v", "I_0"];

%% Algorithm parameters

%%%%%%% These parameters just give an overview of what data that you run
%%%%%%% the algorithm on. The algorithm will start at start_index and end
%%%%%%% at end_index

start_index = 1;
end_index = k_s(3); %Change this with a more general term when you switch datasets
executionLen = end_index - start_index;

%Some usefull indecies: These are mission specific.

healthy_idx = 1000;
error_idx = 1700;
stop_idx = simLen;



%How often the fault detection is run.
updateRate = 100;

%Length of Bayes filter time series
detWindow = 1000;
idenWindow = k_s(3)-k_s(2)-50;

%%%% Increase these to make the byes filter more agressive. Shouldn't be
%%%% necessary

detGain=1;
idenGain = 1;

%%% The Variance that is used in the bayes filter. (Not in the kalman
%%% filter)

R_comparison = 1e-4; %Fix: This should be a constructor argument

%Mission state
state = struct('det', 0, 'id', 1, 'est', 2);

%% Dummy filters 
%for signal analysis: Don't worry about this!!



dummy = kalmanFilters(simLen, 1, phi_nominal, rho, K_E, prop_diam, 1, 1, 1, 1, 1, k_s);
dummy.addFilter(1, FilterType.detection, 0, 1, 0, 0, 1);
dummy.addFilter(2, FilterType.detection, 1e-20, 0.1, 1*1e-7, phi_nominal(mode_index.Mode_1), 1);

dummy_2 = kalmanFilters(simLen, 1, phi_true(:,error_idx)', rho, K_E, prop_diam, 1, 1, 1, 1, 1, k_s);
dummy_2.addFilter(1, FilterType.detection, 0, 1, 0, 0, 1);

dummy_phi = [phi_nominal(1:3), 0, 0];
dummy_3 = kalmanFilters(simLen, 1, dummy_phi, rho, K_E, prop_diam, 1, 1, 1, 1, 1, k_s);
dummy_3.addFilter(1, FilterType.detection, 0, 1, 0, 0, 1);

dummy_phi_2 =[phi_true(1:3), 0, 0];
dummy_4 = kalmanFilters(simLen, 1, dummy_phi_2, rho, K_E, prop_diam, 1, 1, 1, 1, 1, k_s);
dummy_4.addFilter(1, FilterType.detection, 0, 1, 0, 0, 1);


%% Add measurement noise (don't change unless necessary!)


%Generate noise
e_o = 1e1; e_v = 1e0; e_i = 1e-4;
w_o = gmdistribution(0,e_o); w_v = gmdistribution(0,e_v); w_i = gmdistribution(0,e_i);
noise_o = random(w_o, simLen); noise_i = random(w_i, simLen); noise_v = random(w_v, simLen);

%Adding noise to the measurements
omega_noisy = omega + noise_o;
I_e_noisy = I_e+ noise_i;
v_a_noisy = v_a+ noise_v;



%% Noise analysis. Don't worry about this

%Arrays for storing noise data (they are all the same)
h0_noise_free = zeros(simLen, 1); h0_noise_i_0 = h0_noise_free; h0_noisy = h0_noise_free;
h1_noise_free = zeros(simLen, 1); h1_noise_i_0 = h0_noise_free; h1_noisy = h0_noise_free;
h0_Va_omega_noise = zeros(1, simLen); h0_Va_omega_Ie_noise = h0_Va_omega_noise;
h1_Va_omega_noise = h0_Va_omega_noise; h1_Va_omega_Ie_noise = h0_Va_omega_noise;

for i=1:simLen
    start_idx = i;
    %h0 filter with varying degrees of added noise
    h0_noise_i_0(i) = dummy.filters{1}.innovation(v_a_noisy(start_idx), omega_noisy(start_idx), I_e(start_idx));
    h0_noise_free(i) = dummy.filters{1}.innovation(v_a(start_idx), omega(start_idx), I_e(start_idx));
    h0_noisy(i) = dummy.filters{1}.innovation(v_a_noisy(start_idx), omega_noisy(start_idx), I_e_noisy(start_idx));
    
    %h1 filter with varying degrees of added noise
    h1_noise_i_0(i) = dummy_2.filters{1}.innovation(v_a_noisy(start_idx), omega_noisy(start_idx), I_e(start_idx));
    h1_noise_free(i) = dummy_2.filters{1}.innovation(v_a(start_idx), omega(start_idx), I_e(start_idx));
    h1_noisy(i) = dummy_2.filters{1}.innovation(v_a_noisy(start_idx), omega_noisy(start_idx), I_e_noisy(start_idx));
    
    %Pure noise
    h0_Va_omega_noise(i) = dummy_3.filters{1}.innovation(noise_v(i), noise_o(i), 0);
    h0_Va_omega_Ie_noise(i) = dummy_3.filters{1}.innovation(noise_v(i), noise_o(i), noise_i(i));
    h1_Va_omega_noise(i) = dummy_4.filters{1}.innovation(noise_v(i), noise_o(i), 0);
    h1_Va_omega_Ie_noise(i) = dummy_4.filters{1}.innovation(noise_v(i), noise_o(i), noise_i(i));
    
end


noise_means = struct('noise_o', mean(noise_o), 'noise_v', mean(noise_v), 'noise_i_before', mean(noise_i(1:healthy_idx)), 'noise_after', mean(noise_i(error_idx:stop_idx)))

h0_fault_free = struct('noise_free', mean(h0_noise_free(1:healthy_idx)), 'noisy_mean', mean(h0_noisy(1:healthy_idx)), 'noisy_var', var(h0_noisy(1:healthy_idx)), 'noisy_v_o', mean(h0_noise_i_0(1:healthy_idx)))
h0_faulty = struct('noise_free', mean(h0_noise_free(error_idx:stop_idx)), 'noisy', mean(h0_noisy(error_idx:stop_idx)), 'noisy_v_o', mean(h0_noise_i_0(error_idx:stop_idx)))

h1_faulty = struct('noise_free', mean(h1_noise_free(1:healthy_idx)), 'noisy', mean(h1_noisy(1:healthy_idx)), 'noisy_v_o', mean(h1_noise_i_0(1:healthy_idx)));
h1_fault_free = struct('noise_free', mean(h1_noise_free(error_idx:stop_idx)), 'noisy', mean(h1_noisy(error_idx:stop_idx)), 'noisy_v_o', mean(h1_noise_i_0(error_idx:stop_idx)));

h0_pure_noise = struct('noisy', mean(h0_Va_omega_Ie_noise(1:healthy_idx)), 'noisy_v_o', mean(h0_Va_omega_noise(1:healthy_idx)))
h0_noise_var = struct('noisy', var(h0_Va_omega_Ie_noise(1:healthy_idx)), 'noisy_v_o', var(h0_Va_omega_noise(1:healthy_idx)))

h1_pure_noise = struct('noisy', mean(h1_Va_omega_Ie_noise(error_idx:stop_idx)), 'noisy_v_o', mean(h1_Va_omega_noise(error_idx:stop_idx)));


%% Method tuning

%Mode 2

%Mode 3

%Mode 4


% Eigen filter
%%%%% This code finds the SVD of the measurement model (over time)
%%%%% Don't worry about the calculations


W = zeros(simLen, 3);
for i=1:simLen
    start_idx = i;
    W(i, :) = [dummy.filters{2}.H(v_a(start_idx), omega(start_idx))];
end


[U, S, VT] = svd(W(1:healthy_idx, :), 'econ');
phiTilde_1 = VT' * phi_nominal(1:3)';
condNumb = S(2,2) / S(1,1);

%%% You can tune the eig and eig-square by changing these

Q_eigen = 1e-15 * eye(2);
Q_eigen(2,2) = 0.1*condNumb * Q_eigen(2,2); 
P_eigen = 1e-8 * eye(2);




%For square filter
Q_s = [1e-10, 0; 0, 1e-12];
phi_s_init = [0.994; -0.06] * 1e-06;

%Parameterization filter

P = 1; %Initial parameter


%% Initialize filters

%Some noise variables
R = 1.5*h0_fault_free.noisy_var; %-7
R_2 = 1e-06;




%Initialize filters
%Don't change
bank = kalmanFilters(simLen, start_index, phi_nominal,  rho, K_E, prop_diam, updateRate, detWindow, idenWindow, detGain, idenGain, k_s);
%Don't change
bank.setSimTransform(VT);
%Don't change: This is the nominal filter
bank.addFilter(1, FilterType.detection, 0, R_comparison, 0, 0, start_index);


%%%% bank.addFilter function is straight forward
%%%% add as many filters as you want. However, you can only add 1 filter
%%%% for the nominal case. This has already been done and should not be
%%%% changed.

%%% addfilter(1, 2, 3, 4, 5, 6, 7)

%%% 1: type of filter. This is a number from 1 to 8
%%%     The types can be found in the cases in the addfilter function in
%%%     the kallmanFilters file.


%%% 2: algorithm state: only use state.det

%%% 3: process noise: feel free to change

%%% 4: measurement noise: Sticking to R should be fine. All the filters should
%%% use the same R. Except the nominal filter.

%%% 5: P_0 intial error covariance

%%% 6: initial state

%%% 7: time when the algorithm starts. Use start_index




bank.addFilter(3, FilterType.detection,  1e-17, R, 1e-6, phi_nominal(4), start_index);


bank.addFilter(4, FilterType.detection, 1e-8, R, 1e-7, phi_nominal(5), start_index);

%bank.addFilter(5, FilterType.detection, 1e-1, R, 1e-1, P, start_index);
%bank.addFilter(6....)
%bank.addFilter(7, state.det, Q_eigen(1), R, P_eigen(1,1), phiTilde_1(1), start_index);

bank.addFilter(8, state.det, Q_eigen, R_2, P_eigen, phiTilde_1(1:2), start_index);



%% Run Kalman filtres


for i=start_index:end_index 
    %bank.updateFilters(v_a(i), omega(i), I_e(i), i);
    bank.updateFilters(v_a_noisy(i), omega_noisy(i), I_e_noisy(i), i);
    
    if mod(i, floor(executionLen/10))==0
        (i-start_index)/executionLen
    end
    
end
   
save('current2.mat', 'bank');

%% Plots
load('current2.mat', 'bank');
close all

%%%What you need to know about plots:

%%% bank is an object witch contains all the data.

%%% bank.filters contains all the filters. Each filter is a struct. Each
%%% struct contains all the relevant information for a kalman filter.



start_index = bank.start_index;
end_index = find(isnan(bank.Nu(2,:)), 1, 'first');




a = find(bank.detHyp ~= bank.h_0_idx, 1, 'first')
figNum = 1;

figure(figNum)
plot(time(start_index:end_index), v_a(start_index:end_index))
%title('V_a')
ylabel('Airspeed [m/s]')
xlabel('Time [s]')
figNum = figNum + 1;


index = [mode_index.Mode_1, mode_index.Mode_2, mode_index.Mode_3]
[figNum, ~] = phiPlot(phi_true, parameter_names, index, start_index, end_index, time, figNum, length(index), 1);


for i=1:bank.numDetFilt
    id = bank.detFilters(i);
    [figNum, ~] = statePlotter(bank.filters{id}, start_index, end_index, time, figNum, 2, 1);
end



M = length(bank.detProb);
probs = [1:4:M];
if probs(end) ~= M
    probs(end+1) = M;
end

for i=1:length(probs)
    [figNum] = magillPlot(bank, probs(i), omega, time, figNum);
end

M = length(bank.idenProb);
step = 4;
if M > 0
    for i=1:step:M
        if M > 1
            j_max = min(step, M-i)
        else 
            j_max = 1
        end
        for j=1:j_max
            id = bank.idenProb{i+j-1}{end}.id;
            prob = bank.idenProb{i+j-1}{end}.prob;
            k_0 = bank.idenProb{i+j-1}{end}.k_0;
            k_1 = bank.idenProb{i+j-1}{end}.k_1;
            t = [time(k_0), time(k_1)];
            [figNum, ~] = magillPlotter(bank, id, prob, t, figNum, j_max, j);
        end 
    end
end



%filterPlot(bank, bank.detProb, 4, instance, figNum)


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

function [figNum] = magillPlot(bank,instance, omega, time, figNum)
    figure(figNum)
    figNum = figNum + 1;
    
    N = length(bank.detFilters)+1;
    
    for i=1:N-1
        subplot(N, 1, i)
        
        hold on
        data = bank.detProb{instance}{i};
        plot(data.prob(1,:), 'LineWidth', 2, 'DisplayName', bank.filters{data.id(1)}.label)
        plot(data.prob(2,:), 'LineWidth', 2, 'DisplayName', bank.filters{data.id(2)}.label)
        legend;
        xlabel("Samples")
        ylabel("Probablitiy")
        title({num2str(i), strcat(num2str(time(data.k_0)), ' - ', num2str(time(data.k_1)))})
    end
    n = N;
    
    k_0 =data.k_0;
    k_1 = data.k_1;
    statePlot(k_0, k_1, omega, N, n)

end

function statePlot(start_idx, end_idx, omega, N, n)
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
        sub_size = 1;
        array = likelihoods{instance}{idx};
        sub_end = magillPlotter(bank, array.id, array.prob, sub_size, 1);
        %for i=1:numFil
        %    sub_end = statePlotter(bank.filters{id(i)}, sub_size, sub_end, array.k_0, array.k_1); 
        %end
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

function [figNum, sub_end] = magillPlotter(bank, id, prob_array, time, figNum, sub_size, sub_start)
    if sub_start == 1
        figure(figNum)
        figNum = figNum + 1;
    end
    rows = length(prob_array(:,1));
    subplot(sub_size, 1, sub_start)
    for i=1:rows
        hold on
        label = bank.filters{id(i)}.label;
        plot(prob_array(i, :), 'DisplayName', label, 'LineWidth', 2)
        title({num2str(i), strcat(num2str(time(1)), ' - ', num2str(time(2)))})
    end
    legend;
    sub_end = sub_start + 1;
end
   
function [figNum, sub_end] = statePlotter(filter, k_0, k_1, time, figNum, sub_size, sub_start)
    subplot_col = filter.state_dim;
    if sub_start == 1
        figure(figNum)
        figNum = figNum + 1;
    end
    t = time(k_0: k_1);
    
    for i=1:filter.state_dim
        subplot(sub_size, subplot_col, sub_start)
        
        plot(t, filter.x(i, k_0: k_1))
        sub_start = sub_start+1;
        
        stateName = strcat('x_', num2str(i));
        title({filter.label; stateName})
    end
    
    
    if filter.state_dim == 1
        subplot(sub_size, subplot_col, sub_start)
        
        P = filter.P(:, k_0: k_1);
        plot(t, P, 'DisplayName', 'Covariance')
        title('Covariance')
        %axis([0 (k_1-k_0) min(P)*0.9 (max(P)*1.1)])
        sub_start = sub_start+1
    elseif filter.state_dim > 1
        for i=1:filter.state_dim
            subplot(sub_size, subplot_col, sub_start)
            P = filter.P(i,i,k_0:k_1);
            plot(t, P(:,:)) %Can't be bothered with axis nowu..
            title(strcat('covarince of x_', num2str(i)))
            sub_start = sub_start + 1;
            legend;
        end
    end
    
    sub_end = sub_start;
end
        
function [figNum, sub_start] = phiPlot(phi, parameter_names, index, k_0, k_1, time, figNum, sub_size, sub_start)
    phi_plot = phi(index,:); %This transpose is a bit silly
    [dim, ~] = size(phi_plot);
    if sub_start == 1
        figure(figNum);
        figNum = figNum + 1;
    end
    for i=1:dim
        subplot(sub_size, 1, sub_start)
        if i==1
            plot([k_0:k_1], phi(i, k_0:k_1), 'DisplayName', parameter_names(i))
        else
            plot(time(k_0:k_1), phi(i, k_0:k_1), 'DisplayName', parameter_names(i))
        end
        legend;
        sub_start = sub_start + 1;
    end
end




