function lateral_coefficients(FILENAME, batchmode)
    %%%
    % This script uses data aquired from dynamic ALE CFD simulations to
    % calculate pitch-rate dependent derivatives.
    %
    % Requires:
    %
    % * Database Toolbox
    % * Curve Fitting Toolbox
    % 
    % Parameters: 
    % * FILENAME: either empty or the SQLite Database that should be analyzed. 
    %             If empty, a filename can be specified below ("hard coded") 
    % * batchmode: if set to true, only CSV output and no figures. 
    %
    % IMPORTANT REMARKS:
    % * This scipt assumes constant and equal time steps!
    % * All angles within this script are in radian! Values from the DB are
    %   converted to radian during Database parsing.

    clearvars -except FILENAME batchmode; 
    %close all;

    % set FILENAME to the file you want to parse or a string that can be modified, e.g. with sed for
    % batch processing. Useful command to parse all *.db files in the current folder and subfolders:

    if FILENAME == ""
        %FILENAME = "data/X8_lateral/run_Roll_mirr.db";
        %FILENAME = "data/X8_lateral/run_Trans_mirr.db"; 
        %FILENAME = "data/X8_lateral/run_Yaw_2deg_2Hz_mirr.db"; 
        FILENAME = "data/X8_lateral/run_Yaw_Trans_mirr.db"; 
        
    end

    % If you want to recalculate the moment for a different CG. The reference CG is stored in the database.
    % set to true if you want to calculate a updated reference. 
    TARGET_CG.enabled = false;
    TARGET_CG.X = 0.44;  % in meter!
    TARGET_CG.Y = 0.03;



   %% Prepare: get data from Database, filter relevant data, etc.
    % Load the data:
    try
        conn = sqlite(FILENAME);
    catch
        error(sprintf("File %s not found!\n", FILENAME))
    end

    try
        sqlquery = "SELECT "       + ...
            "time_step, "          + ... # raw_data(1)
            "lift_coefficient, "   + ... # raw_data(2)
            "drag_coefficient, "   + ... # raw_data(3)
            "side_coefficent, "    + ... # raw_data(4)
            "moment_roll, "        + ... # raw_data(5)
            "moment_pitch, "       + ... # raw_data(6)
            "moment_yaw "          + ... # raw_data(7)
            "FROM data";

        raw_data = fetch(conn, sqlquery);

        % Get simulation Metadata:
        sqlquery = "SELECT "                + ...
            "reference_area, "   + ... # raw_meta(1)
            "air_velocity, "     + ... # raw_meta(2)
            "neutral_alpha, "    + ... # raw_meta(3)
            "amplitude_pitch, "  + ... # raw_meta(4)
            "frequency, "        + ... # raw_meta(5)
            "time_step, "        + ... # raw_meta(6)
            "phase_lag, "        + ... # raw_meta(7)
            "center_of_grav_x, " + ... # raw_meta(8)
            "center_of_grav_y, " + ... # raw_meta(9)
            "center_of_grav_z, " + ... # raw_meta(10)
            "amplitude_vx, "     + ... # raw_meta(11)
            "amplitude_vy, "     + ... # raw_meta(12)
            "amplitude_vz, "     + ... # raw_meta(13)
            "DBVERSION,  "       + ... # raw_meta(14)
            "neutral_beta, "     + ... # raw_meta(15)
            "amplitude_roll, "   + ... # raw_meta(16)
            "amplitude_yaw "      + ... # raw_meta(17)
            "FROM meta";

        raw_meta = fetch(conn, sqlquery);
    catch ME
        warning("During the database query something went wrong. You probably are trying to use an old database "...
               + "which does not have all required columns. Please generate the database again with the new Python script!")
        rethrow(ME)
    end

    %  Check for minimal DB Version!
    MIN_DB_VERSION = 3;
    if cell2mat(raw_meta(14)) < MIN_DB_VERSION
        error("This script was updated and requires a DB that was created with a newer python script. Please regenerate the database")
    end
    

    data.time = cell2mat(raw_data(:, 1)) * cell2mat(raw_meta(6)); % in s
    data.Clift_body = cell2mat(raw_data(:, 2));  % In body coodrdinates
    data.Cdrag_body = cell2mat(raw_data(:, 3));  % In body coodrdinates
    data.Cside_body = -cell2mat(raw_data(:, 4));  % In body coodrdinates, change sign because of ANSYS Axis conventions. 
    data.momt_roll = cell2mat(raw_data(:, 5));
    %data.momt_pitch = cell2mat(raw_data(:, 6));
    data.momt_yaw = cell2mat(raw_data(:, 7));

    %% Declare results struct
    allresults.CYbeta    = NaN;
    allresults.CYbetadot = NaN;
    allresults.CYp       = NaN;
    allresults.CYr       = NaN;
    allresults.CYdyn     = NaN;
    allresults.CY0       = NaN;
    allresults.Clbeta    = NaN;
    allresults.Clbetadot = NaN;
    allresults.Clp       = NaN;
    allresults.Clr       = NaN;
    allresults.Cldyn     = NaN;
    allresults.Cl0       = NaN;
    allresults.Cnbeta    = NaN;
    allresults.Cnbetadot = NaN;
    allresults.Cnp       = NaN;
    allresults.Cnr       = NaN;
    allresults.Cndyn     = NaN;
    allresults.Cn0       = NaN;



