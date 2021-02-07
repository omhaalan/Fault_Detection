function [dim, level, Sva, U] = PEanalysis(omega,Va)
%This function is super incomplete

H = [omega.^2, (2*pi)*omega.*Va, (2*pi)*Va.^2];

%%% TODO: Determine powOmega %%% NOTE: I can do that right now to be
%%% honest. 

%%%% This should probably be used at some point later. %%%
%powOmega = snr(omega);
%powVa = snr(Va_in);
%H_noise = [wgn(1, stop-start, powOmega^2); wgn(1, stop-start, powOmg*powVa); wgn(1, stop-start, powVa^2)]

[u, S, v] = svd(H, 'econ');

% [~ S_noise ~] = svd(H_noise);
% S_bool = diag(S) > S_noise(1,1);
% dim = find(S_bool, 1, 'last');

dim = S;
level = 0

hankVa = hankel(Va(1:3), Va(3:end));
[U, Sva, ~] = svd(hankVa, 'econ');
end


