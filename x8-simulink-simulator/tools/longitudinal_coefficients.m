function longitudinal_coefficients(FILENAME, batchmode)
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
    %FILENAME = "data/X8_longitudinal/Clean_Pitch_AOA8.db";
    %FILENAME = "data/X8_longitudinal/Clean_Plunge_AOA8.db";
    %FILENAME = "data/X8_longitudinal/Clean_PitchPlunge_AOA2.db";
    FILENAME = "data/X8_longitudinal/run_Clean_PitchPlunge_AOA_2_fixed_trans.db";
    %FILENAME = "data/X8_longitudinal/run_Iced_PitchPlunge_AOA2_fixed_trans.db";
%FILENAME = "data/NACA/run_run2.db";
    %FILENAME = "data/NACA/run_NACA_DI7_0.25c_Sample3.db"
end

% select here if your model is of X8 or the verification Profile: 
%model = 'NACA64A010';
model = 'X8'; 

if ~batchmode 
    warning("Model " + model + " is in use")
end


% If you want to recalculate the moment for a different CG. The reference CG is stored in the database.
% set to true if you want to calculate a updated reference. 
TARGET_CG.enabled = true;
TARGET_CG.X = 0.44;  % in meter!
TARGET_CG.Y = 0.00;




%% Prepare: get data from Database, filter relevant data, etc.
% Load the data:
try
    conn = sqlite(FILENAME);
catch
    error("File " + FILENAME + " not found!")
end

try
    sqlquery = "SELECT "                + ...
        "time_step, "          + ... # raw_data(1)
        "lift_coefficient, "   + ... # raw_data(2)
        "drag_coefficient, "   + ... # raw_data(3)
        "side_coefficent, "    + ... # raw_data(4)
        "moment_roll, "        + ... # raw_data(5)
        "moment_pitch, "       + ... # raw_data(6)
        "moment_yaw "         + ... # raw_data(7)
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
        "DBVERSION "         + ... # raw_meta(14)
        "FROM meta";
    raw_meta = fetch(conn, sqlquery);
catch ME
    warning("During the database query something went wrong. You probably are trying to use an old database "...
           + "which does not have all required columns. Please generate the database again with the new Python script!")
    rethrow(ME)
end

% Check for minimal DB Version!
MIN_DB_VERSION = 3;
if cell2mat(raw_meta(14)) < MIN_DB_VERSION
    error("This script was updated and requires a DB that was created with a newer python script. Please regenerate the database")
end
    
data.time = cell2mat(raw_data(:, 1)) * cell2mat(raw_meta(6)); % in s
%data.time2 = (cell2mat(raw_data(:, 1)) - 1) * cell2mat(raw_meta(6)); % in s

data.Cz = cell2mat(raw_data(:, 2));
data.Cx = cell2mat(raw_data(:, 3));
data.Cy = cell2mat(raw_data(:, 4));
data.momt_r = cell2mat(raw_data(:, 5));
data.momt_p = cell2mat(raw_data(:, 6));
data.momt_y = cell2mat(raw_data(:, 7));

% for i = 1 : (size(data.Cz, 1) - 1) 
%     data.Cx(i,1) = 1/2 * (data.Cx(i,1) + data.Cx (i+1,1));
%     data.Cy(i,1) = 1/2 * (data.Cy(i,1) + data.Cy (i+1,1));
%     data.Cz(i,1) = 1/2 * (data.Cz(i,1) + data.Cz (i+1,1));
%     data.momt_r(i,1) = 1/2 * (data.momt_r(i,1) + data.momt_r (i+1,1));
%     data.momt_p(i,1) = 1/2 * (data.momt_p(i,1) + data.momt_p (i+1,1));
%     data.momt_y(i,1) = 1/2 * (data.momt_y(i,1) + data.momt_y (i+1,1));
% end
% data.Cx = data.Cx(1:end-1, 1); 
% data.Cy = data.Cy(1:end-1, 1); 
% 
% data.momt_r = data.momt_r(1:end-1, 1); 
% data.momt_p = data.momt_p(1:end-1, 1); 
% data.momt_y = data.momt_y(1:end-1, 1); 
% 
% data.time = (cell2mat(raw_data(1:end-1, 1)) + 1/2) * cell2mat(raw_meta(6));