%% Define, get and/or calculate parameters:
% % Define Aircraft Parameters:
x8.Velocity             = cell2mat(raw_meta(2)); % m/s

x8.WingSpan             = 2.1; % m
x8.MAC                  = 0.37; % m
x8.ReferenceArea        = x8.WingSpan * x8.MAC; % actual reference area

% define Simulation parameters:
% WARNING:
% CFD defines x-direction "backwards"/in direction of flow/against flight direction,
%             y "up" and
%             z out of plane
% => a positive z rotation is thus a DOWN pitch motion.
% The toolbox used by R. Hann uses sin(t) rotation around the Z-
% axis, thus STARTS WITH A DOWN PICHTING MOTION.
% Since this is against the usual convention for aircraft, this means
% that we have to add a phase angle of pi!
% The value used by ANSYS is given in full oscillations (e.g. pi/2 phase lag -> cos instead of sin)
% means a phase lag of 0.25. We thus need to multiply this with a full circle and add pi for the
% reason described before.
simu.ReferenceArea      = cell2mat(raw_meta(1)); % m². Reference area used for CFD
simu.Freq               = cell2mat(raw_meta(5)); % Hz
simu.Omega              = 2 * pi * simu.Freq;
simu.PhaseAngle         = cell2mat(raw_meta(7)) * 2 * pi + pi;  % read note above!
simu.RollAmplitude      = cell2mat(raw_meta(16)); 
%simu.ThetaAmplitude     = cell2mat(raw_meta(4)); % = +/- X rad
simu.YawAmplitude       = cell2mat(raw_meta(17)); 
simu.ReducedFrequency   = simu.Omega * x8.MAC / (2 * x8.Velocity);
simu.TimeStep           = cell2mat(raw_meta(6)); % assume constant time steps.
%simu.AoA_Ref            = cell2mat(raw_meta(3)); % mean AOA: alpha = AOA_ref + AlphaAmplitude * sin(..)
simu.AoS_Ref            = cell2mat(raw_meta(15)); 
simu.cg.x               = cell2mat(raw_meta(8)) / 1000; % in m. Outfile contains mm. -> Div by 1000 
simu.cg.y               = cell2mat(raw_meta(9)) / 1000; % in m 
simu.cg.z               = cell2mat(raw_meta(10))/ 1000; % in m 
%simu.vxAmplitude        = cell2mat(raw_meta(11));        
%simu.vyAmplitude        = cell2mat(raw_meta(12));       % m/s in up-down direction
simu.vzAmplitude        = cell2mat(raw_meta(13));       % m/s in left-right direction. If positive, motion starts to the left

