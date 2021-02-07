function [T_phi_delta_a, T_chi_phi, T_theta_delta_e, T_h_theta, T_h_Va, T_Va_delta_t, T_Va_theta, T_v_delta_r]...
    = compute_tf_model(x_trim, u_trim, P)
% COMPUTE_TF_MODEL
% This function computes the transfer function
% x_trim is the trimmed state,
% u_trim is the trimmed input


% TODO: 
% - For readability, change x_trim etc from array to struct? 
% - Definitiely move the constants to one single place to avoid having 
%   inconsistent values!  

% compute Gamma
Gamma =  P.Jx * P.Jz - P.Jxz^2;
Gamma3 = P.Jz  / Gamma;
Gamma4 = P.Jxz / Gamma;

% define trim constants
Va_trim = sqrt(x_trim(8)^2 + x_trim(9)^2 + x_trim(10)^2);
alpha_trim = atan(x_trim(10)/x_trim(8));
[~,theta_trim,~] = quat2angle(x_trim(4:7)');

% TODO These coefficients should REALLY REALLY be defined in one central 
% place, overriding them is extremely dangerous. 
% define coefficients for aerodynamic model
rho           = 1.2682;
cbar          = 0.3302;
b             = 1.4224;
S_wing        = 0.2589;
S_prop        = 0.0314;
k_motor       = 20;
epsilon       = 0.1592;
C_L_0         = 0.28;
C_L_alpha     = 3.45;
%C_L_q         = 0.0;
%C_L_delta_e   = -0.36;
C_D_0         = 0.03;
C_D_q         = 0.0;
C_D_delta_e   = 0.0;
C_D_alpha     = 2*P.epsilon*(P.C_L_0+P.C_L_alpha*alpha_trim)*P.C_L_alpha;
%     C_D_alpha     = 2*epsilon*(C_L_0+C_L_alpha*alpha_trim)*C_L_alpha;
%C_M_0         = 0.0;
C_M_alpha     = -0.38;
C_M_q         = -3.6;
C_M_delta_e   = -0.5;
%C_Y_0         = 0.0;
C_Y_beta      = -0.98;
%C_Y_p         = -0.26;
%C_Y_r         = 0.0;
%C_Y_delta_a   = 0.0;
C_Y_delta_r   = -0.17;
%C_ell_0       = 0.0;
%C_ell_beta    = -0.12;
C_ell_p       = -0.26;
%C_ell_r       = 0.14;
C_ell_delta_a = 0.08;
%C_ell_delta_r = 0.105;
%C_n_0         = 0.0;
%C_n_beta      = 0.25;
C_n_p         = 0.022;
%C_n_r         = -0.35;
C_n_delta_a   = 0.06;
%C_n_delta_r   = -0.032;
C_prop         = 1;
C_p_p          = Gamma3*P.C_ell_p + Gamma4*P.C_n_p;
C_p_delta_a    = Gamma3*P.C_ell_delta_a + Gamma4*P.C_n_delta_a;


%     % define transfer function constants
%     a_phi1   = -0.5*rho*Va_trim^2*S_wing*b*C_p_p*b/2/Va_trim;
%     a_phi2   = 0.5*rho*Va_trim^2*S_wing*b*C_p_delta_a;
%     a_theta1 = -rho*Va_trim^2*cbar*S_wing/2/P.Jy*C_M_q*cbar/2/Va_trim;
%     a_theta2 = -rho*Va_trim^2*cbar*S_wing/2/P.Jy*C_M_alpha;
%     a_theta3 = rho*Va_trim^2*cbar*S_wing/2/P.Jy*C_M_delta_e;
%     a_V1     = rho*Va_trim*S_wing/P.mass*(C_D_0 + C_D_alpha*alpha_trim + C_D_delta_e*u_trim(1))...
%                + rho*S_prop/P.mass*C_prop*Va_trim;
%     a_V2     = rho*S_prop/P.mass*C_prop*k_motor^2*u_trim(4);
%     a_V3     = P.gravity*cos(theta_trim - alpha_trim);
%
%     a_beta1     = -(rho*P.Va*P.S_wing)/2/P.mass*P.C_Y_beta;
%     a_beta2     = (rho*P.Va^2*P.S_wing)/2/P.mass*P.C_Y_delta_r;
% define transfer function constants
a_phi1   = -0.5 * P.rho * Va_trim^2 * P.S_wing * P.b * C_p_p * P.b / 2 / Va_trim;
a_phi2   =  0.5 * P.rho * Va_trim^2 * P.S_wing * P.b * C_p_delta_a;
a_theta1 = -      P.rho * Va_trim^2 * P.c * P.S_wing / 2 / P.Jy * P.C_m_q * P.c / 2 / Va_trim;
a_theta2 = -      P.rho * Va_trim^2 * P.c * P.S_wing / 2 / P.Jy * P.C_m_alpha;
a_theta3 =        P.rho * Va_trim^2 * P.c * P.S_wing / 2 / P.Jy * P.C_m_delta_e;
a_V1     =        P.rho * Va_trim   * P.S_wing / P.mass                                         ... 
               * (P.C_D_p + C_D_alpha * alpha_trim + P.C_D_delta_e * u_trim(1))                 ...
               +  P.rho * P.S_prop / P.mass * P.C_prop * Va_trim;
a_V2     =        P.rho * P.S_prop / P.mass * P.C_prop * P.k_motor^2 * u_trim(4);
a_V3     =        P.gravity * cos(theta_trim - alpha_trim);

a_beta1  = -      (P.rho * P.Va   * P.S_wing) / 2 / P.mass * P.C_Y_beta;
a_beta2  =        (P.rho * P.Va^2 * P.S_wing) / 2 / P.mass * P.C_Y_delta_r;

% define transfer functions
T_phi_delta_a   = tf(a_phi2             , [1,a_phi1,0]);
T_chi_phi       = tf(P.gravity/Va_trim  , [1,0]);
T_theta_delta_e = tf(a_theta3           , [1,a_theta1,a_theta2]);
T_h_theta       = tf(Va_trim            , [1,0]);
T_h_Va          = tf(theta_trim         , [1,0]);
T_Va_delta_t    = tf(a_V2               , [1,a_V1]);
T_Va_theta      = tf(-a_V3              , [1,a_V1]);
T_v_delta_r     = tf(a_beta2            , [1,a_beta1]);