%% Define, get and/or calculate parameters:
% % Define Aircraft Parameters:
x8.Velocity             = cell2mat(raw_meta(2)); % m/s

if strcmp(model, 'X8')
    x8.WingSpan             = 2.1; % m
    x8.MAC                  = 0.37; % m
    x8.ReferenceArea        = x8.WingSpan * x8.MAC; % actual reference area
elseif strcmp(model, 'NACA64A010')
    x8.WingSpan             = 1000;   % almost infinity.       
    x8.MAC                  = 0.5;    
    x8.ReferenceArea        = 1;
else
    error("Model parameters not known!")
end

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
simu.ThetaAmplitude     = cell2mat(raw_meta(4)); % = +/- X rad
simu.ReducedFrequency   = simu.Omega * x8.MAC / (2 * x8.Velocity);
simu.TimeStep           = cell2mat(raw_meta(6)); % assume constant time steps.
simu.AOA_Ref            = cell2mat(raw_meta(3)); % mean AOA: alpha = AOA_ref + AlphaAmplitude * sin(..)
simu.cg.x               = cell2mat(raw_meta(8)) / 1000; % in m. Outfile contains mm. -> Div by 1000 
simu.cg.y               = cell2mat(raw_meta(9)) / 1000; % in m 
simu.cg.z               = cell2mat(raw_meta(10))/ 1000; % in m 
simu.vxAmplitude        = cell2mat(raw_meta(11)); 
simu.vyAmplitude        = cell2mat(raw_meta(12)); 
simu.vzAmplitude        = cell2mat(raw_meta(13)); 

% Fix Phase Lag issue: In ANSYS notation, the specified "neutral" AoA is not actually the mean
% value, but the start value indeed. If PhaseAngle = 0, then there is no difference. However, if
% phase angle != 0 then we have to add the sine of the PhaseAngle multiplied by the Amplitude to the
% mean AOA.
% Example: A0A = 0, Amplitude = 2, Phase Lag = 0.25 is not, as one could assume, 0° + 2° * cos(wt),
% instead it is 2° + 2° * cos(wt). 
if(simu.vxAmplitude ~= 0 && simu.PhaseAngle ~= pi)
    error("A Phase Lag with a plunging motion is currently not supported!")
end
simu.AOA_Ref = simu.AOA_Ref + sin(simu.PhaseAngle - pi) * simu.ThetaAmplitude;