% For lateral model, currently only symmetric oscillations (AoS_Ref == 0) is supported. If
% unsymmetric oscillations are desired, then the constant part has to be added to the functions. 
if(simu.AoS_Ref ~= 0)
    error ("Only symmetric sideslip oscillations are supported.")
end

% Fix Phase Lag issue: In ANSYS notation, the specified "neutral" AoA is not actually the mean
% value, but the start value indeed. If PhaseAngle = 0, then there is no difference. However, if
% phase angle != 0 then we have to add the sine of the PhaseAngle multiplied by the Amplitude to the
% mean AOA.
% Example: A0A = 0, Amplitude = 2, Phase Lag = 0.25 is not, as one could assume, 0° + 2° * cos(wt),
% instead it is 2° + 2° * cos(wt). 
if(simu.vzAmplitude ~= 0 && simu.PhaseAngle ~= pi)
    error("A Phase Lag with a plunging motion is currently not supported!")
end
%simu.AoA_Ref = simu.AoA_Ref + sin(simu.PhaseAngle - pi) * simu.ThetaAmplitude;

% Detect case 
% * case 11: pure rolling, (p != 0, r = vz = 0, beta = const) 
% * case 12: pure yawing (r != 0, p = vz = 0, beta != const)
% * case 13: pure plunging (vz != 0, p = r = 0, beta != const)
% * case 14: undulating flight (r, vz != 0, p = 0, beta = const)

simu.YawAmplitude = - simu.YawAmplitude;  % 
simu.equiv_yaw_amp_plung = atan2(simu.vzAmplitude, x8.Velocity); 

if (simu.RollAmplitude ~= 0 && simu.YawAmplitude == 0 && simu.vzAmplitude == 0)
    simu.case = 11; 
    if ~batchmode
        disp("Detected case 11: pure rolling with p != 0")
    end
elseif(simu.RollAmplitude == 0 && simu.YawAmplitude ~= 0 && simu.vzAmplitude == 0)
    simu.case = 12; 
    if ~batchmode
        disp("Detected case 12: pure yawing with r != 0")   
    end
elseif(simu.RollAmplitude == 0 && simu.YawAmplitude == 0 && simu.vzAmplitude ~= 0)
    simu.case = 13; 
    if ~batchmode
        disp("Detected case 13: Side-Plunging with sideway velocity != 0")
    end
elseif(simu.RollAmplitude == 0 && simu.YawAmplitude + simu.equiv_yaw_amp_plung < 0.1)
    simu.case = 14; 
    if ~batchmode
        disp("Detected case 14: Undulating flight with beta = const")
    end
else
    error("Unable to detect case.") 
end    


data.beta = (simu.YawAmplitude + simu.equiv_yaw_amp_plung) * sin(simu.Omega * data.time + simu.PhaseAngle); 
data.p = simu.RollAmplitude * simu.Omega * cos(simu.Omega * data.time + simu.PhaseAngle); 
data.r = - simu.YawAmplitude  * simu.Omega * cos(simu.Omega * data.time + simu.PhaseAngle); 
data.betadot = (simu.YawAmplitude + simu.equiv_yaw_amp_plung) * simu.Omega * cos(simu.Omega * data.time + simu.PhaseAngle); 


% We have Fx and Fy from the CFD simulations. Using the time-dependent AoS, transform this into Drag
% and sideforce: 
R = @(beta) [cos(beta), sin(beta); -sin(beta), cos(beta)];  % rotation from body fixed to stability axis

for i = 1:size(data.beta, 1)
    res = R(data.beta(i)) * [data.Cdrag_body(i); data.Cside_body(i)]; 
    data.drag(i, 1) = res(1); 
    data.side(i, 1) = res(2); 
end

% Calculate and output the sample rate in samples / oscillation
simu.SampleRate = sum(data.time < 1/simu.Freq);  % Comparison returns 1 if true, 0 else, summing this is like counting.
if (~batchmode)
    fprintf("Sample rate (in samples per oscillation): %f 1/T\n", simu.SampleRate); 
