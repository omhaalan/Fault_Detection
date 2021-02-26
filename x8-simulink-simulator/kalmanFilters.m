classdef kalmanFilters < handle
    properties
        missionLen;
        start_index;
        
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
        Nu;
        priordist;
        
        %For multiple models
        h_0_idx;
        h_1_idx;
        priorHyp;
        PI;
        
        %Algorithm
        updateRate;
        updateTime;
        systemState;    %FilterType 0: Detection, 1: iden, 2: Estimation
        transition;
        
        detProb; %Still in use?
        
        
        %det: detection, hyp: hypothesis, dist: distribution, filt: filter
        
        %Detection filters         
        detDist;
        detHyp;
        detFilters;
        detectionWindow;
        numDetFilt;
        detGain;
        
        
        %iden filters   iden:
        idenModeDist;
        idenInterDist;
        
        idenHyp;
        idenFilters;
        idenWindow;
        numIdenFilt;
        idenScales;
        
        idenGain;
        
        idenProb;
        
        k_s;
        
        
        modeFilters;
        activeModes;
        numActiveModes;
        modeInfo;
    end
    
    methods
        function obj = kalmanFilters(missionLen, start_index, phi_nominal, rho, K_E, prop_diam, updateRate, detectionWindow, idenWindow, detGain, idenGain, k_s)
            obj.missionLen = missionLen;
            obj.filters = {};
            obj.numFilters = 0;
            obj.phi_nominal = phi_nominal;
            obj.rho = rho;
            obj.K_E = K_E;
            obj.prop_diam = prop_diam;
            
            obj.start_index = start_index;
            
            
            
            
            obj.PI =  [1-3e-1 1e-1 1e-1 1e-1 ;...  
                        0.001 0.997 0.001 0.001 ;...
                        0.2 0.1 0.6 0.1 ;...
                        0.2 0.1 0.1 0.6 ];
                    
            obj.updateRate = updateRate;
            obj.updateTime = 0;
            
            obj.modeFilters = {[], [], [], [], [], [], [], []}; %Overview of filters bellonging to mode
            
            
            
            obj.systemState = FilterType.detection;
            obj.h_0_idx = 1; %null hypothesis This index also needs to be tackled at some point
            obj.h_1_idx = 2;
            obj.transition = [start_index];
            
            
            obj.priorHyp = obj.h_0_idx;
            
            
            %Detection State
            obj.detHyp = obj.h_0_idx*ones(1,missionLen);
            obj.detectionWindow = detectionWindow;
            obj.detProb = {};
            obj.detGain = detGain;
            
            %iden
            obj.idenWindow = idenWindow;
            obj.idenFilters = [];  %Filters used for iden
            obj.idenHyp = NaN(1,missionLen);
            % Scale the states with states at 0.5, 1 and 1.5 times the original state
            obj.idenScales = [0.5, 1, 1.5]; %[0.2, 0.4, 0.6, 0.8, 1, 1.2, 1.4, 1.6, 1.8, 2];
            num = length(obj.idenScales);
            obj.idenInterDist = (1/num).*ones(num,1);
            
            obj.idenGain = idenGain;
            
            obj.idenProb = {};
            
            obj.activeModes = [];
            
            obj.k_s = k_s;
            
            
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
                  label = strcat('Eig-sq: Q=', num2str(Q(1,1)), ', R=', num2str(R));
                  phiTilde_1 = T * phi_1_nom';
                  H = @(v_a, omega) -[h_3(v_a, omega, 0, T, [1, 0, 0]', 0, 0), h_3(v_a, omega, 0, T, [0, 1, 0]', 0, 0)];
                  innovation = @(v_a,  omega, I_e, phiTilde_1_12) h_3(v_a, omega, I_e, T, [phiTilde_1_12; phiTilde_1(3)], phi_2_nom, phi_3_nom);
                  state_dim = 2;
                otherwise
                  error('Error occurred: No fault state correspond to: %d', mode);
            end
            
            obj.numFilters = obj.numFilters + 1;
            id = obj.numFilters;
            
            
            %Make matrices for storing states during execution
            nu = NaN(inn_dim, obj.missionLen);         
            if mode > 1
            	S = NaN([inn_dim, inn_dim, obj.missionLen+1]);
            	P = NaN([state_dim, state_dim, obj.missionLen+1]);
            	x = NaN(state_dim, obj.missionLen); %Might not work in nominal case.
            	x(:,currentTime) = init_state'; %This whole thing is untested! Make damn good sure it works. Test it on something simple first
            	P(:,:,currentTime) = P_0;
            	obj.filters{id} = struct('id', id, 'label', label, 'mode', mode, 'type', filterType, 'x', x, 'innovation', innovation, 'H', H, 'P', P, 'Q', Q, 'R', R, 'nu', nu, 'S', S, 'I', eye(state_dim), 'state_dim', state_dim);
            else
                obj.filters{id} = struct('id', id, 'label', label, 'mode', mode, 'type', filterType, 'innovation', innovation, 'nu', nu, 'R', R);
            end
            
            %Store the mode and type of the filter.
            if filterType.isDetection && mode ~= obj.h_0_idx
                obj.detFilters(end + 1) = id;
                obj.numDetFilt = length(obj.detFilters);
                obj.detDist = [2/3, (1/3)]; 
            elseif filterType.isIdentification
                obj.idenFilters(end + 1) = id;
                obj.numIdenFilt = length(obj.idenFilters);
                obj.modeFilters{mode}(end + 1) = id;
                %High potential for faulty state in the input
                obj.filters{id}.innovation = @(v_a, omega, I_e) innovation(v_a, omega, I_e, init_state);
            end
            
            %Keep a track over with modes/filter types are in use: You may
            %want to move this into the if above.
            if ~any(obj.activeModes == mode) && mode ~= obj.h_0_idx
                obj.activeModes(end+1) = mode;
                obj.numActiveModes = length(obj.activeModes);
                obj.idenModeDist = (1/(obj.numActiveModes+1)).*ones(obj.numActiveModes+1, 1);
            end
            
            %Make array for storing likelihoods
            if obj.numFilters == 1
                obj.Nu = NaN(1, obj.missionLen); 
                obj.L = NaN(1, obj.missionLen); %Zeros (and not NaN) could be beneficial for the given implementation.
            elseif obj.numFilters > 1
                obj.Nu = [obj.Nu; NaN(1, obj.missionLen)];
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
            obj.Nu(i,k) = nu; %This one is probably better than the one above
            
            obj.filters{i}.S(:,:,k+1) = S;
            
        end
        function updateFilters(obj, v_a, omega, I_e, k)
            
            %Update nominal filter
            obj.Nu(obj.h_0_idx, k) = obj.filters{obj.h_0_idx}.innovation(v_a, omega, I_e);
            for i=1 : obj.numDetFilt
                    filter_idx = obj.detFilters(i);
                    obj.kalmanFilter(filter_idx, v_a, omega, I_e, k);
            end
            % calculate innovations for all identification filters
            for i=1:obj.numIdenFilt
                    filter_idx = obj.idenFilters(i);
                    obj.Nu(filter_idx,k) = obj.filters{filter_idx}.innovation(v_a, omega, I_e); %Improvement: vector valued func
            end
            filters = [1:obj.numFilters];
            obj.L(filters,k) = obj.likelihoods(k, filters, obj.detGain);
            
            % only update detection/identification every updateRate samples
            res = mod(k-obj.transition(end), obj.updateRate);
            if res == 0 && k > 1
                if obj.systemState.isDetection
                    obj.updateDetection(k);
                elseif obj.systemState.isIdentification
                    obj.updateIdentification(k);
                end
            end
        end
        
        %% Probability functions
        function L = likelihoods(obj, k, filters, gain)
            Nu = gain*obj.Nu(filters,k);
            % Covariance for the H0 hyp filter, should be S
            Sigma = obj.filters{1}.R;
            digits(10)
            % TODO: Why use symbolic?
            li = sym((1/(sqrt(2*pi*Sigma)))*exp(-(Nu.^2)/(2*(Sigma^2)))); 
            L = vpa(li);
            
        end
        
        function [Hypothesis_idx, probabilities] = magillFilter(obj, window_len, priorDist, filterModes, k)
            %Window might be longer than recorded history
            % priorDist is for the hypothesis
            % likelihoods are from the KFs, based on innovation and innovation variance
            
            
            L = obj.L(filterModes, k-window_len:k); % abs(obj.Nu(filterModes, k-window:k).^(-1));
            
            probabilities = [priorDist, zeros(length(priorDist), window_len)];
            for i=1:window_len
                % Scale prob by the likelihood-gain, and 
                posterior = L(:,i).* probabilities(:,i);
                W = sum(posterior);
                % if abs(posterior)./W > 1
                %     pause = 0;
                % end
                probabilities(:,i+1) = posterior ./ W;
            end
            [~, Hypothesis_idx] = max(probabilities(:,end));
            
        end
        
        function window = getSafeWindowLength(obj, window, filterModes, k)
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
        

        %% State functions
        % Transition into the new_state (currently detection to identification)
        % TODO: extend feature to also be able to kill spawned filters that are not successfull
        function stateTransition(obj, new_state, k)
            % save that a transition occured
            obj.transition(end+1) = k;
            %Untested: Make sure to have a look!
            %Todo: add in code for other trasitions as well.
            if new_state.isIdentification && obj.systemState ~= new_state 
                obj.systemState = FilterType.identification;
                
                %This logic is kind of flawed.
                % Loop through all the detection filters and spawn new identification filters
                % around their states (according to idenScales)
                for i=1:obj.numDetFilt
                    k_0 = 1; %Change this for more complex solutions!
                    oldFilter = obj.filters{obj.detFilters(i)};
                
                    P = oldFilter.P(:,:,k);
                    mode = oldFilter.mode;
                    state_dim = oldFilter.state_dim;
                
                    init_state = oldFilter.x(:,k_0);
                    current_state = oldFilter.x(:, k);
                    dx = current_state - init_state;
                    staticHyp = dx .* obj.idenScales + init_state;
                
                    for j =1:length(staticHyp)
                        %Important note: the choice of R and P should be
                        %arbitrary. However, this can easy be subjected to
                        %change.
                        obj.addFilter(mode, FilterType.identification, zeros(state_dim), 1, P, staticHyp(:,j), k);
                    end
                end
            end
        end
        
        % update all detection filters
        function updateDetection(obj, k)
            %Set appropraite window size
                window = obj.getSafeWindowLength(obj.detectionWindow, obj.detFilters, k);
                
                obj.detProb{end+1} = {};
                
                %Compare h_0 to hypothesis H_1
                for i=1:obj.numDetFilt
                    curFilters = [obj.h_0_idx, obj.detFilters(i)];
                    [hypothesis_idx, prob] = obj.magillFilter(window, obj.detDist', curFilters, k);
                    obj.detProb{end}{end+1} = struct('id', curFilters, 'prob', prob, 'k_0', k-window, 'k_1', k);
                    % If not H0 and not an identification filter, 
                    if hypothesis_idx ~= obj.h_0_idx && ~obj.systemState.isIdentification 
                        obj.detHyp(k) = obj.h_1_idx;
                        firstDetection = find(obj.detHyp == obj.h_1_idx, 1, 'first');
                        % k_s is the time when AP increase airspeed. Start the identification filters prior to this
                        % The identification
                        if k  >= obj.k_s(2)-100 %500 works for 1 and 2
                            obj.stateTransition(FilterType.identification, k);
                        end
                    end
                end
        end
        
        function updateIdentification(obj, k)
            %Run magill filter on every
            window = obj.getSafeWindowLength(obj.idenWindow, obj.idenFilters, k);
            bestFilters = zeros(1, obj.numActiveModes+1);
            bestFilters(1) = obj.filters{obj.h_0_idx}.id;
            obj.idenProb{end+1} = cell(1,obj.numActiveModes+1);
            for i=1:obj.numActiveModes % skip zero hypothesis
                mode = obj.activeModes(i);
                mode_filters = obj.modeFilters{mode};
                % assume a uniform a priori distribution 
                distribution = (1/length(mode_filters)) * ones(length(mode_filters), 1);
                [best, prob] = obj.magillFilter(window, distribution, mode_filters, k);
                % add the ID Of the best filter
                bestFilters(i+1) = obj.modeFilters{mode}(best);
                obj.idenProb{end}{i} = struct('id', obj.modeFilters{mode}, 'prob', prob, 'k_0', k-window, 'k_1', k);
            end
            
            %Pick the best hypothesis
            [hyp, prob] = obj.magillFilter(window, obj.idenModeDist, bestFilters, k);
            obj.idenHyp(k) = obj.filters{bestFilters(hyp)}.mode;
            obj.idenProb{end}{end} = struct('id', bestFilters, 'prob', prob, 'k_0', k-window, 'k_1', k);
            
        end
        %% Fault detection
        function [hypothesis] = faultDetection(obj, k)
            if obj.systemState.isDetection
                obj.updateDetection(k);
            elseif obj.systemState.isIdentification
                obj.updateIdentification(k)
            end
            
        end
        
        
        
        
        
        %% old and unused Functions
        %{
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
                if hypothesis ~= obj.h_0_idx
                    
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
            elseif hypothesis ~= obj.h_0_idx
                obj.updateTime = obj.updateTime + 1;
                if obj.updateTime >= obj.updateRate
                    obj.updateTime = 0;
                    [bestHypo, hypoProb] = obj.updateFaultFilters();
                    obj.modes(hypothesis) = obj.faultFilters(bestHypo);
                    
                end
            end
            
            obj.priorHyp = hypothesis;
        end
        %}
    end
end