% Detect case (case 1: pure pitching, case 2: pure plunging, case 3: undulating flight with
% alpha-dot = 0

if (simu.ThetaAmplitude ~= 0 && simu.vyAmplitude == 0)
    simu.case = 1; 
    %simu.effectiveAOAamp = simu.ThetaAmplitude; 
    simu.Alpha_Plung_amp = 0; 
    if ~batchmode
        disp("Detected case 1: pure pitching with alpha-dot = q")
    end
elseif(simu.ThetaAmplitude == 0 && simu.vyAmplitude ~= 0)
    simu.case = 2; 
    simu.Alpha_Plung_amp = atan2(simu.vyAmplitude, x8.Velocity);
    %simu.effectiveAOAamp = simu.Alpha_Plung_amp; 
    if ~batchmode
        disp("Detected case 2: pure plunging with q = 0")   
    end
else 
    simu.Alpha_Plung_amp = atan2(simu.vyAmplitude, x8.Velocity);
    if(simu.ThetaAmplitude + simu.Alpha_Plung_amp > 0.02)
%        error("pitching and plunging do not add up to zero. Cannot continue!")
    end
    %simu.effectiveAOAamp = simu.ThetaAmplitude; 
    simu.case = 3; 
    if ~batchmode
        disp("Detected case 3: undulating flight with alpha-dot = 0")
    end
end

% Calculate AOA from parameters:

data.aoa_rad = simu.AOA_Ref + ...
            (simu.ThetaAmplitude + simu.Alpha_Plung_amp) * sin(simu.Omega * data.time + simu.PhaseAngle); 
data.alphadot = (simu.ThetaAmplitude + simu.Alpha_Plung_amp) * simu.Omega * cos(simu.Omega * data.time + simu.PhaseAngle);
data.q = simu.ThetaAmplitude * simu.Omega * cos(simu.Omega * data.time + simu.PhaseAngle); 


% We have Fx and Fz from the CFD simulations. Using the time-dependent AOA, transform this into L
% and D: 
R = @(alpha) [cos(alpha), sin(alpha); -sin(alpha), cos(alpha)];  % rotation from body fixed to stability axis
i = 1; 
for i = 1:size(data.aoa_rad, 1)
    %res = R(data.aoa_rad(i)) * [data.Cx(i); data.Cz(i)];  % This is correct if the forces is given in body fixed coordinates with moving axes
    res = R(simu.AOA_Ref) * [data.Cx(i); data.Cz(i)];     % This is correct if the forces is given in body fixed coordinates with fixed axes

    data.drag(i, 1) = res(1);     
    data.lift(i, 1) = res(2); 
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
data.lift = data.lift * (simu.ReferenceArea/(x8.ReferenceArea / 2));
data.drag = data.drag * (simu.ReferenceArea/(x8.ReferenceArea / 2));
data.momt_p = data.momt_p * (simu.ReferenceArea/(x8.ReferenceArea / 2));

%% Fit model function: Lift

[CL_stiff, CL_damp, CL_0, fitresult_lift, gof_lift, fitopts_lift] = fit_data(data.time, data.lift, simu, 'Lift', 'L', 0, batchmode); 
results = [CL_stiff, CL_damp, CL_0]; 
fitresults.lift = fitresult_lift; 
fitgofs.lift = gof_lift; 
fitopts.lift = fitopts_lift; 

%% Fit Model function: Pitching Moment:

[CM_stiff, CM_damp, CM_0, fitresult_pm, gof_pm, fitopts_pm] = fit_data(data.time, data.momt_p, simu, 'Moment', 'm', simu.cg.x, batchmode);
results = [results, CM_stiff, CM_damp, CM_0]; 
fitresults.pm = fitresult_pm;
fitgofs.pm = gof_pm;
fitopts.pm = fitopts_pm; 
assignin('base', "t", data.time) ; 
assignin('base', "d", data.drag) ; 


if (TARGET_CG.enabled) 
    dx = TARGET_CG.X - simu.cg.x;  % in body fixed axes
    dy = TARGET_CG.Y - simu.cg.y;  % in body fixed axes
    
    i = 1; 
    while (i <= size(data.aoa_rad,1))
        dcgs = R(data.aoa_rad) * [dx; dy]; 
        dxs = dcgs(1); 
        dys = dcgs(2);  % lift
        
        data.momt_modified(i, 1) = data.momt_p(i) + dxs / x8.MAC * data.lift(i) + dys / x8.MAC * data.drag(i); 
        
        i = i + 1; 
    end

    [C_M_mod_stiff, C_M_mod_damp, C_M_mod_0, fitresult_pmmod, gof_pmmod, fitopts_pmmod] = fit_data(data.time, data.momt_modified, simu, 'Moment_Modified', 'm', TARGET_CG.X, batchmode); 
    results = [results, C_M_mod_stiff, C_M_mod_damp, C_M_mod_0] ; 
    
    fitresults.pmmod = fitresult_pmmod;
    fitgofs.pmmod = gof_pmmod;
    fitopts.pmmod = fitopts_pmmod; 
end


%% Fit Model function: Drag: 
fit_drag(data.time, data.drag, simu, batchmode, x8, results(1), results(2), results(3)); 

print_csv(results, fitgofs, FILENAME, TARGET_CG, simu, batchmode); 
plot_all(data, simu, results, fitresults, fitopts, FILENAME, batchmode);

end


%% Function section.Cz
function [CX_alpha, CX_dyn, CX_0, fitresult, gof, fitopts] = fit_data(x, y, simu, name, acronym, CG, batchmode)
    % In accordance with Schmidt, a assume sine function.
    % sin1 fit in matlab does not allow constant offset, so we need to define a
    % function that allows for constant offsets. We could also subtract this
    % offset and use the built-in 'sin1' function but that requires more logic
    % to calculate the static value.
    
    switch simu.case
        case 1  % Pure pitching, dynamic part is alpha-dot and q with Alpha Plung = 0
        fun = sprintf("CX0 + CXa * (%f + %f * sin(%f * t + %f)) " ...
            + "+ CXdyn * %f * %f * cos(%f * t + %f) ", ...
            simu.AOA_Ref, simu.ThetaAmplitude, simu.Omega, simu.PhaseAngle, ...
            simu.ThetaAmplitude,  simu.ReducedFrequency, simu.Omega, simu.PhaseAngle);
            
        case 2 % Same as before but this time ThetaAmplitude is 0
        fun = sprintf("CX0 + CXa * (%f + %f * sin(%f * t + %f)) " ...
            + "+ CXdyn * %f * %f * cos(%f * t + %f) ", ...
            simu.AOA_Ref, (simu.ThetaAmplitude + simu.Alpha_Plung_amp), simu.Omega, simu.PhaseAngle, ...
            (simu.ThetaAmplitude + simu.Alpha_Plung_amp),  simu.ReducedFrequency, simu.Omega, simu.PhaseAngle);
              
        case 3   % We have only a q part and need to remove the alpha Plung part 
        fun = sprintf("CX0 + CXa * (%f + %f * sin(%f * t + %f)) " ...
            + "+ CXdyn * %f * %f * cos(%f * t + %f) ", ...
            simu.AOA_Ref, (simu.ThetaAmplitude + simu.Alpha_Plung_amp), simu.Omega, simu.PhaseAngle, ...
            simu.ThetaAmplitude,  simu.ReducedFrequency, simu.Omega, simu.PhaseAngle);
    end
    
    ft = fittype( fun, 'independent', 't', 'dependent', 'y' );
    opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
    opts.Display = 'Off';

    opts.StartPoint = [0 4 4];
    [xData, yData] = prepareCurveData( x, y );
    
    %opts.Exclude = xData < (1/simu.Freq)/4;  %remove the first quarter oscillation. 
    
    RemovePart = 0.25; 
    excludeArray = zeros(size(xData, 1),1);
    excludeArray(1:floor(RemovePart*size(xData,1))) = 1;
    opts.Exclude = excludeArray;  %remove the first quarter of all points. 
    
    % Function is the same as for lift.
    
    [fitresult, gof] = fit( xData, yData, ft, opts );
    
    if ~batchmode
        fprintf('Fit completed with the following function: \n y = %s\n\n', fun)
    end
        
    % Check if the fit seems reasonable!
    if(gof.rsquare < 0.98)       
        if(batchmode)
            % do not abort now. 
            %me = MException("longitudinalCoefficients:NoGoodFit", "The Goodness of Fit is not high. Cannot continue in Batch mode"); 
            %throw (me); 
        else
            warning('The goodness of fit is not very high (rsquare = %f < 0.95). \nPlease continue with caution!', gof.rsquare)

            figure; 
            plot(fitresult, xData, yData, opts.Exclude); 
            warning('Please check the figure that was just opened if you believe that the fit is reasonable!')
            while (1)
                m = input('Do you want to continue? [y|N] ', 's');
                if(lower(m) == 'y')
                    break
                elseif (lower(m) == 'n')
                    return
                else
                    disp('Unrecognized input. Please try again!')
                end
            end
        end
    end
    
    if ~batchmode
        fprintf('The fit has determined the following values:\n')
        fprintf('\tRSquare        = %.6f\n', gof.rsquare)

        % print general information: 
        fprintf("Calculated %s coefficents for average alpha of %.3f rad (%.2f deg), " ...
            + "alpha amplitude of %.3f rad (%.2f deg)" ...
            + " and omega = %.3f:\n", ...
            name, ...
            simu.AOA_Ref, ...
            rad2deg(simu.AOA_Ref), ...
            (simu.ThetaAmplitude + simu.Alpha_Plung_amp), ...
            rad2deg((simu.ThetaAmplitude + simu.Alpha_Plung_amp)), ...
            simu.Omega...
            ); 

        if (CG > 0) 
            fprintf("The moment is calculated for a reference of %.1f mm\n\n", CG * 1000); 
        end

        fprintf("\tC_%s_0                    = %.4f\n", acronym, fitresult.CX0);
        fprintf("\tC_%s_alpha                = %.4f\n", acronym, fitresult.CXa);

        switch simu.case
            case 1  % pure pitching
                fprintf("\t(C_%s_q + C_%s_alpha-dot) = %.4f\n", acronym, acronym, fitresult.CXdyn);
            case 2  % pure plunging
                fprintf("\tC_%s_alpha-dot            = %.4f\n", acronym, fitresult.CXdyn);
            case 3  % pitch-plunge with aoa = const
                fprintf("\tC_%s_q                    = %.4f\n", acronym, fitresult.CXdyn);
            otherwise
                error("How did you manage to get here??");
        end
    end
    
    % for return: 
    CX_alpha = fitresult.CXa; 
    CX_dyn = fitresult.CXdyn; 
    CX_0 = fitresult.CX0;
    fitopts = opts; 
end

function [CD_alpha, CD_dyn, CD_0 ] = fit_drag(x, y, simu, batchmode, x8, CLa, CLdyn, CL0)
    if ~batchmode 
        warning("Drag fitting is disabled!")
    end
    return; 
    % Fit the drag function. Follow the usual model: C_D = CD0 + CL^2 / k + c/2V * CDdyn * dyn
    %
    % We need a model function for lift: 
    %   1) 1/(pi*e*lambda) * (CL0 + CLa alpha), CL0 and CLa free and determined by curve fitting, e fixed
    %   2) 1/(pi*e*lambda) * (CL0 + CLa alpha), CL0 and CLa fixed, e free and determined by curve fitting
    %   3) 1/(pi*e*lambda) * (CL0 + CLa alpha + c/2V * CLdyn * dyn), CL0, CLa, CLdyn free, e fixed
    %   4) 1/(pi*e*lambda) * (CL0 + CLa alpha + c/2V * CLdyn * dyn), CL0, CLa, CLdyn fixed, e free
    lambda = x8.WingSpan / x8.MAC;
    e = 0.2; 
    k = pi * e * lambda; 
    
    % assemble the assumed function: 
    
    % alpha(t) = alpha_0 + alpha_A * sin(wt + d)
    s_alpha_t =  sprintf("(%f + %f * sin(%f * t + %f))", ...
         simu.AOA_Ref,  ...
         (simu.ThetaAmplitude + simu.Alpha_Plung_amp), ...
         simu.Omega, ...
         simu.PhaseAngle); 
     
    % da/dt = alpha_A * w * cos(wt + d)
    s_dyn_t = sprintf("(%f * %f * cos(%f * t + %f))", ...
         (simu.ThetaAmplitude + simu.Alpha_Plung_amp), ...
         simu.Omega, ... 
         simu.Omega, ...
         simu.PhaseAngle); 
     
    % Model functions for lift: 
    % Option 1: e free, CL = CLa * alpha + CL0 fixed
    s_CL_noDyn_lift_fixed = sprintf("1/(pi * e * %f) * (%f * %s + %f)^2",  ...
        lambda, ...
        CLa, ...
        s_alpha_t, ...
        CL0); 
    
    % Option 2: e fixed, CL = CLa * alpha + CL0 free
    s_CL_noDyn_lift_free = sprintf("1/%f * (CLa * %s + CL0)^2",  ...
        k, ...
        s_alpha_t); 
    
    % Option 3: e free, CL = CLa * alpha + CLdyn * dyn + CL0 fixed
    s_CL_Dyn_lift_fixed = sprintf("1/(pi * e * %f) * (%f * %s + %f * %f * %s + %f)^2",  ...
        lambda, ...
        CLa, ...
        s_alpha_t, ...
        CLdyn, ...
        x8.MAC/(2*x8.Velocity), ...
        s_dyn_t, ...
        CL0); 
    