end

% For debugging purposes, export x8, simu and data: 
assignin('base', 'x8', x8);
assignin('base', 'data', data); 
assignin('base', 'simu', simu); 

% Now change the Data (which has a reference area of 1m² to half the Wing's
% area):
% C_L = L / (k * S) with S being the wing aera -> change of reference area
% by multiplying with S_oldRef / S_newRef:
data.side = data.side * (simu.ReferenceArea/x8.ReferenceArea);
data.drag = data.drag * (simu.ReferenceArea/x8.ReferenceArea);

data.momt_roll = data.momt_roll * (simu.ReferenceArea/x8.ReferenceArea);
data.momt_yaw = data.momt_yaw * (simu.ReferenceArea/x8.ReferenceArea);

%% Fit model functions
    switch (simu.case) 
        case 11
            
          [ allresults.CY0, ...
            allresults.CYp, ... 
            allresults.Cl0, ... 
            allresults.Clp, ... 
            allresults.Cn0, ... 
            allresults.Cnp]     = getRollDerivatives(simu, data, x8, batchmode);
        case 12
          [ allresults.CY0      , ...
            allresults.CYbeta   , ...
            allresults.CYdyn    , ...
            allresults.Cl0      , ...
            allresults.Clbeta   , ...
            allresults.Cldyn    , ...
            allresults.Cn0      , ...
            allresults.Cnbeta   , ...
            allresults.Cndyn ] = getYawingDerivatives(simu, data, x8, batchmode);
        case 13
          [ allresults.CY0      , ...
            allresults.CYbeta   , ...
            allresults.CYbetadot, ...
            allresults.Cl0      , ...
            allresults.Clbeta   , ...
            allresults.Clbetadot, ...
            allresults.Cn0      , ...
            allresults.Cnbeta   , ...
            allresults.Cnbetadot ] =  getPlungingDerivatives(simu, data, x8, batchmode);
        case 14
          [ allresults.CY0, ...
            allresults.CYr, ...
            allresults.Cl0, ...
            allresults.Clr, ...
            allresults.Cn0, ...
            allresults.Cnr ] =  getYawingAndPlungingDerivatives(simu, data, x8, batchmode);
        otherwise
            ex = MException("FitLateralModel:NoSuchCase", "Case for fitting not found or implemented"); 
            throw(ex); 
    end
    
    disp(allresults)
end   % End main script


%% Function section.
function [fitresult, gof, opts] = fitGenericFunction(x, y, fun, startGuess, simu)
    ft = fittype( fun, 'independent', 't', 'dependent', 'y' );
    opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
    opts.Display = 'Off';

    opts.StartPoint = startGuess;
    [xData, yData] = prepareCurveData( x, y );
    
        
    RemovePart = 0.25; 
    excludeArray = zeros(size(xData, 1),1);
    excludeArray(1:floor(RemovePart*size(xData,1))) = 1;
    opts.Exclude = excludeArray;  %remove the first quarter of all points. 
    % Function is the same as for lift.
    
    [fitresult, gof] = fit( xData, yData, ft, opts );
    
end

