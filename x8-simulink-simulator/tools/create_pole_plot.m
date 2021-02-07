

% %% Create colormap: 
% rl = -4:0.05:2; 
% ig = -3:0.05:3; 
% clear vals; 
% vals = []; 
% for r = 1:length(rl)
%     for i = 1:length(ig)
%         vals(r, i) = 4 * calculateQualityIndex(rl(r) + ig(i) * 1i); 
%     end
% end
% 
% surf(rl, ig, vals', 'EdgeColor', 'none')
% 
% % Export colormap to pgfplots-compatible vector: 
% Xre = repmat(rl, 1, length(ig))' ; 
% Yim = reshape(repmat(ig, length(rl), 1), 1, [])'; 
% col = reshape(vals, 1, [])' ; 
% 
% pgfplotsindexout = [Xre, Yim, col]; 

%% Create longitudinal plot: 

clear color
icing = 0:0.25:1; 
aoa = 1:0.5:20; 
aos = 0:0.25:10; 
n1 = length(aoa); 
n2 = length(icing);
n3 = length(aos); 

all = zeros(n1, 8); 

for a = 1:n1 
    for ice = 1:length(icing)
        fprintf('Calculating system %d of %d\n', (a-1)*n2 + ice, n1 * n2); 
        try
            [~, A, ~, ~, ~] = calc_sys_long(aoa(a), icing(ice));
            V = eig(A);
            re = real(V);
            im = imag(V);
            all(a, :) = [re', im']; 
            color(a, ice) = calculateQualityIndex(V); 
        catch ME
            fprintf("Caught exception, setting color to NAN, Identifier: %s\n", ME.identifier)
            color(a, ice) = NaN; 
        end
    end
end

figure; 
surf(icing, aoa, color); 

% Create PGFPlots-compatible output for longitudinal stability: 
Xre = repmat(aoa, 1, length(icing))' ; 
Yim = reshape(repmat(icing, length(aoa), 1), 1, [])'; 
col = reshape(color, 1, [])' ; 

pgfplotsindexout_long = [Xre, Yim, col]; 
fprintf("\n\nPlease insert empty lines with sed -e 's/%f/\\n%f/'\n\n", aoa(1), aoa(1))

figure; 
scatter3(Xre, Yim, col); 

return 



for a = 1:length(aos) 
    for ice = 1:length(icing)
        fprintf('Calculating system %d of %d\n', (a-1)*n2 + ice, n3 * n2); 
        try
            A = calc_sys_lat(aos(a), icing(ice));
            V = eig(A);
            re = real(V);
            im = imag(V);
            all(a, :) = [re, im]; 
            color(a, ice) = calculateQualityIndex(V); 
        catch 
            color(a, ice) = NaN; 
        end
    end
end
figure; 
surf(icing, aos, color); 

 
figure; 
for i = 1:4 
    plot(all(:, i), all(:,i + 4) , 'x-');
end

function I = calculateQualityIndex(EV) 
    I = 0; 
   
    % handle stable and indifferent/instable poles differently: 
    
    % stable poles: 
    s = EV(real(EV) < 0); 
    if ~isempty(s)
        I = sum(atan2(imag(s), -real(s)).^2); 
    end
    
    % instable poles: 
    is = EV(real(EV) >= 0); 
    % acceptable if value is small, but it's not great: 
    tmp = is(abs(is) < 0.25);  
    if ~isempty(tmp)
        I = I + 1 * length(tmp);  
    end
    
    tmp = is(abs(is) >= 0.25); 
    if ~isempty(tmp)
        I = I + 4 * length(tmp); 
    end
    
end