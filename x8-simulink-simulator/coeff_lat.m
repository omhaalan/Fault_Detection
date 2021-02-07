function coeff_lat()
    
%% Side force: C_Y(beta), C_Y_p, C_y_r
 C_Y_beta_data = [
    -10  , 0 , 0.045784541565174    ;
     -8  , 0 , 0.038104826795641    ;
     -6  , 0 , 0.026948406426273    ;
     -4  , 0 , 0.02091370954062     ;
     -2  , 0 , 0.008604427282928    ;
      0  , 0 , 2.99968641720902E-08 ;
      2  , 0 ,-0.008604744865183    ;
      4  , 0 ,-0.020914413771988    ;
      6  , 0 ,-0.026948364888234    ;
      8  , 0 ,-0.038104770915316    ;
     10  , 0 ,-0.04578459372158     ;

    -10  , 1 , 0.040544677200039      ;
     -8  , 1 , 0.033263502065243      ;
     -6  , 1 , 0.023086335715355      ;
     -4  , 1 , 0.017384101145586      ;
     -2  , 1 , 0.007089306347314      ;
      0  , 1 , -7.94977329537982E-06  ;
      2  , 1 , -0.007089388672593     ;
      4  , 1 , -0.016975731902767     ;
      6  , 1 , -0.023085479217275     ;
      8  , 1 , -0.033263016552278     ;
     10  , 1 , -0.040544677200039     ;
]; 
   % Convert AoA to radians: 
C_Y_beta_data(: , 1) = deg2rad(C_Y_beta_data(:, 1)); 


% C_Y_bInterpolation = scatteredInterpolant(C_Y_beta_data(:, 1), C_Y_beta_data(:, 2), C_Y_beta_data(:, 3)); 
C_Y_bInterpolation = Create_interpolation(C_Y_beta_data,'C_Y_beta_data');

assignin('base', 'C_Y_bInterpolation', C_Y_bInterpolation)


%% instationary derivatives
% create data at higher AOS even though this does not exist 

C_Y_p_data = [
    0, 0, -0.085; 
    1, 0, -0.085; 
    0, 1, -0.133; 
    1, 1, -0.133; 
    ]; 

% C_Y_pInterpolation = scatteredInterpolant(C_Y_p_data(:, 1), C_Y_p_data(:, 2), C_Y_p_data(:, 3));
C_Y_pInterpolation = Create_interpolation(C_Y_p_data,'C_Y_p_data');

assignin('base', 'C_Y_pInterpolation', C_Y_pInterpolation)

C_Y_r_data = [
    0, 0, 0.005; 
    1, 0, 0.005; 
    0, 1, 0.002;
    1, 1, 0.002; 
    ]; 

% C_Y_rInterpolation = scatteredInterpolant(C_Y_r_data(:, 1), C_Y_r_data(:, 2), C_Y_r_data(:, 3)); 
C_Y_rInterpolation = Create_interpolation(C_Y_r_data,'C_Y_r_data');

assignin('base', 'C_Y_rInterpolation', C_Y_rInterpolation)

%% Rolling moment C_l(beta), C_l_p, C_l_r
C_l_beta_data = [
 -10 , 0 ,  0.017195980468932     ;
  -8 , 0 ,  0.014177005248268     ;
  -6 , 0 ,  0.010861119258494     ;
  -4 , 0 ,  0.007269689176547     ;
  -2 , 0 ,  0.003636888045632     ;
   0 , 0 ,  -8.40821757613653E-05 ;
   2 , 0 ,  -0.00380800071177     ;
   4 , 0 ,  -0.007441088643719    ;
   6 , 0 ,  -0.011033056477602    ;
   8 , 0 ,  -0.014347544312342    ;
  10 , 0 ,  -0.017365444029133    ;
      
 -10 , 1 ,  0.014874648760329     ;
  -8 , 1 ,  0.012009291342809     ;
  -6 , 1 ,  0.009043517713712     ;
  -4 , 1 ,  0.005930364203933     ;
  -2 , 1 ,  0.002919795838541     ;
   0 , 1 , -7.34515369827804E-05  ;
   2 , 1 , -0.003067251004494     ;
   4 , 1 , -0.006079644141457     ;
   6 , 1 , -0.009191722147364     ;
   8 , 1 , -0.012157854277751     ;
  10 , 1 , -0.015023139995013     ;
  ];


   % Convert AoA to radians: 