function [CY0, CYp, Cl0, Clp, Cn0, Cnp] = getRollDerivatives(simu, data, x8, batchmode)
    % In the lateral case, we have three resulting forces/moments
    % * Side force
    % * rolling moment
    % * yawing moment
    %
    % and for the rolling case only a rolling derivative
    % case 11: p != 0   --   r = beta = betadot = 0 
     
    s_p_t = sprintf("%f * %f * cos(%f * t + %f)", ...
        simu.RollAmplitude, ...
        simu.Omega, ...
        simu.Omega, ...
        simu.PhaseAngle);         
    
    funY = sprintf("CY0 + CYp * %f * %s", ...
        (x8.WingSpan/(2*x8.Velocity)), ... 
        s_p_t); 
    funl = sprintf("Cl0 + Clp * %f * %s", ...
        (x8.WingSpan/(2*x8.Velocity)), ... 
        s_p_t); 
    funn = sprintf("Cn0 + Cnp * %f * %s", ...
        (x8.WingSpan/(2*x8.Velocity)), ... 
        s_p_t); 
    
    [fitresult_Y, gof_Y, opts_Y ] = fitGenericFunction(data.time, data.side, funY, [0.5 0], simu);
    [fitresult_l, gof_l, opts_l ] = fitGenericFunction(data.time, data.momt_roll, funl, [0.5 0], simu);
    [fitresult_n, gof_n, opts_n ] = fitGenericFunction(data.time, data.momt_yaw, funn, [0.5 0], simu);
    
    figure; hold on; 
    plot(fitresult_Y, data.time, data.side, opts_Y.Exclude); 
    yyaxis right; 
    plot(data.time, data.beta, 'DisplayName', 'beta');
    plot(data.time, data.p, 'DisplayName', 'p'); 
    title("Fit for C_Y (side force caused by rolling)")
    hold off; 
    
    figure; hold on; 
    plot(fitresult_l, data.time, data.momt_roll, opts_l.Exclude); 
    yyaxis right; 
    plot(data.time, data.beta, 'DisplayName', 'beta'); 
    plot(data.time, data.p, 'DisplayName', 'p'); 
    title("Fit for C_l (Roll Moment caused by rolling)")
    hold off; 
    
    figure; hold on; 
    plot(fitresult_n, data.time, data.momt_yaw, opts_n.Exclude); 
    yyaxis right; 
    plot(data.time, data.beta, 'DisplayName', 'beta'); 
    plot(data.time, data.p, 'DisplayName', 'p'); 
    title("Fit for C_n (Yaw moment caused by rolling)")
    hold off; 
    
    CY0 = fitresult_Y.CY0; 
    CYp = fitresult_Y.CYp;
    Cl0 = fitresult_l.Cl0;  
    Clp = fitresult_l.Clp;  
    Cn0 = fitresult_n.Cn0;  
    Cnp = fitresult_n.Cnp;  
end

function [CY0, CYbeta, CYbetadot, Cl0, Clbeta, Clbetadot, Cn0, Cnbeta, Cnbetadot] = getPlungingDerivatives(simu, data, x8, batchmode)
    % In the lateral case, we have three resulting forces/moments
    % * Side force
    % * rolling moment
    % * yawing moment
    %
    % and for the yaw plunging derivative a beta and beta-dot unequal 0
    s_beta_t = sprintf("%f * sin(%f * t + %f)", ...
        simu.equiv_yaw_amp_plung, ...
        simu.Omega, ...
        simu.PhaseAngle);    
    s_betadot_t = sprintf("%f * %f * cos(%f * t + %f)", ...
        simu.equiv_yaw_amp_plung, ...
        simu.Omega, ...
        simu.Omega, ...
        simu.PhaseAngle);  
    
    funY = sprintf("CY0 + CYbeta * %s + CYbetadot * %f * %s", ...
        s_beta_t, ...
        (x8.WingSpan/(2*x8.Velocity)), ... 
        s_betadot_t); 
    funl = sprintf("Cl0 + Clbeta * %s + Clbetadot * %f * %s", ...
        s_beta_t, ...
        (x8.WingSpan/(2*x8.Velocity)), ... 
        s_betadot_t);
    funn = sprintf("Cn0 + Cnbeta * %s + Cnbetadot * %f * %s", ...
        s_beta_t, ...
        (x8.WingSpan/(2*x8.Velocity)), ... 
        s_betadot_t);
    
    [fitresult_Y, gof_Y, opts_Y ] = fitGenericFunction(data.time, data.side, funY, [0.5 0.5 0], simu);
    [fitresult_l, gof_l, opts_l ] = fitGenericFunction(data.time, data.momt_roll, funl, [0.5 0.5 0], simu);
    [fitresult_n, gof_n, opts_n ] = fitGenericFunction(data.time, data.momt_yaw, funn, [0.5 0.5 0], simu);
    
    figure; hold on; 
    plot(fitresult_Y, data.time, data.side, opts_Y.Exclude); 
    yyaxis right; 
    plot(data.time, data.beta, 'DisplayName', 'beta'); 
    plot(data.time, data.betadot, 'DisplayName', 'beta-dot'); 
    title("Fit for C_Y (side force caused by plunging)")
    hold off; 
    
    figure; hold on; 
    plot(fitresult_l, data.time, data.momt_roll, opts_l.Exclude); 
    yyaxis right; 
    plot(data.time, data.beta, 'DisplayName', 'beta'); 
    plot(data.time, data.betadot, 'DisplayName', 'beta-dot'); 
    title("Fit for C_l (Roll moment caused by plunging)")
    hold off; 
    
    figure; hold on; 
    plot(fitresult_n, data.time, data.momt_yaw, opts_n.Exclude); 
    yyaxis right; 
    plot(data.time, data.beta, 'DisplayName', 'beta'); 
    plot(data.time, data.betadot, 'DisplayName', 'beta-dot'); 
    title("Fit for C_n (Yaw moment caused by plunging)")
    hold off; 
    
    CY0        = fitresult_Y.CY0       ;
    CYbeta     = fitresult_Y.CYbeta    ;
    CYbetadot  = fitresult_Y.CYbetadot ;
    Cl0        = fitresult_l.Cl0       ;
    Clbeta     = fitresult_l.Clbeta    ;
    Clbetadot  = fitresult_l.Clbetadot ;
    Cn0        = fitresult_n.Cn0       ;
    Cnbeta     = fitresult_n.Cnbeta    ;
    Cnbetadot  = fitresult_n.Cnbetadot ;
    
