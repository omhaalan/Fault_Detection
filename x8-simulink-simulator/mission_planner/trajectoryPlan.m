sig1 = 0.5*sin(1.2*[0:0.01:timeSpan]) + 0.5*sin(8*[0:0.01:timeSpan]);
[dim, lev, Sv, U] = PEanalysis(sig1, sig1)



[~, samplesNum] = size(sig1); 
Nsamps = samplesNum;
Nfft = samplesNum; %200000;
fsamp = 100;

[Pxx,f] = pwelch(sig1,gausswin(Nfft),Nfft/2,Nfft,fsamp);

plot(f(:),Pxx(:));


% phi = [pi/4, pi/6, pi/12];
% 
% h = 500;
% hx = h * cos(phi(2));
% hy = -h * sin(phi(2));
% 
% delta_x = 100;
% 
% x = [0, delta_x, hx + delta_x, hx + 2*delta_x, 2*hx + 2*delta_x]+50;
% z = [0, 0, hy, hy, 0] + 50;
% 
% h0 = 5.84;
% lat0 = -35.363262;
% lng0 = 149.165238;
% wgs84 = wgs84Ellipsoid;
% 
% cords = zeros(3,5);
% 
% for i=1:5
%     cords[:,i] = ned2geodic(x(i), 0, z(i), lat0, lng0, h0, wgs84);
% end
% 