C_l_beta_data(: , 1) = deg2rad(C_l_beta_data(:, 1)); 


% C_l_bInterpolation = scatteredInterpolant(C_l_beta_data(:, 1), C_l_beta_data(:, 2), C_l_beta_data(:, 3)); 
C_l_bInterpolation = Create_interpolation(C_l_beta_data,'C_l_beta_data');

assignin('base', 'C_l_bInterpolation', C_l_bInterpolation)

C_l_p_data = [
    0, 0, -0.409; 
    1, 0, -0.409; 
    0, 1, -0.407; 
    1, 1, -0.407; 
    ]; 

% C_l_pInterpolation = scatteredInterpolant(C_l_p_data(:, 1), C_l_p_data(:, 2), C_l_p_data(:, 3)); 
C_l_pInterpolation = Create_interpolation(C_l_p_data,'C_l_p_data');

assignin('base', 'C_l_pInterpolation', C_l_pInterpolation)

C_l_r_data = [
    0, 0, 0.039; 
    1, 0, 0.039; 
    0, 1, 0.158;
    1, 1, 0.158; 
    ]; 

% C_l_rInterpolation = scatteredInterpolant(C_l_r_data(:, 1), C_l_r_data(:, 2), C_l_r_data(:, 3)); 
C_l_rInterpolation = Create_interpolation(C_l_r_data,'C_l_r_data');

assignin('base', 'C_l_rInterpolation', C_l_rInterpolation)

%% Yawing moment C_n(beta), C_n_p, C_n_r
C_n_beta_data = [
    -10 , 0 , -0.005417707357969 ; 
    -8  , 0 , -0.004215760080022 ; 
    -6  , 0 , -0.002781450190389 ; 
    -4  , 0 , -0.001993313782483 ; 
    -2  , 0 , -0.000816013468284 ; 
    0   , 0 , 4.9176697574439E-06 ; 
    2   , 0 , 0.000825947539055 ; 
    4   , 0 , 0.002004248071855 ; 
    6   , 0 , 0.002790946889584 ; 
    8   , 0 , 0.004226335868103 ; 
    10  , 0 , 0.005428211445792 ; 

    -10 , 1 ,-0.006258966487158; 
    -8  , 1 ,-0.004912041287177; 
    -6  , 1 ,-0.003348936223781; 
    -4  , 1 ,-0.002343318592773; 
    -2  , 1 ,-0.001015085650099; 
    0   , 1 , 1.96093394589053E-05; 
    2   , 1 , 0.001052911121301; 
    4   , 1 , 0.002346577369507; 
    6   , 1 , 0.003385869026767; 
    8   , 1 , 0.00495007827414; 
    10  , 1 , 0.006296394021926;
]; 
   
   % Convert AoA to radians: 
C_n_beta_data(: , 1) = deg2rad(C_n_beta_data(:, 1)); 


% C_n_bInterpolation = scatteredInterpolant(C_n_beta_data(:, 1), C_n_beta_data(:, 2), C_n_beta_data(:, 3)); 
C_n_bInterpolation = Create_interpolation(C_n_beta_data,'C_n_beta_data');

assignin('base', 'C_n_bInterpolation', C_n_bInterpolation)

C_n_p_data = [
    0, 0, 0.027; 
    1, 0, 0.027; 
    0, 1, 0.017; 
    1, 1, 0.017; 
    ]; 

% C_n_pInterpolation = scatteredInterpolant(C_n_p_data(:, 1), C_n_p_data(:, 2), C_n_p_data(:, 3)); 
C_n_pInterpolation = Create_interpolation(C_n_p_data,'C_n_p_data');

assignin('base', 'C_n_pInterpolation', C_n_pInterpolation)

C_n_r_data = [
    0, 0, -0.022; 
    1, 0, -0.022; 
    0, 1, -0.049;
    1, 1, -0.049; 
    ]; 

% C_n_rInterpolation = scatteredInterpolant(C_n_r_data(:, 1), C_n_r_data(:, 2), C_n_r_data(:, 3)); 
C_n_rInterpolation = Create_interpolation(C_n_r_data,'C_n_r_data');

assignin('base', 'C_n_rInterpolation', C_n_rInterpolation)

end
