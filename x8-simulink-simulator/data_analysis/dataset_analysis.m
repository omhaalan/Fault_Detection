%%% This file must be exectude from within the main file. This might be
%%% subject to change in the future. 

%% Quick test singular values  

W = zeros(simLen, 3);
for i=1:simLen
    W(i, :) = [filterBank.filters{1}.H(v_a(i), omega(i))];
end
[U, S, VT] = svd(W, 'econ');

V = VT'
L = S^2;
W_o = V * L * VT;

V * L;
W_o * V;

V' * inv(W_o) * V;

L_i = diag(diag(L .^ (-1)));

%Identity is given by

(V * L)' * inv(W_o) * (V);
W_i = inv(W_o);

dir = [C_0_true(end)- C_D_0_W_REF, C_1_true(end)-C_D_J_W_REF, C_2_true(end)-C_D_J_2_W_REF];
dir_o = [-dir(2) - dir(3), dir(1), dir(1)];
sp = 0;


figure(100)
for i=1:2
    if i == 1
        n = 2;
    else
        n = 3;
    end
    for j=n:3
        sp = sp +1;
        subplot(4, 1, sp)
        
        R = chol([W_i(i,i), W_i(i,j) ; W_i(j,i), W_i(j,j)]);
        t = linspace(0, 2*pi, 100); % or any high number to make curve smooth
        z = [cos(t); sin(t)];
        ellipse = inv(R) * z;
        plot(ellipse(1,:), ellipse(2,:))
        hold on
        
        vec = [dir(i); dir(j)];
        scale = 1000 / norm(vec);
        plotv(scale * vec)
        tit = strcat('Plane: x_', num2str(i), ', x_', num2str(j));
        title(tit)
    end

end

T = ([dir/ norm(dir); dir_o/ norm(dir_o)])

R = chol(T * W_i * T');
t = linspace(0, 2*pi, 100); % or any high number to make curve smooth
z = [cos(t); sin(t)];
ellipse = inv(R) * z;

sp=sp+1;
subplot(4, 1, sp)
plot(ellipse(1,:), ellipse(2,:))
hold on        
vec = T * dir';
scale = 1000 / norm(vec);
plotv(scale * vec)
title("Ellipse cut along vector")

%% Bias and noise skew
if simulated == 1
    filter = kalmanFilters([C_0_true(end), C_1_true(end), C_2_true(end), c_v, I_0],  rho, K_E, prop_diam, updateRate);
    filter.addFilter(0, 0, 0, 0);

    inn = zeros(1, transitions(1));
    inn_noise = zeros(1, transitions(1));
    for i=1:transitions(1)
        inn_noise(i) = filter.filters{1}.innovation(v_a_noisy(i), omega_noisy(i), I_e_noisy(i), 0);
        inn(i) = filter.filters{1}.innovation(v_a(i), omega(i), I_e(i), 0);
    end
    mean_innovation = mean(inn)
    mean_noise = mean(inn_noise)
end

