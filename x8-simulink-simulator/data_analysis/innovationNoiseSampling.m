%Distribution sampling

%Test kalmanFilter bank
close all
%Data set: Start with the obvious case:

%% Import mission data
load('max12deg.mat', 'logsout')
%This switch is very mission specific
type = 0; %upDown mission = 0, variying v_a = 1
switch type
    case 0
        [~,index1] = min(abs(logsout{39}.Values.Position.p_N.Data-500));
        [~,index2] = min(abs(logsout{39}.Values.Position.p_N.Data-2000));
    case 1
        [~,index1] = min(abs(logsout{39}.Values.Position.p_N.Data-400));
        [~,index2] = min(abs(logsout{39}.Values.Position.p_N.Data-5000));
end
simLen = index2;


%True state variables
omega = logsout{35}.Values.Data(1:index2);
I_e = logsout{36}.Values.Data(1:index2);   %Double check if this one is correct based on potential label after next mission
v_a = logsout{9}.Values.Data(1:index2);

%Measurement noise of states
w_o = gmdistribution(0,1e0);
w_i = gmdistribution(0,1e-1);
w_a = gmdistribution(0, 1e0);
% Add measurement noise
omega_noisy = omega + random(w_o, simLen);
I_e_noisy = I_e + random(w_i, simLen);
v_a_noisy = v_a + random(w_a, simLen);

%% Import mission parameters
rho = 1.225;
%static system parameters
K_E = 0.0135;
prop_diam = 14 * 0.0254;
static_param = [K_E, prop_diam];
%Fault parameters
C_D_0_W_REF = 1.505683827973845e-06;
C_D_J_W_REF = 1.521252584734914e-06;
C_D_J_2_REF = -3.405071296948050e-06;
c_v = 3.094168891814673e-05;
I_0 = 1.942234895545819;

% Experimentation is easier when just changing I_0 nominal to a faulty
% value. This makes turns the dataset into a faulty data set
mode_true = 0;


phi_nominal= [C_D_0_W_REF, C_D_J_W_REF, C_D_J_2_REF, c_v, I_0];


%% Set up filter

filterBank = kalmanFilters(mode_true, phi_nominal, static_param);
filterBank.addFilter(0, 0, 0, 0)

%
time = [92920, 153500, 60460];
%141000,

sampleSize = 100000;
samples = zeros(3, sampleSize);

offset = filterBank.filters{1}.innovation(0, 0, 0, 0);
for j=1:sampleSize
     for i=1:3
            I = I_e(time(i)) + random(w_i, 1);
            o = omega(time(i)) + random(w_o, 1);
            v = v_a(time(i)) + random(w_a, 1);
            samples(i, j) = filterBank.filters{1}.innovation(v, o, I, 0)-offset;
     end
end
 
 figure(1)
 for i=1:3
    variance = var(samples(i,:));
    shift = mean(samples(i,:))-median(samples(i,:));
    t = strcat('V_a=', num2str(v_a(time(i))), ', \omega=', num2str(omega(time(i))), ', \sigma=', num2str(variance));
    subplot(2, 3, i)
    histogram(samples(i,:)-median(samples(i,:)), 'Normalization', 'probability')
    title(t)
    subplot(2, 3, i+3)
    normplot(samples(i,:))
    
 end
 
 figure(2)
 histogram(samples(1,:), 'Normalization', 'probability')
 hold on
 histogram(samples(2,:), 'Normalization', 'probability')
 hold on
 histogram(samples(3,:), 'Normalization', 'probability')
 title('Distribution')