%     % Option 4: e fixed, CL = CLa * alpha + CLdyn * dyn + CL0 free
%     s_CL_Dyn_lift_free = sprintf("1/%f * (CLa * %s + CLdyn * %f * %s + CL0)^2",  ...
%         k, ...
%         s_alpha_t, ...
%         x8.MAC/(2*x8.Velocity), ...
%         s_dyn_t); 
    
    % Option 4.1: e, CLdyn, CL0 free, CLa fixed
    s_CL_Dyn_lift_free = sprintf("1/(pi * e * %f) * (%f * %s + CLdyn * %f * %s + CL0)^2",  ...
        lambda, ...
        CLa, ... 
        s_alpha_t, ...
        x8.MAC/(2*x8.Velocity), ...
        s_dyn_t); 
    fun1 = sprintf("CD0 + %f * CDdyn * %s + %s", x8.MAC/(2*x8.Velocity), s_dyn_t, s_CL_noDyn_lift_fixed); 
    fun2 = sprintf("CD0 + %f * CDdyn * %s + %s", x8.MAC/(2*x8.Velocity), s_dyn_t, s_CL_noDyn_lift_free); 
    fun3 = sprintf("CD0 + %f * CDdyn * %s + %s", x8.MAC/(2*x8.Velocity), s_dyn_t, s_CL_Dyn_lift_fixed); 
    fun4 = sprintf("CD0 + %f * CDdyn * %s + %s", x8.MAC/(2*x8.Velocity), s_dyn_t, s_CL_Dyn_lift_free); 
    
    funs = [fun1, fun2, fun3, fun4]; 

    startPoints = {
        [0.1, 0.1, e] ;               % CD0, CDdyn, e
        [0.1, 0.1, CL0, CLa] ;          % CD0, CDdyn, CL0, CLa
        [0.1, 0.1, e ];               % CD0, CDdyn, e
        %[0.1, 0.1, CL0, CLa, CLdyn]     % CD0, CDdyn, CL0, CLa, CLdyn
        [0.1, 0.1, CL0, CLdyn, e]
        }; 
    
    lowerLimits = {
        [0, -10, 0] ;                   % CD0, CDdyn, e
        [0, -10, 0, 0] ;                % CD0, CDdyn, CL0, CLa
        [0, -10, 0];                    % CD0, CDdyn, e
        [0, -10, 0, 0, 0]             % CD0, CDdyn, CL0, CLa, CLdyn
    };
    
    upperLimits = {
        [10, 10, 1] ;                   % CD0, CDdyn, e
        [10, 10, 10, 10] ;              % CD0, CDdyn, CL0, CLa
        [10, 10, 1];                    % CD0, CDdyn, e
        [10, 10, 10, 10, 1]            % CD0, CDdyn, CL0, CLa, CLdyn
    };
     
    if ~batchmode
        figure;     
        hold on; 
    end
    
    for i = 1:4
        fun = funs(i); 
        disp(fun); 

        ft = fittype( fun, 'independent', 't', 'dependent', 'y' );
        opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
        opts.StartPoint = startPoints{i}; 
        opts.Lower = lowerLimits{i}; 
        opts.Upper = upperLimits{i};
        %opts.Display = 'Off';

        [xData, yData] = prepareCurveData( x, y );

        opts.Exclude = xData < (1/simu.Freq)/4;  %remove the first quarter oscillation. 

        % Function is the same as for lift.

        [fitresult, gof] = fit( xData, yData, ft, opts );

        if ~batchmode
            fprintf('Fit completed with the following function: \n y = %s\n\n', fun)
            disp(fitresult); 
            subplot(2,2,i); 
            plot(fitresult, xData, yData); 
            title("Drag fitting, Option " + i)
        end
        if ~gof.rsquare > 0.99
            warn("Drag fitting with low RSquare of " + gof.rsquare)
        else
            if batchmode && i == 4
                disp(fitresult)
            end
        end 
    end
