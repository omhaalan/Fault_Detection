function  coeff_ctrl()
%Interpolation of control derivatives for different icing scenarios
%Input: angle (elevator, aileron or rudder) in deg
%       icing: Icing szenario: 0 clean, 1 mixed
% Data taken from Gryte (Aerodynamic Modeling of Sykwalker X8 ...) and
% currently not a function of elevator deflection, AOA, AOS, or icing! 


% Collect all data (rudder: C_?_r = 0)
C_L_delta_e_data = [ 
0, 0, 0.278;
1, 0, 0.278;
0, 1, 0.278;
1, 1, 0.278;
];
C_D_delta_e_data = [ 
0, 0, 0.0633; 
1, 0, 0.0633; 
0, 1, 0.0633; 
1, 1, 0.0633; 
];
C_m_delta_e_data = [ 
0, 0, -0.206;
1, 0, -0.206;
0, 1, -0.206;
1, 1, -0.206;
];
C_Y_delta_a_data = [ 
0, 0, 0.0433;
1, 0, 0.0433;
0, 1, 0.0433;
1, 1, 0.0433;
];
C_Y_delta_r_data = [ 
0, 0, 0;
1, 0, 0;
0, 1, 0;
1, 1, 0;
];
C_l_delta_a_data = [ 
0, 0, 0.12;
1, 0, 0.12;
0, 1, 0.12;
1, 1, 0.12;
];
C_l_delta_r_data = [ 
0, 0, 0;
1, 0, 0;
0, 1, 0;
1, 1, 0;
];
C_n_delta_a_data = [ 
0, 0, -0.00339;
1, 0, -0.00339;
0, 1, -0.00339;
1, 1, -0.00339;
];
C_n_delta_r_data = [ 
0, 0, 0;
1, 0, 0;
0, 1, 0;
1, 1, 0;
];

% Convert control surface deflections from deg to rad: 
C_L_delta_e_data(:,1) = deg2rad(C_L_delta_e_data(:, 1)); 
C_D_delta_e_data(:,1) = deg2rad(C_D_delta_e_data(:, 1)); 
C_m_delta_e_data(:,1) = deg2rad(C_m_delta_e_data(:, 1)); 
C_Y_delta_a_data(:,1) = deg2rad(C_Y_delta_a_data(:, 1)); 
C_Y_delta_r_data(:,1) = deg2rad(C_Y_delta_r_data(:, 1)); 
C_l_delta_a_data(:,1) = deg2rad(C_l_delta_a_data(:, 1)); 
C_l_delta_r_data(:,1) = deg2rad(C_l_delta_r_data(:, 1)); 
C_n_delta_a_data(:,1) = deg2rad(C_n_delta_a_data(:, 1)); 
C_n_delta_r_data(:,1) = deg2rad(C_n_delta_r_data(:, 1)); 

% Generate scatteredInterpolant: 
% C_L_delta_eInterpolation = scatteredInterpolant(C_L_delta_e_data(:, 1), C_L_delta_e_data(:, 2), C_L_delta_e_data(:, 3)); 
C_L_delta_eInterpolation = Create_interpolation(C_L_delta_e_data,'C_L_delta_e_data');

% C_D_delta_eInterpolation = scatteredInterpolant(C_D_delta_e_data(:, 1), C_D_delta_e_data(:, 2), C_D_delta_e_data(:, 3)); 
C_D_delta_eInterpolation = Create_interpolation(C_D_delta_e_data,'C_D_delta_e_data');

% C_m_delta_eInterpolation = scatteredInterpolant(C_m_delta_e_data(:, 1), C_m_delta_e_data(:, 2), C_m_delta_e_data(:, 3)); 
C_m_delta_eInterpolation = Create_interpolation(C_m_delta_e_data,'C_m_delta_e_data');

% C_Y_delta_aInterpolation = scatteredInterpolant(C_Y_delta_a_data(:, 1), C_Y_delta_a_data(:, 2), C_Y_delta_a_data(:, 3)); 
C_Y_delta_aInterpolation = Create_interpolation(C_Y_delta_a_data,'C_Y_delta_a_data');

% C_Y_delta_rInterpolation = scatteredInterpolant(C_Y_delta_r_data(:, 1), C_Y_delta_r_data(:, 2), C_Y_delta_r_data(:, 3)); 
C_Y_delta_rInterpolation = Create_interpolation(C_Y_delta_r_data,'C_Y_delta_r_data');

% C_l_delta_aInterpolation = scatteredInterpolant(C_l_delta_a_data(:, 1), C_l_delta_a_data(:, 2), C_l_delta_a_data(:, 3)); 
C_l_delta_aInterpolation = Create_interpolation(C_l_delta_a_data,'C_l_delta_a_data');

% C_l_delta_rInterpolation = scatteredInterpolant(C_l_delta_r_data(:, 1), C_l_delta_r_data(:, 2), C_l_delta_r_data(:, 3)); 
C_l_delta_rInterpolation = Create_interpolation(C_l_delta_r_data,'C_l_delta_r_data');

% C_n_delta_aInterpolation = scatteredInterpolant(C_n_delta_a_data(:, 1), C_n_delta_a_data(:, 2), C_n_delta_a_data(:, 3)); 
C_n_delta_aInterpolation = Create_interpolation(C_n_delta_a_data,'C_n_delta_a_data');

% C_n_delta_rInterpolation = scatteredInterpolant(C_n_delta_r_data(:, 1), C_n_delta_r_data(:, 2), C_n_delta_r_data(:, 3)); 
C_n_delta_rInterpolation = Create_interpolation(C_n_delta_r_data,'C_n_delta_r_data');


% Export data:
assignin('base', 'C_L_delta_eInterpolation', C_L_delta_eInterpolation);
assignin('base', 'C_D_delta_eInterpolation', C_D_delta_eInterpolation);
assignin('base', 'C_m_delta_eInterpolation', C_m_delta_eInterpolation);
assignin('base', 'C_Y_delta_aInterpolation', C_Y_delta_aInterpolation);
assignin('base', 'C_Y_delta_rInterpolation', C_Y_delta_rInterpolation);
assignin('base', 'C_l_delta_aInterpolation', C_l_delta_aInterpolation);
assignin('base', 'C_l_delta_rInterpolation', C_l_delta_rInterpolation);
assignin('base', 'C_n_delta_aInterpolation', C_n_delta_aInterpolation);
assignin('base', 'C_n_delta_rInterpolation', C_n_delta_rInterpolation);

end
