    %Run X8 simulations
% close all; clearvars; clc;
clearvars
% %Choose what set of parameters to load: 'aerosonde', 'zagi', 'X8_param', or 'symbolic_param'
% % param = 'aerosonde';
param = 'X8_ardupilot';

% param = 'X8_param_autopilot'

% 
init;
init_ardupilot; 
bus_defintions;


P.Va = 20;
P.Va0 = 20;

% Get trim stability derivatives (alpha = 0, beta = 0, no icing): 
LINPOINT = deg2rad(4); 
% P.C_L_0     =  interp_C_L_alpha(0, 0);
P.C_L_0     =  Interp_LoopUpTable2(C_L_aInterpolation,0, 0); 

P.C_L_alpha = (Interp_LoopUpTable2(C_L_aInterpolation,LINPOINT, 0) - P.C_L_0) / LINPOINT; 
P.C_L_q     =  Interp_LoopUpTable2(C_L_qInterpolation,0, 0); 

% TODO this does not take the second-order chanes into account!
P.C_D_0     =  Interp_LoopUpTable2(C_D_aInterpolation,0, 0); 
P.C_D_alpha = (Interp_LoopUpTable2(C_D_aInterpolation,LINPOINT, 0) - P.C_D_0) / LINPOINT; 
P.C_D_q     =  Interp_LoopUpTable2(C_D_qInterpolation,0, 0); 

P.C_m_0     =  Interp_LoopUpTable2(C_m_aInterpolation,0, 0); 
P.C_m_alpha = (Interp_LoopUpTable2(C_m_aInterpolation,LINPOINT, 0) - P.C_m_0) / LINPOINT; 
P.C_m_q     =  Interp_LoopUpTable2(C_m_qInterpolation,0, 0); 
P.C_Y_0     =  Interp_LoopUpTable2(C_Y_bInterpolation,0, 0); 
P.C_Y_beta  = (Interp_LoopUpTable2(C_Y_bInterpolation,LINPOINT, 0)  - P.C_Y_0) / LINPOINT; 
P.C_Y_p     =  Interp_LoopUpTable2(C_Y_pInterpolation,0, 0); 
P.C_Y_r     =  Interp_LoopUpTable2(C_Y_rInterpolation,0, 0); 

P.C_ell_0     =  Interp_LoopUpTable2(C_l_bInterpolation,0, 0); 
P.C_ell_beta  = (Interp_LoopUpTable2(C_l_bInterpolation,LINPOINT, 0)  - P.C_ell_0) /LINPOINT; 
P.C_ell_p     =  Interp_LoopUpTable2(C_l_pInterpolation,0, 0); 
P.C_ell_r     =  Interp_LoopUpTable2(C_l_rInterpolation,0, 0); 

P.C_n_0     =  Interp_LoopUpTable2(C_n_bInterpolation,0, 0); 
P.C_n_beta  = (Interp_LoopUpTable2(C_n_bInterpolation,LINPOINT, 0)  - P.C_n_0) /LINPOINT; 
P.C_n_p     =  Interp_LoopUpTable2(C_n_pInterpolation,0, 0); 
P.C_n_r     =  Interp_LoopUpTable2(C_n_rInterpolation,0, 0); 
P.gravity = 9.80665; %From ardupilot

%% Choose control input source: trim(1), joystick(2), simple autopilot(3) or ardupilot (4) 
input_source0 = 1;
input_step_time = 0;



input_source = 4;

%% environment
wind.speed = 3;%m/s @ 6m
wind.dir = 0;%degrees clockwise from N
wind.start_time = 0;

%% Calculate trim conditions
% see p91 inStevens & Lewis
gamma = deg2rad(0);
phi   = deg2rad(0); 
R = Inf;%500;
h_ini = 1;
plot_bode = false;
%[A,B,C,D,Alat,Blat,Alon,Blon,X_trim,U_trim,Y_trim,DX,zpk_tf] = trimX8(plot_bode,P.Va,gamma,R,h_ini,phi);
% U_trim = [-0.05   -0.0000    0.0000    0.2461];
% x0             =  [ ... Initial condition 
%     37.5            ... (01) North 
%     0               ... (02) East
%     -h_ini          ... (03) Down
%     1               ... (04) quaternion (real)
%     0               ... (05) quaternion (imag 1)
%     0               ... (06) quaternion (imag 3)
%     0               ... (07) quaternion (imag 2) 
%     P.Va              ... (08) velocity u
%     0               ... (09) velocity v
%     0               ... (10) velocity w
%     0               ... (11) rotation p 
%     0               ... (12) rotation q
%     0               ... (13) rotation r
%     0               ... 
%     0               ... 
%     0               ... 
%     0               ... 
%     0.8             ... motor (t = 0)
%     ]';

% X_trim = x0; 
X8Trim;
x0             =  [ ... Initial condition 
    0            ... (01) North 
    0               ... (02) East
    -h_ini          ... (03) Down
    1               ... (04) quaternion (real)
    0               ... (05) quaternion (imag 1)
    0               ... (06) quaternion (imag 3)
    0               ... (07) quaternion (imag 2) 
    P.Va              ... (08) velocity u
    0               ... (09) velocity v
    0               ... (10) velocity w
    0               ... (11) rotation p 
    0               ... (12) rotation q
    0               ... (13) rotation r
    0               ... 
    0               ... 
    0               ... 
    0               ... 
    0.8             ... motor (t = 0)
    ]';
%[euler0(1),euler0(2),euler0(3)] = quat2angle(x0(4:7)');
%euler0 = euler0*180/pi;
euler0 = [ 0 0 0 ];


P.u_trim = U_trim;




disp ("done trimming.") 
%% Dune Connection
%% 
%javaaddpath('/Users/andreaswenz/imcjava/dist/libimc.jar')
%import pt.lsts.imc.*
%import pt.lsts.imc.net.*
% conn = StaticIMCConnection('127.0.0.1', 6002, 6001);
return; 

%% 
% airframe = ss(A,B,C,D);
% tf_Model = tf(airframe);
% P = computeGains(tf_Model,P);
% 
% x0 = [-0.0000    0.0000 -100.0000    0.0000    0.2303    0.0000   17.5248    0.0000    4.1085   -0.0000    0.0000   -0.0000]';
% [T_phi_delta_a,T_chi_phi,T_theta_delta_e,T_h_theta,T_h_Va,T_Va_delta_t,T_Va_theta,T_v_delta_r]...
% = compute_tf_model(X_trim,U_trim,P);
% P=computeGains(T_phi_delta_a,T_v_delta_r,T_theta_delta_e,T_Va_theta,T_Va_delta_t,P);
% % reduce(tf(
% %% Define reduced order transfer functions and use them to tune the PID controllers
% a2p = zpk(reduce(zpk_tf(13,2),1));
% % initPID;
scenario = 'clean';



%% Run simulation

disp("Gains computed. Starting simulation")
%sim X8

% Save
save(['savefile_states_',scenario,'.mat'],'sim_states')
save(['savefile_airdata_',scenario,'.mat'],'sim_airdata')
save(['savefile_inputs_',scenario,'.mat'],'sim_inputs')