end


%% Output section (CSV, Plots)
function print_csv(results, gofs, FILENAME, TARGET_CG, simu, batchmode)
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
            fprintf(',C_m_alpha_mod,(C_m_q_mod + C_m_alphadot_mod),C_m_q_mod,C_m_alphadot_mod,C_m0_mod')
            fprintf(',rsquare_CL,rsquare_Cm,rsquare_Cmmod')
        else
            fprintf(',rsquare_CL,rsquare_Cm')
        end
        fprintf('\n'); 
    end
    
    %% Print file specific data: 
    fprintf('\"%s\",', FILENAME); 
    fprintf('%i,%.3f,%i,%.3f,%.3f,', simu.case, simu.ReducedFrequency, simu.SampleRate, rad2deg(simu.AOA_Ref), rad2deg((simu.ThetaAmplitude + simu.Alpha_Plung_amp))); 
    
    switch (simu.case)
        case 1
            % combined derivatives
            if(TARGET_CG.enabled)
                formatspec = "%.4f,%4f,,,%.4f," ...
                           + "%.4f,%4f,,,%.4f," ...
                           + "%.4f,%4f,,,%.4f";
            else
                formatspec = "%.4f,%4f,,,%.4f," ...
                           + "%.4f,%4f,,,%.4f";
            end
        case 2
            % only alphadot derivative
            if(TARGET_CG.enabled)
                formatspec = "%.4f,,,%4f,%.4f," ...
                           + "%.4f,,,%4f,%.4f," ...
                           + "%.4f,,,%4f,%.4f";
            else
                formatspec = "%.4f,,,%4f,%.4f," ...
                           + "%.4f,,,%4f,%.4f";
            end
        case 3
            % only q, alpha derivative unusable because theoretically undefined: 
            if(TARGET_CG.enabled)
                formatspec = "(%.4f),,%4f,,%.4f," ...
                           + "(%.4f),,%4f,,%.4f," ...
                           + "(%.4f),,%4f,,%.4f";
            else
                formatspec = "(%.4f),,%4f,,(%.4f)," ...
                           + "(%.4f),,%4f,,(%.4f)";
            end
        otherwise
            error("That's completely and utterly impossible to get here, witchcraft!"); 
    end
    fprintf(formatspec, results);     
    
    % print gofs: 
    if(TARGET_CG.enabled)
        fprintf(",%.4f,%.4f,%.4f\n", gofs.lift.rsquare, gofs.pm.rsquare, gofs.pmmod.rsquare);
    else
        fprintf(",%.4f,%.4f\n", gofs.lift.rsquare, gofs.pm.rsquare);
    end
