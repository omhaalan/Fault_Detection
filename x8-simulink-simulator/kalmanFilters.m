classdef kalmanFilters < handle
    properties
        missionLen;
        
        filters;
        phi_nominal;
        static_param;
        numFilters;
        
        % Static system parameters
        rho;
        K_E;
        prop_diam;
        simTransform;
        
        %For magill filter
        maxWindow;
        L;
        priordist;
        
        %For multiple models
        h_0;
        priorHyp;
        PI;
        
        %Algorithm
        updateRate;
        updateTime;
        systemState;    %0: Detection, 1: Identification, 2: Estimation
        state = struct('detection', 0, 'identification', 1, 'estimation', 2);
        
        detProb; %Still in use?
        
        
        %det: detection, hyp: hypothesis, dist: distribution, filt: filter
        
        %Detection filters         
        detDist;
        detHyp;
        detectionFilters;
        detectionWindow;
        numDetFilt;
        
        %Identification filters   iden:
        idenDist;
        idenHyp;
        identificationFilters;
        idenWindow;
        numIdenFilt;
        
        
        modeFilters;
        activeModes;
        modeInfo;
    end
    methods
        function obj = kalmanFilters(missionLen, phi_nominal, rho, K_E, prop_diam, updateRate, detectionWindow, idenWindow)
            obj.missionLen = missionLen;
            obj.filters = {};
            obj.numFilters = 0;
            obj.phi_nominal = phi_nominal;
            obj.rho = rho;
            obj.K_E = K_E;
            obj.prop_diam = prop_diam;
            
            
            
            obj.detProb = {};
            
            obj.PI =  [1-3e-1 1e-1 1e-1 1e-1 ;...  
                        0.001 0.997 0.001 0.001 ;...
                        0.2 0.1 0.6 0.1 ;...
                        0.2 0.1 0.1 0.6 ];
                    
            obj.updateRate = updateRate;
            obj.updateTime = 0;
            
            obj.modeFilters = {[], [], [], [], [], [], [], []}; %Overview of filters bellonging to mode
            
            
            
            obj.systemState = 0;
            obj.h_0 = 1; %null hypothesis This index also needs to be tackled at some point
            obj.priorHyp = obj.h_0;
            
            
            %Detection State
            obj.detHyp = obj.h_0*ones(1,missionLen);
            obj.detectionWindow = detectionWindow;
            
            %identification
            obj.idenWindow = idenWindow;
            obj.identificationFilters = [];  %Filters used for identification
            obj.idenHyp = NaN(1,missionLen);
            
            
            obj.activeModes = [];
            obj.modeInfo = [0, 3, 1, 1, 1, 2, 1, 2]; %This is just the statedimensions so far.
            
            
        end
        function setSimTransform(obj, T)
            obj.simTransform = T;
        end
        
        %% Add filter
        function addFilter(obj, mode, filterType, Q, R, P_0, init_state, currentTime)
            %Todo: make use of the new data structures. This has not been
            %implemented yet
            
            %Make use of the new convention!
            phi_1_nom = obj.phi_nominal(1:3);
            phi_2_nom = obj.phi_nominal(4);
            phi_3_nom = obj.phi_nominal(5);
            
            %Similarity transformation (only used for eigendecomposition)
            T = obj.simTransform;
            
            %Measurement dimension
            inn_dim = 1;
            
            c = obj.prop_diam^5*obj.rho/(4*pi^2);
            h = @(v_a, omega, I_e, phi_1, phi_2, phi_3) I_e*obj.K_E-c*(phi_1(1)*omega^2+phi_1(2)*2*pi*omega*v_a/(obj.prop_diam)+phi_1(3)*(2*pi*v_a/(obj.prop_diam))^2)-phi_2*omega-phi_3*obj.K_E;

            %New and improved
            J = @(v_a, omega) 2 * pi * v_a / (omega*obj.prop_diam);  %This is super controversial!!!!!
            C_Q =@(v_a, omega, P, phi_1) [1, J(v_a, omega), J(v_a, omega)^2] * P * phi_1;
            Q_a =@(v_a, omega, P, phi_1) obj.rho * (omega ^ 2 / (4*pi^2))*obj.prop_diam^5 * C_Q(v_a, omega, P, phi_1);
            h_3 = @(v_a, omega, I_e, P, phi_1, phi_2, phi_3) -Q_a(v_a, omega, P, phi_1)-omega*phi_2+obj.K_E * (I_e-phi_3);
            
            switch mode
               case 1 %NO fault, might not be used here
                  H = @(v_a, omega) 0;
                  %innovation = @(v_a, omega, I_e, Nan) h(v_a, omega, I_e, phi_1_nom, phi_2_nom, phi_3_nom);
                  innovation = @(v_a, omega, I_e) h_3(v_a, omega, I_e, 1, phi_1_nom', phi_2_nom, phi_3_nom); 
                  state_dim = 0;
                  label = 'Mode 0';
               case 2   %This has to work for the decompositon to work correctly
                  H = @(v_a, omega) [h_3(v_a, omega, 0, 1, [1, 0, 0]', 0, 0), h_3(v_a, omega, 0, 1, [0, 1, 0]', 0, 0), h_3(v_a, omega, 0, 1, [0, 0, 1]', 0, 0)];
                  innovation = @(v_a, omega, I_e, phi_1) h_3(v_a, omega, I_e, 1, phi_1, phi_2_nom, phi_3_nom);
                  state_dim = 3;
                  label = 'Fault 1: cube estimate';
               case 3
                  H = @(v_a, omega) omega;
                  innovation = @(v_a, omega, I_e, phi_2) h(v_a, omega, I_e, phi_1_nom, phi_2, phi_3_nom);
                  state_dim = 1;
                  label = strcat('Fault 2: Q=', num2str(Q));
               case 4
                  H = @(v_a, omega) obj.K_E;
                  innovation = @(v_a, omega, I_e, phi_3) h(v_a, omega, I_e, phi_1_nom, phi_2_nom, phi_3);
                  state_dim = 1;
                  label = strcat('Fault 3: Q=', num2str(Q));
               case 5 %Tor Arne Parameterization Looks good
                   H = @(v_a, omega) -h_3(v_a, omega, 0, 1, phi_1_nom', 0, 0);
                   innovation = @(v_a, omega, I_e, P) h_3(v_a, omega, I_e, P, phi_1_nom', phi_2_nom, phi_3_nom);
                   state_dim = 1;
                   label = strcat('Fault 1: Par: Q=', num2str(Q));
               case 6 %Square 
                  H = @(v_a, omega) -[h_3(v_a, omega, 0, 1, [1, 0, 0]', 0, 0), h_3(v_a, omega, 0, 1, [0, 1, 0]', 0, 0)];
                  innovation = @(v_a, omega, I_e, phi_1_square) h_3(v_a, omega, I_e, 1, [phi_1_square; 0], phi_2_nom, phi_3_nom);
                  state_dim = 2;
                  label = 'Fault 1: Square';
               case 7 %Eigenvalue decomposition scalar
                  %Sort out naming convention of phitilde and intitstate
                  phiTilde_1 = T * phi_1_nom';
                  H = @(v_a, omega) -h_3(v_a, omega, 0, T, [1, 0, 0]', 0, 0);
                  innovation = @(v_a,  omega, I_e, phiTilde_1_1) h_3(v_a, omega, I_e, T, [phiTilde_1_1; phiTilde_1(2:3)], phi_2_nom, phi_3_nom);
                  state_dim = 1;
                  label = strcat('Fault 1: Eig-sca: Q=', num2str(Q));
               case 8 %Eigenvalue decompositon square
                  label = strcat('Fault 1: Eig-sq: Q=', num2str(Q(1,1)));
                  phiTilde_1 = T * phi_1_nom';
                  H = @(v_a, omega) -[h_3(v_a, omega, 0, T, [1, 0, 0]', 0, 0), h_3(v_a, omega, 0, T, [0, 1, 0]', 0, 0)];
                  innovation = @(v_a,  omega, I_e, phiTilde_1_12) h_3(v_a, omega, I_e, T, [phiTilde_1_12; phiTilde_1(3)], phi_2_nom, phi_3_nom);
                  state_dim = 2;
                otherwise
                  error('Error occurred: No fault state correspond to: %d', mode);
            end
            
            %Make matrices for storing states during execution
            nu = NaN(inn_dim, obj.missionLen);
            
            if state_dim > 0
            	S = NaN([inn_dim, inn_dim, obj.missionLen+1]);
            	P = NaN([state_dim, state_dim, obj.missionLen+1]);
            	x = NaN(state_dim, obj.missionLen); %Might not work in nominal case.
            	x(:,currentTime) = init_state'; %This whole thing is untested! Make damn good sure it works. Test it on something simple first
            	P(:,:,currentTime) = P_0;
            	obj.filters{end + 1} = struct('label', label, 'mode', mode, 'x', x, 'innovation', innovation, 'H', H, 'P', P, 'Q', Q, 'R', R, 'nu', nu, 'S', S, 'I', eye(state_dim), 'state_dim', state_dim);
            else
                obj.filters{end + 1} = struct('label', label, 'mode', mode, 'innovation', innovation, 'nu', nu, 'R', R);
            end
            
            obj.numFilters = length(obj.filters);
            obj.filters{end}.id = obj.numFilters;
            
            %Store the mode and type of the filter.
            if filterType == 0
                obj.detectionFilters(end + 1) = obj.filters{end}.id;
                obj.numDetFilt = length(obj.detectionFilters);
                obj.detDist = [2/3, (1/3) *ones(1, obj.numDetFilt-1)]; 
            elseif filterType == 1
                obj.identificationFilters(end + 1) = obj.filters{end}.id;
                obj.numIdenFilt = length(obj.identificationFilters);
                obj.idenDist = [2/3, ((1/3) / (numIdFilt-1))*ones(1, numIdFilt-1)];
            end
            obj.modeFilters{mode}(end + 1) = obj.numFilters;
            
            %Keep a track over with modes/filter types are in use: You may
            %want to move this into the if above.
            if ~any(obj.activeModes == mode)
                obj.activeModes(end+1) = mode;
            end
            
            %Make array for storing likelihoods
            if obj.numFilters == 1
                obj.L = NaN(1, obj.missionLen); %Zeros (and not NaN) could be beneficial for the given implementation.
            elseif obj.numFilters > 1
                obj.L = [obj.L; NaN(1, obj.missionLen)];
            end
            
            
            
            
            
        end
        
        function killFilters(obj, filters)
            
            index = 1:obj.numFilters;
            index(filters) = 0;
            obj.filters = obj.filters(index > 0);
            obj.L = obj.L(index > 0, :);
            obj.numFilters = length(obj.filters);
        end
        
        %% Kalman filter
        function kalmanFilter(obj, i, v_a, omega, I_e, k)
            %Kalman filter equations Note A = 0
            
            filter = obj.filters{i};
            I = filter.I;
            x = filter.x(:,k); %Note the indexing
            nu = filter.innovation(v_a, omega, I_e, x);
            
            R = filter.R;
            P = filter.P(:,:,k) + filter.Q;
            H = filter.H(v_a, omega);
            S = H * P * H' + R;
            W = P * H' / S;
            x = x + W * nu;
            P = (I - W*H)*P*(I - W*H)'+W*R*W';
            
            %Update filter
            obj.filters{i}.x(:,k+1) = x;
            obj.filters{i}.P(:,:,k+1) = P;
            obj.filters{i}.nu(:,k+1) = nu;
            obj.filters{i}.S(:,:,k+1) = S;
            
        end
        function updateFilters(obj, v_a, omega, I_e, k)
            
            
            for i=1 : length(obj.filters);
                if obj.filters{i}.mode == 1
                    obj.filters{1}.nu(:,k+1) = obj.filters{1}.innovation(v_a, omega, I_e);
                else
                    obj.kalmanFilter(i, v_a, omega, I_e, k);
                end
            end
            obj.likelihoods(k);
        end
        
        %% Probability functions
        function likelihoods(obj, k)
            nu = NaN(1, obj.numFilters);
            Sigma = obj.filters{1}.R;
            %syms (1/((2*pi*sigma)^0.5))*exp(-(nu^2)/(2*sigma));
            for i=1 : obj.numFilters
                nu(i) = obj.filters{i}.nu(k);
                
                li = sym((1/(sqrt(2*pi*Sigma)))*exp(-(obj.filters{i}.nu(k)^2)/(2*Sigma))); 
                
                a = vpa(li);
                obj.L(:,k)= a;
            end
            digits(50);
            li = sym((1/(sqrt(2*pi*Sigma)))*exp(-(obj.filters{i}.nu(k)^2)/(2*Sigma))); 
            %mu = 0;
            %Sigma = 0.1; % obj.filters{1}.R;
            %obj.L(:,k) = normpdf(nu*1e10, mu, Sigma);
            
            
            
        end
        
        function [Hypothesis, probabilities] = magillFilter(obj, window, priorDist, filterModes, k)
            %Window might be longer than recorded history
            
            
            L = obj.L(filterModes, k-window:k);
            
            probabilities = [priorDist, zeros(length(priorDist), window)];
            for i=1:window
                posterior = L(:,i) .* probabilities(:,i);
                W = sum(posterior);
                probabilities(:,i+1) = posterior ./ W;
            end
            [~, Hypothesis] = max(probabilities(:,end));
            
        end
        
        function window = evaluateWindow(obj, window, filterModes, k)
                %This function makes sure that the window is not to large.
                if window >= k
                    window = k-1;
                end
                L_isnan = isnan(obj.L(filterModes, k-window: k));
                [~, col] = find(L_isnan, 1, 'last');
                if ~isempty(col)
                    window = window - col;
                end
                
        end
        
        function Hypothesis = multipleModel(obj)
            l = obj.filters{i}.L(:,1);
            prob = obj.PI(obj.priorHyp,:)*l';
            [~, Hypothesis] = max(prob);
            obj.priorHyp = Hypothesis;
        end
        
        function [bestHypo, hypoProbs] = updateFaultFilters(obj)
                [bestHypo, hypoProbs] = obj.magillFilter(obj.updateRate, obj.L(obj.faultFilters,:), [1/3; 1/3; 1/3]);
                
                bestFilter = obj.filters{obj.faultFilters(bestHypo)};

                if bestHypo == 1
                    obj.filters{obj.faultFilters(2)}.R = bestFilter.R*1;
                    obj.filters{obj.faultFilters(2)}.Q = bestFilter.Q*0.1;
                    obj.filters{obj.faultFilters(2)}.x = bestFilter.x;
                    obj.filters{obj.faultFilters(2)}.P = bestFilter.P;

                    obj.filters{obj.faultFilters(3)}.R = bestFilter.R*1;
                    obj.filters{obj.faultFilters(3)}.Q = bestFilter.Q*0.01;
                    obj.filters{obj.faultFilters(3)}.x = bestFilter.x;
                    obj.filters{obj.faultFilters(3)}.P = bestFilter.P;

                elseif bestHypo == 2
                    obj.filters{obj.faultFilters(1)}.x = bestFilter.x;
                    obj.filters{obj.faultFilters(3)}.x = bestFilter.x;

                elseif bestHypo == 3
                    obj.filters{obj.faultFilters(1)}.x = bestFilter.x;

                    obj.filters{obj.faultFilters(2)}.R = bestFilter.R;
                    obj.filters{obj.faultFilters(2)}.Q = bestFilter.Q;
                    obj.filters{obj.faultFilters(2)}.x = bestFilter.x;
                    obj.filters{obj.faultFilters(2)}.P = bestFilter.P;

                    obj.filters{obj.faultFilters(3)}.R = bestFilter.R*1;
                    obj.filters{obj.faultFilters(3)}.Q = bestFilter.Q*0.1;
                    obj.filters{obj.faultFilters(3)}.x = bestFilter.x;
                    obj.filters{obj.faultFilters(3)}.P = bestFilter.P;
                end
        end
        
        function faultDetectionOld(obj)
            %Note that this came after running the magill filter once
            hypoProb = 0;
            
            if obj.priorHyp ~= hypothesis  %Prior hypo not == hypo
                obj.killFilters(obj.faultFilters(2:end));
                obj.modes = obj.nominalFilters;
                obj.faultFilters = [];
                if hypothesis ~= obj.h_0
                    
                    filter = obj.filters{hypothesis};
                    obj.faultFilters = [hypothesis, 5, 6];
                    Q_1 = 0.1 * filter.Q;
                    Q_2 = 0.01 * filter.Q;
                    R = 10 * filter.R;
                    P = filter.P;
                    x = filter.x;
                    obj.addFilter(hypothesis-1, Q_1, R, P, x);
                    obj.addFilter(hypothesis-1, Q_2, R, P, x);
                end
            elseif hypothesis ~= obj.h_0
                obj.updateTime = obj.updateTime + 1;
                if obj.updateTime >= obj.updateRate
                    obj.updateTime = 0;
                    [bestHypo, hypoProb] = obj.updateFaultFilters();
                    obj.modes(hypothesis) = obj.faultFilters(bestHypo);
                    
                end
            end
            
            obj.priorHyp = hypothesis;
        end
        
        %% State functions
        function stateTransition(obj, state, k)    
            %Untested: Make sure to have a look!
            %Todo: add in code for other trasitions as well.
            if state == 1
                obj.systemState = 1;
                R = 0.1;
                for i=2:length(obj.detectionFilters)
                    oldFilter = obj.filters{obj.detectionFilters(i)};
                    mode = oldFilter.mode;
                    Q = 1e-20 * eye(obj.modeInfo(mode));
                    P = oldFilter.P(:,:,k); %Inheritance might be 'unfair'
                    init_state = oldFilter.x(:,k);
                    obj.addFilter(mode, 1, Q, R, P, init_state, k);
                end
            end
        end
        
        function detection(obj, k)
            %Set appropraite window size
                window = obj.evaluateWindow(obj.detectionWindow, obj.detectionFilters, k);
                
                obj.detProb{end+1} = {};
                
                %Compare h_0 to hypothesis H_1
                for i=2:obj.numDetFilt
                    curFilters = [obj.detectionFilters(obj.h_0), obj.detectionFilters(i)];
                    [hypothesis, prob] = obj.magillFilter(window, obj.detDist(curFilters)', curFilters, k);
                    obj.detProb{end}{end+1} = struct('id', curFilters, 'prob', prob, 'k_0', k-window, 'k_1', k);
                    if hypothesis ~= obj.h_0
                        obj.detHyp(k) = hypothesis;
                        %obj.stateTransition(1, k)
                    end
                end
        end
        
        function identification(obj, k)
            %Step 1: Execute intermode comparison
            %window = evaluateWindow(obj.idenWindow, obj.detectionFilters, k);
            %[hypothesis, prob] = obj.magillFilter(window, obj.id
            
        end
        %% Fault detection
        function [hypothesis] = faultDetection(obj, k)
            if obj.systemState == obj.state.detection
                obj.detection(k);
            elseif obj.systemState == obj.state.identification
                obj.identification(k)
            %else -> identification
            end
            
        end
       
    end
end

    
    
    
    
          
            
            
            
            
            
 
