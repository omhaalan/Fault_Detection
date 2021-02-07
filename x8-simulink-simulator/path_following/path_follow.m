% path follow
%  - follow straight line path or orbit
%
% Modified:
%   3/25/2010  - RB
%   6/5/2010   - RB
%   11/08/2010 - RB
%
% input is:
%   flag - if flag==1, follow waypoint path
%          if flag==2, follow orbit
%
%   Va^d   - desired airspeed
%   r      - inertial position of start of waypoint path
%   q      - unit vector that defines inertial direction of waypoint path
%   c      - center of orbit
%   rho    - radius of orbit
%   lambda - direction of orbit (+1 for CW, -1 for CCW)
%   xhat   - estimated MAV states (pn, pe, pd, Va, alpha, beta, phi, theta, chi, p, q, r, Vg, wn, we, psi)
%
% output is:
%  Va_c - airspeed command
%  h_c  - altitude command
%  chi_c - heading command
%
function out = path_follow(in,v_w,P)
NN = 0;
flag      = in(1+NN);
Va_d      = in(2+NN);
r_path    = [in(3+NN); in(4+NN); in(5+NN)];
q_path    = [in(6+NN); in(7+NN); in(8+NN)];
c_orbit   = [in(9+NN); in(10+NN); in(11+NN)];
rho_orbit = in(12+NN);
lam_orbit = in(13+NN);
NN = NN + 13;
pn        = in(1+NN);
pe        = in(2+NN);
h         = - in(3+NN);
Va        = in(4+NN);
alpha   = in(5+NN);
beta    = in(6+NN);
phi       = in(7+NN);
theta     = in(8+NN);
chi       = in(9+NN);
% p       = in(10+NN);
% q       = in(11+NN);
r       = in(12+NN);
u          = in(13+NN);
v      = in(14+NN);
w      = in(15+NN);
psi     = in(16+NN);
w_b     = in(17+NN:19+NN);
w_ned   = Rzyx(phi,theta,psi)*w_b;
w_n     = w_ned(1);
w_e     = w_ned(2);
w_d     = w_ned(3);
Vw = sqrt(w_n^2+w_e^2);
chi_w = atan2(w_e,w_n);
NN = NN + 18;
%t         = in(1+NN);
chi_p = in(end-1);
chi_q = in(end);

Vg = sqrt(u^2+v^2);
if flag ==2
    % follow orbit specified by c, rho, lam
    k_orbit   = 0.5;       % proportional gain for orbit following
    ki_orbit  = 0.001;       % integral gain for orbit following
    
    d = sqrt((pn-c_orbit(1))^2+(pe-c_orbit(2))^2); % distance from orbit center
    % compute wrapped version of angular position on orbit
    varphi = atan2(pe-c_orbit(2),pn-c_orbit(1));
    while (varphi - chi < -pi), varphi = varphi + 2*pi; end
    while (varphi - chi > +pi), varphi = varphi - 2*pi; end
    % compute orbit error
    orbit_error = d-rho_orbit;
    % heading command
    chi_c = varphi + lam_orbit*(pi/2 + atan(k_orbit*orbit_error));
    
    % commanded altitude is the height of the orbit
    h_d = -c_orbit(3);
    % commanded altitude is desired altitude plus integral error
    h_c = h_d;
    path_error = orbit_error;
    L1 = sqrt((pn-r_path(1)).^2 + (pe-r_path(2)).^2);
    eta = asin((r_path(1)-pn)/L1)-chi+psi;
    a_s_c = 2*Vg^2/L1*sin(eta);
else % follow straight line path specified by r and q
    chi_infty = 90*pi/180;  % approach angle for large distance from straight-line path
      % proportional gain for path following
%     lht = 1;
    lhd = 12;
    k_path    = 1/lhd;     
    % compute wrapped version of path angle
%     chi_q = atan2(q_path(2),q_path(1));
    %           chi_q = chi_p;
    while (chi_q - chi < -pi), chi_q = chi_q + 2*pi; end
    while (chi_q - chi > +pi), chi_q = chi_q - 2*pi; end
    
    path_error = -sin(chi_q)*(pn-r_path(1))+cos(chi_q)*(pe-r_path(2));
    % heading command
    chi_c = chi_p - chi_infty*2/pi*atan(k_path*path_error);
    
    crab = chi-psi;
%     crab =   asin((Vw/(Va*cos(theta-alpha))*sin(chi_w-chi_p)));
    while (crab < -pi), crab = crab + 2*pi; end
    while (crab > +pi), crab = crab - 2*pi; end
    
%     chi_c = chi_p + atan(-1/lhd*path_error-(crab));
%     chi_c = wrapToPi(chi_c);
%     while (chi_c - chi_w < -pi), chi_c = chi_c + 2*pi; end
%     while (chi_c - chi_w > +pi), chi_c = chi_c - 2*pi; end
    
%     if (Vw/(Va*cos(theta-alpha))*sin(chi_w-chi_c))>=1
%         chi_c = -asin(1) + chi_c -beta;
%     elseif (Vw/(Va*cos(theta-alpha))*sin(chi_w-chi_c))<=-1
%         chi_c = -asin(-1) + chi_c -beta;
%     else
%         psi_c = -asin((Vw/(Va*cos(theta-alpha))*sin(chi_w-chi_c))) + chi_c -beta;
%     end
    
    
    % desired altitude
    h_d = -r_path(3)-sqrt((r_path(1)-pn)^2+(r_path(2)-pe)^2)*(q_path(3))/sqrt(q_path(1)^2+q_path(2)^2);
    % commanded altitude is desired altitude plus integral error
    h_c = h_d;
    %
    %           L1 = sqrt((pn-r_path(1)).^2 + (pe-r_path(2)).^2);
    %           eta = asin((pn-r_path(1))/L1)-chi+psi;
    %           a_s_c = 2*Vg^2/L1*sin(eta);
end

% command airspeed equal to desired airspeed
Va_c = Va_d;

% create output
out = [Va_c; h_c; chi_c ;path_error];
end