end

function [ CY0, CYbeta, CYdyn, Cl0, Clbeta, Cldyn, Cn0, Cnbeta, Cndyn ] = getYawingDerivatives(simu, data, x8, batchmode)
    % In the lateral case, we have three resulting forces/moments
    % * Side force
    % * rolling moment
    % * yawing moment
    %
    % and for the yaw derivative a beta, betadot and r unequal 0: 
    s_beta_t = sprintf("%f * sin(%f * t + %f)", ...
        simu.YawAmplitude, ...
        simu.Omega, ...
        simu.PhaseAngle);    
    s_betadot_t = sprintf("%f * %f * cos(%f * t + %f)", ...
        simu.YawAmplitude, ...
        simu.Omega, ...
        simu.Omega, ...
        simu.PhaseAngle);  
    
    funY = sprintf("CYbeta * %s + CYdyn * %f * %s + CY0", ...
        s_beta_t, ...
        (x8.WingSpan/(2*x8.Velocity)), ... 
        s_betadot_t); 
    funl = sprintf("Clbeta * %s + Cldyn * %f * %s + Cl0", ...
        s_beta_t, ...
        (x8.WingSpan/(2*x8.Velocity)), ... 
        s_betadot_t);
    funn = sprintf("Cnbeta * %s + Cndyn * %f * %s + Cn0", ...
        s_beta_t, ...
        (x8.WingSpan/(2*x8.Velocity)), ... 
        s_betadot_t);
    
    [fitresult_Y, gof_Y, opts_Y ] = fitGenericFunction(data.time, data.side, funY, [0.5 0.5 0], simu);
    [fitresult_l, gof_l, opts_l ] = fitGenericFunction(data.time, data.momt_roll, funl, [0.5 0.5 0], simu);
    [fitresult_n, gof_n, opts_n ] = fitGenericFunction(data.time, data.momt_yaw, funn, [0.5 0.5 0], simu);
    
    figure; hold on; 
    plot(fitresult_Y, data.time, data.side, opts_Y.Exclude); 
    yyaxis right; 
    plot(data.time, data.beta, 'DisplayName', 'beta'); 
    plot(data.time, data.betadot, 'DisplayName', 'beta-dot'); 
    plot(data.time, data.r, 'DisplayName', 'r'); 
    plot(data.time, data.betadot + data.r, 'DisplayName', 'betadot + r'); 
    title("Fit for C_Y (side force caused by yawing)")
    hold off; 
    
    figure; hold on; 
    plot(fitresult_l, data.time, data.momt_roll, opts_l.Exclude); 
    yyaxis right; 
    plot(data.time, data.beta, 'DisplayName', 'beta');
    plot(data.time, data.betadot, 'DisplayName', 'beta-dot'); 
    plot(data.time, data.r, 'DisplayName', 'r'); 
    plot(data.time, data.betadot + data.r, 'DisplayName', 'betadot + r'); 
    title("Fit for C_l (Roll moment caused by yawing)")
    hold off; 
    
    figure; hold on; 
    plot(fitresult_n, data.time, data.momt_yaw, opts_n.Exclude); 
    yyaxis right; 
    plot(data.time, data.beta, 'DisplayName', 'beta');
    plot(data.time, data.betadot, 'DisplayName', 'beta-dot'); 
    plot(data.time, data.r, 'DisplayName', 'r'); 
    plot(data.time, data.betadot + data.r, 'DisplayName', 'betadot + r'); 
    title("Fit for C_n (Yaw moment caused by yawing)")
    hold off; 
    
    CY0         = fitresult_Y.CY0;
    CYbeta      = fitresult_Y.CYbeta; 
    CYdyn       = fitresult_Y.CYdyn;
    Cl0         = fitresult_l.Cl0;
    Clbeta      = fitresult_l.Clbeta; 
    Cldyn       = fitresult_l.Cldyn;
    Cn0         = fitresult_n.Cn0;
    Cnbeta      = fitresult_n.Cnbeta; 
    Cndyn       = fitresult_n.Cndyn;
