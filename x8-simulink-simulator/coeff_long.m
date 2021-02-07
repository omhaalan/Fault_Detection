function  coeff_long()
%C_L Interpolation of lift coefficient from CFD simulations for different
%icing scenarios
%Input: alpha: Angle of Attack in radians
%       icing: Icing szenario: 0 clean, 1 mixed

%% Lift-Coefficients (C_L(alpha), C_L_q)
C_L_a_data = [    % Data points in alpha (degree), icing, CL(alpha, icing) format: 
  % Clean data:
        -4   ,  0  ,  -0.263476797518842;
        -3   ,  0  ,  -0.191713067734707;
        -2   ,  0  ,  -0.11860364980898;
        -1   ,  0  ,  -0.044559545765891;
         0   ,  0  ,  0.030075562375465;
         1   ,  0  ,  0.104978209768259;
         2   ,  0  ,  0.179750717950914;
         3   ,  0  ,  0.254224228480269;
         4   ,  0  ,  0.328056998802334;
         5   ,  0  ,  0.400879537507346;
         6   ,  0  ,  0.472273969006983;
         7   ,  0  ,  0.541957580329793;
         8   ,  0  ,  0.609296679062686;
         9   ,  0  ,  0.673322752518763;
         10  ,  0  ,  0.734338319479099;
         11  ,  0  ,  0.790322466812223;
         12  ,  0  ,  0.827522719004554;
         13  ,  0  ,  0.873491515891175;
         14  ,  0  ,  0.915080571202476;
         15  ,  0  ,  0.950823242530782;
         16  ,  0  ,  0.976723875557543;
         17  ,  0  ,  0.986666922550212;
         18  ,  0  ,  0.981701796219762;
% iced data:                   
        -6   ,  1  ,  -0.351325426514597;
        -4   ,  1  ,  -0.238306192834553;
        -2   ,  1  ,  -0.116730376696916;
         0   ,  1  ,  0.018798581619545;
         2   ,  1  ,  0.155679027078628;
         4   ,  1  ,  0.266446701615973;
         6   ,  1  ,  0.363786923383528;
         8   ,  1  ,  0.454153721254944;
        10   ,  1  ,  0.512247768136493;
        11   ,  1  ,  0.524220154500291;
        12   ,  1  ,  0.540964983499832;
        13   ,  1  ,  0.566391371778576;
        14   ,  1  ,  0.587880672537859;
        15   ,  1  ,  0.609246005940466;
        16   ,  1  ,  0.626765568064619;
     ];
    
% Convert AoA to radians: 
C_L_a_data(: , 1) = deg2rad(C_L_a_data(:, 1)); 




% C_L_aInterpolation = scatteredInterpolant(C_L_a_data(:, 1), C_L_a_data(:, 2), C_L_a_data(:, 3));
C_L_aInterpolation = Create_interpolation(C_L_a_data,'C_L_a_data');
assignin('base', 'C_L_aInterpolation', C_L_aInterpolation)


C_L_q_data = [
    2, 0, 4.64; 
    8, 0, 4.60; 
    2, 1, -3.31; 
    8, 1, -3.51; 
    ]; 

C_L_q_data(: , 1) = deg2rad(C_L_q_data(:, 1));


% C_L_qInterpolation = scatteredInterpolant(C_L_q_data(:, 1), C_L_q_data(:, 2), C_L_q_data(:, 3));
C_L_qInterpolation = Create_interpolation(C_L_q_data,'C_L_q_data');

assignin('base', 'C_L_qInterpolation', C_L_qInterpolation)

