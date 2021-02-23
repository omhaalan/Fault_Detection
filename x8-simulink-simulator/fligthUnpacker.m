%% Unpack matlab mission
%Note: the logsout indecies change whenever simulink signals change. This
%cause havoc on the mission flight data


%You must specify the mission here
load('flightData/new/new_logsout_f0.mat', 'logsout')



%Data set: Start with the obvious case:
%These indecies are prone to change if simulink is updated.
%The currently work with some of the missions
rpm_index = 43;
v_a_index = 9;
NED_index = 45;
I_a_index = 40;
fault_index = 10;




%% Import mission data

freq_org = 1/logsout{v_a_index}.Values.TimeInfo.Increment;
freq_new = 10;
step_rate = freq_org / freq_new;

%This switch is very mission specific
type = 3; %upDown mission = 0, variying v_a = 1, type 2 is to look at smaller area
switch type
    case 0
        % These indecies are very specific to a given mission. This will
        % change whenever new missions are used!
        [~,index1] = min(abs(logsout{NED_index}.Values.Position.p_N.Data-500));
        [~,index2] = min(abs(logsout{NED_index}.Values.Position.p_N.Data-2000));
        simLen = index2 - index1;
    case 1   
        [~,index1] = min(abs(logsout{NED_index}.Values.Position.p_N.Data-400));
        [~,index2] = min(abs(logsout{NED_index}.Values.Position.p_N.Data-5000));
        simLen = index2 - index1;
    case 2
        [~,index1] = min(abs(logsout{NED_index}.Values.Position.p_N.Data-400));
        disT = find(logsout{10}.Values.Data(1:end), 1, 'first');
        index2 = disT + 10000;
        simLen = index2 - index1;
    case 3
        height = -logsout{NED_index}.Values.Position.p_D.Data;
        index1 = find(height > 80, 1, 'first');
        index2 = length(height);
end

time = logsout{NED_index}.Values.Position.p_N.time(index1:step_rate:index2);
time = time - time(1);
simLen = length(time);


omega = logsout{rpm_index}.Values.Data(index1:step_rate:index2);
I_e = logsout{I_a_index}.Values.Data(index1:step_rate:index2);   %Double check if this one is correct based on potential label after next mission
v_a = logsout{v_a_index}.Values.Data(index1:step_rate:index2);
fault_state = logsout{fault_index}.Values.Data(index1:step_rate:index2);


transitions = [];
diff = fault_state(1:end-1) - fault_state(2:end);
transitions = find(diff ~= 0);
for i=1:simLen
    if fault_state(i) > 3
        fault_state(i) = fault_state(i) - 3;
    end
end


%if type == 1  %% This is shit and should be taken out of the code
%    fault_state(transitions(end):end) = 0;
%end


%%% Todo: add in simLen


C_0_true = logsout{35}.Values.Data(index1:step_rate:index2);
C_1_true = logsout{36}.Values.Data(index1:step_rate:index2);
C_2_true = logsout{37}.Values.Data(index1:step_rate:index2);
I_0_true = logsout{38}.Values.Data(index1:step_rate:index2);
c_v_true = logsout{39}.Values.Data(index1:step_rate:index2);

%% Static parameters -> These should be imported from mission data!!
rho = 1.225;
K_E = 0.0134;
prop_diam = 14 * 0.0254; 


%% Save variables and add in a description
inputDesc = 'Please provide a short description of this mission: ';
mission_desc = input(inputDesc, 's');

inputSim = 'Was the data simulated: [Y/N]';
ansSim = input(inputSim, 's');
if ansSim == 'Y'
    simulated = 1;
elseif ansSim == 'N'
    simulated = 0;
else
   error = 1;
   % Todo: learn how to throw error;
end

close all
plot(v_a)
k_s = zeros(1,3);
k_s(1) = input('K_1 :');
k_s(2) = input('K_2 :');
k_s(3) = input('K_3 :');


inputName = 'What would you like to call this mission? ';
mission_name = input(inputName, 's');
fileName = strcat('flightData/', mission_name, '.mat');


save(fileName, 'k_s', 'mission_desc', 'simulated', 'simLen', 'omega', 'I_e', 'v_a', 'time', 'fault_state', 'transitions', 'C_0_true', 'C_1_true', 'C_2_true', 'I_0_true', 'c_v_true', 'rho', 'K_E', 'prop_diam');