end

function plot_all(data, simu, results, fitresults, fitopts, title_of_diagram, batchmode)
    %% Plots
    if(batchmode)
        return; 
    end
    %figure;
    %plot(data.aoa_rad, data.lift);
    
    %figure;
    %plot(data.aoa_rad, data.drag);
    
    %figure;
    %plot(data.aoa_rad, data.momt);
    
    % calculate sanity lift check: 
    
    switch simu.case
        case 1
            derivative = data.alphadot; % = q
        case 2
            derivative = data.alphadot; % q = 0
        case 3
            derivative = data.q; % alphadot = 0
    end
    
    
    data.sanity_lift = results(1) * data.aoa_rad ...
        + results(2) * simu.ReducedFrequency / simu.Omega * derivative ...
        + results(3);
    data.sanity_momt = results(4) * data.aoa_rad ...
        + results(5) * simu.ReducedFrequency / simu.Omega * derivative ...
        + results(6);
    
    figure;
        hax = axes; 

    hold on;
    yyaxis left;
    plot(fitresults.lift, data.time, data.lift, fitopts.lift.Exclude);
    
    legend('Data', 'Excluded Points', 'Fitted Line', 'Interpreter', 'latex')
    plot(data.time, data.sanity_lift, 'DisplayName', '$C_L$ (sanity check)');
    ylabel("C_L")
    yyaxis right;
    plot(data.time, rad2deg(data.aoa_rad),  'DisplayName', '$\alpha(t)$');
    plot(data.time, rad2deg(data.alphadot), 'DisplayName', '$\dot{\alpha}(t)$');
    plot(data.time, rad2deg(data.q),        'DisplayName', '$q(t)$'); 


    % plot vertical line for the first maximum in alpha: 
    % since this is just a hack assume -cos(..)function: 
    SP0 = 1/4 * 1/ simu.Freq; 
    SP1 = 2/4 * 1/ simu.Freq; 
    SP2 = 3/4 * 1/ simu.Freq; 
    SP3 = 4/4 * 1/ simu.Freq; 
    line([SP0 SP0],get(hax,'YLim'),'Color',[0.8 0.8 0.8],'HandleVisibility','off')
    line([SP1 SP1],get(hax,'YLim'),'Color',[0.8 0.8 0.8],'HandleVisibility','off')
    line([SP2 SP2],get(hax,'YLim'),'Color',[0.8 0.8 0.8],'HandleVisibility','off')
    line([SP3 SP3],get(hax,'YLim'),'Color',[0.8 0.8 0.8],'HandleVisibility','off')
    
    %legend('$C_L$', 'Excluded Points', '$C_L$ (sanity check)', '$\alpha$ (rad)', '$\dot{\alpha} (rad/s)$', '$q$ (rad/s)', 'Interpreter', 'latex')
    
    title(title_of_diagram, 'Interpreter', 'none')
    %xlim( [0.2, 1] )
     
    
    figure;
    hold on;
    yyaxis left;
    plot(data.time, data.drag);
    yyaxis right;
    plot(data.time, rad2deg(data.alphadot));
    plot(data.time, rad2deg(data.aoa_rad));
    

    legend('$C_D$', '$\dot{\alpha} (rad/s)$', '$\alpha$ (rad)', 'Interpreter', 'latex')
    title(title_of_diagram, 'Interpreter', 'none')
    
    
    figure;
    hold on;
    yyaxis left;
    plot(fitresults.pm, data.time, data.momt_p, fitopts.pm.Exclude);
    legend('Data', 'Excluded Points', 'Fitted Line', 'Interpreter', 'latex')
    plot(data.time, data.sanity_momt, 'DisplayName', '$C_m$ (sanity check)');
    ylabel('C_m')
    yyaxis right;
    plot(data.time, rad2deg(data.aoa_rad), 'DisplayName', '$\alpha(t)$');
    plot(data.time, rad2deg(data.alphadot), 'DisplayName', '$ \dot{\alpha}(t)$');
    plot(data.time, rad2deg(data.q), 'DisplayName', '$q(t)$'); 
    title(title_of_diagram, 'Interpreter', 'none')
    assignin('base', 'data_sanity', data)
end