%% Drag coefficients (C_D(alpha), C_D_q
C_D_a_data = [
    -4  , 0 ,  0.019918588730455;
    -3  , 0 ,  0.017605276756794;
    -2  , 0 ,  0.016059412794367;
    -1  , 0 ,  0.015220764565416;
     0  , 0 ,  0.015039166436721;
     1  , 0 ,  0.015533523078349;
     2  , 0 ,  0.01667114178454;
     3  , 0 ,  0.018454162741914;
     4  , 0 ,  0.020908932130462;
     5  , 0 ,  0.024053475956289;
     6  , 0 ,  0.027939336576642;
     7  , 0 ,  0.032666326884643;
     8  , 0 ,  0.038285125787291;
     9  , 0 ,  0.044726655375341;
     10 , 0 ,  0.052145770037124;
     11 , 0 ,  0.061853685760454;
     12 , 0 ,  0.07056689324335;
     13 , 0 ,  0.079936588523374;
     14 , 0 ,  0.089936361646217;
     15 , 0 ,  0.100812669342992;
     16 , 0 ,  0.113142846277678;
     17 , 0 ,  0.128984948165298;
     18 , 0 ,  0.157450112252689;

    -6   ,  1  , 0.085729188779117;
    -4   ,  1  , 0.065597551094372;
    -2   ,  1  , 0.051553853331878;
     0   ,  1  , 0.043224285541117;
     2   ,  1  , 0.045151667997277;
     4   ,  1  , 0.060402309973289;
     6   ,  1  , 0.082879203470842;
     8   ,  1  , 0.108183522613869;
    10   ,  1  , 0.141971439023632;
    11   ,  1  , 0.157549154281511;
    12   ,  1  , 0.1711763114348;
    13   ,  1  , 0.185658970471098;
    14   ,  1  , 0.199787278243032;    
    15   ,  1  , 0.214196112306338;
    16   ,  1  , 0.228593372463176;
    ];
        
% Convert AoA to radians: 
C_D_a_data(: , 1) = deg2rad(C_D_a_data(:, 1)); 


% C_D_aInterpolation = scatteredInterpolant(C_D_a_data(:, 1), C_D_a_data(:, 2), C_D_a_data(:, 3));
C_D_aInterpolation = Create_interpolation(C_D_a_data,'C_D_a_data');

assignin('base', 'C_D_aInterpolation', C_D_aInterpolation)


C_D_q_data = [
    2, 0, 0; 
    8, 0, 0; 
    2, 1, 0; 
    8, 1, 0; 
    ]; 

C_D_q_data(: , 1) = deg2rad(C_D_q_data(:, 1)); 

% C_D_qInterpolation = scatteredInterpolant(C_D_q_data(:, 1), C_D_q_data(:, 2), C_D_q_data(:, 3));
C_D_qInterpolation = Create_interpolation(C_D_q_data,'C_D_q_data');
assignin('base', 'C_D_qInterpolation', C_D_qInterpolation)

%% Pitching Moment coefficients (C_m(alpha), C_m_q

C_m_a_data = [ 
    % Clean data: 
        -4   ,  0 , 0.041333807853924   ;
        -3   ,  0 , 0.031834140267716   ;
        -2   ,  0 , 0.02190349676966    ;
        -1   ,  0 , 0.011661086208999   ;
         0   ,  0 , 0.001161535578433   ;
         1   ,  0 , -0.009555851908515  ;
         2   ,  0 , -0.020421151292061  ;
         3   ,  0 , -0.031417404027141  ;
         4   ,  0 , -0.042491437202291  ;
         5   ,  0 , -0.053552779431744  ;
         6   ,  0 , -0.064477317568596  ;
         7   ,  0 , -0.075200951582036  ;
         8   ,  0 , -0.08546986255812   ;
         9   ,  0 , -0.094854709350882  ;
         10  ,  0 , -0.103719442470831  ;
         11  ,  0 , -0.111569760338093  ;
         12  ,  0 , -0.107654926241639  ;
         13  ,  0 , -0.112337670103167  ;
         14  ,  0 , -0.11664699902011   ;
         15  ,  0 , -0.119793493149941  ;
         16  ,  0 , -0.118448252906027  ;
         17  ,  0 , -0.108375513836316  ;
         18  ,  0 , -0.094543673630911  ;
     %   Iced data:      
        -6   ,  1  , 0.03111531649939   ;
        -4   ,  1  , 0.020016718815789  ;
        -2   ,  1  , 0.0083373060208    ;
        0    ,  1  , -0.004297270367523 ;
        2    ,  1  , -0.013938099988023 ;
        4    ,  1  , -0.015247848604139 ;
        6    ,  1  , -0.01808304889307  ;
        8    ,  1  , -0.028439677965006 ;
        10   ,  1  , -0.050565459875066 ;
        11   ,  1  , -0.064748344544505 ;
        12   ,  1  , -0.072520795931387 ;
        13   ,  1  , -0.077841528690172 ;
        14   ,  1  , -0.082634404148259 ;
        15   ,  1  , -0.087244874149545 ;
        16   ,  1  , -0.092264035622438 ;

        ];

% Convert AoA to radians: 
C_m_a_data(: , 1) = deg2rad(C_m_a_data(:, 1)); 


% C_m_aInterpolation = scatteredInterpolant(C_m_a_data(:, 1), C_m_a_data(:, 2), C_m_a_data(:, 3)); 
C_m_aInterpolation = Create_interpolation(C_m_a_data,'C_m_a_data');

assignin('base', 'C_m_aInterpolation', C_m_aInterpolation)

C_m_q_data = [
    2, 0, -1.99; 
    ... %8, 0, -0.23; 
    8, 0, -2; % Override? 
    2, 1, -2.01; 
    8, 1, -2.17; 
    ]; 

C_m_q_data(: , 1) = deg2rad(C_m_q_data(:, 1)); 

% C_m_qInterpolation = scatteredInterpolant(C_m_q_data(:, 1), C_m_q_data(:, 2), C_m_q_data(:, 3));
C_m_qInterpolation = Create_interpolation(C_m_q_data,'C_m_q_data');
assignin('base', 'C_m_qInterpolation', C_m_qInterpolation)

end