end

function [ CY0, CYr, Cl0, Clr, Cn0, Cnr ] = getYawingAndPlungingDerivatives(simu, data, x8, batchmode)
    % In the lateral case, we have three resulting forces/moments
    % * Side force
    % * rolling moment
    % * yawing moment
    %
    % and for the coordinated yawing and plunging ideally beta = betadot = 0 and  
    if(simu.YawAmplitude + simu.equiv_yaw_amp_plung > deg2rad(0.1))
        warning("Caution: Yaw-Plunge case but the oscillations do not have the same amplitude!")
    end
    s_beta_t = sprintf("%f * sin(%f * t + %f)", ...
        (simu.YawAmplitude + simu.equiv_yaw_amp_plung), ...
        simu.Omega, ...
        simu.PhaseAngle);    
    s_r_t = sprintf("- %f * %f * cos(%f * t + %f)", ...
        simu.YawAmplitude, ...
        simu.Omega, ...
        simu.Omega, ...
        simu.PhaseAngle);  
    
    funY = sprintf("CY0 + CYbeta * %s + CYr * %f * %s", ...
        s_beta_t, ...
        (x8.WingSpan/(2*x8.Velocity)), ... 
        s_r_t); 
    funl = sprintf("Cl0 + Clbeta * %s + Clr * %f * %s", ...
        s_beta_t, ...
        (x8.WingSpan/(2*x8.Velocity)), ... 
        s_r_t);
    funn = sprintf("Cn0 + Cnbeta * %s + Cnr * %f * %s", ...
        s_beta_t, ...
        (x8.WingSpan/(2*x8.Velocity)), ... 
        s_r_t);
    
    [fitresult_Y, gof_Y, opts_Y ] = fitGenericFunction(data.time, data.side, funY, [0.5 0.5 0], simu);
    [fitresult_l, gof_l, opts_l ] = fitGenericFunction(data.time, data.momt_roll, funl, [0.5 0.5 0], simu);
    [fitresult_n, gof_n, opts_n ] = fitGenericFunction(data.time, data.momt_yaw, funn, [0.5 0.5 0], simu);
    
    figure; hold on; 
    plot(fitresult_Y, data.time, data.side, opts_Y.Exclude); 
    yyaxis right; 
    plot(data.time, data.beta, 'DisplayName', 'beta'); 
    plot(data.time, data.r, 'DisplayName', 'r'); 
    title("Fit for C_Y (side force caused by yaw rate (undulating flight))")
    hold off; 
    
    figure; hold on; 
    plot(fitresult_l, data.time, data.momt_roll, opts_l.Exclude); 
    yyaxis right; 
    plot(data.time, data.beta, 'DisplayName', 'beta'); 
    plot(data.time, data.r, 'DisplayName', 'r'); 
    title("Fit for C_l (Roll moment caused by yaw rate (undulating flight))")
    hold off; 
    
    figure; hold on; 
    plot(fitresult_n, data.time, data.momt_yaw, opts_n.Exclude); 
    yyaxis right; 
    plot(data.time, data.beta, 'DisplayName', 'beta'); 
    plot(data.time, data.r, 'DisplayName', 'r'); 
    title("Fit for C_n (Yaw Moment caused by yaw rate (undulating flight))")
    hold off; 
    
    CY0 = fitresult_Y.CY0;
    CYr = fitresult_Y.CYr;
    Cl0 = fitresult_l.Cl0;
    Clr = fitresult_l.Clr;
    Cn0 = fitresult_n.Cn0;
    Cnr = fitresult_n.Cnr;
end


%% Output section (CSV, Plots)
function print_csv(results, FILENAME, TARGET_CG, simu, batchmode)
   %% Dumps all fit results into a CSV string 
    % This function allows to differenciate between the cases (pitching and/or plunging) and 
    % also checks the CGs. 
    % We have access to all the variables thanks to global variables here... 
    
    
    %% Create header: 
    if ~batchmode     % surpress header. The header unfortunately has to be extracted manually so far. 
        fprintf('Filename,Case,k,SampleRate,AOA_mean,AOA_amp,'); 
        fprintf('C_L_alpha,(C_L_q + C_L_alphadot),C_Lq,C_L_alphadot,C_L0,'); 
        fprintf('C_m_alpha,(C_m_q + C_m_alphadot),C_m_q,C_m_alphadot,C_m0'); 
        if(TARGET_CG.enabled)
            fprintf(',C_m_alpha_mod,(C_m_q_mod + C_m_alphadot_mod),C_m_q_mod,C_m_alphadot_mod,C_m0_mod\n')
        else
            fprintf('\n'); 
        end
    end
    
    %% Print file specific data: 
    fprintf('\"%s\",', FILENAME); 
    fprintf('%i,%.3f,%i,%.3f,%.3f,', simu.case, simu.ReducedFrequency, simu.SampleRate, rad2deg(simu.AoA_Ref), rad2deg(simu.effectiveAOAamp)); 
    
    switch (simu.case)
        case 1
            % combined derivatives
            if(TARGET_CG.enabled)
                formatspec = "%.4f,%4f,,,%.4f," ...
                           + "%.4f,%4f,,,%.4f," ...
                           + "%.4f,%4f,,,%.4f\n";
            else
                formatspec = "%.4f,%4f,,,%.4f," ...
                           + "%.4f,%4f,,,%.4f\n";
            end
        case 2
            % only alphadot derivative
            if(TARGET_CG.enabled)
                formatspec = "%.4f,,,%4f,%.4f," ...
                           + "%.4f,,,%4f,%.4f," ...
                           + "%.4f,,,%4f,%.4f\n";
            else
                formatspec = "%.4f,,,%4f,-%.4f," ...
                           + "%.4f,,,%4f,-%.4f\n";
            end
        case 3
            % only q, alpha derivative unusable because theoretically undefined: 
            if(TARGET_CG.enabled)
                formatspec = "(%.4f),,%4f,,%.4f," ...
                           + "(%.4f),,%4f,,%.4f," ...
                           + "(%.4f),,%4f,,%.4f\n";
            else
                formatspec = "(%.4f),,%4f,,%.4f," ...
                           + "(%.4f),,%4f,,%.4f\n";
            end
        otherwise
            error("That's completely and utterly impossible to get here, witchcraft!"); 
    end
    fprintf(formatspec, results);     
end
