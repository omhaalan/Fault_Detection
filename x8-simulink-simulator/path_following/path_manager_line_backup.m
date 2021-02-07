% path_manager_line
%   - follow lines between waypoints.
%
% Modified:
%   - 3/25/2010 - RWB
%
% input is:
%   num_waypoints - number of waypoint configurations
%   waypoints    - an array of dimension 5 by P.size_waypoint_array.
%                - the first num_waypoints rows define waypoint
%                  configurations
%                - format for each waypoint configuration:
%                  [wn, we, wd, dont_care, Va_d]
%                  where the (wn, we, wd) is the NED position of the
%                  waypoint, and Va_d is the desired airspeed along the
%                  path.
%
% output is:
%   flag - if flag==1, follow waypoint path
%          if flag==2, follow orbit
%
%   Va^d - desired airspeed
%   r    - inertial position of start of waypoint path
%   q    - unit vector that defines inertial direction of waypoint path
%   c    - center of orbit
%   rho  - radius of orbit
%   lambda = direction of orbit (+1 for CW, -1 for CCW)
%
function [out,end_path] = path_manager_line(states,waypoints,P,start_of_simulation)

NN = 0;
num_waypoints = length(waypoints);
%   waypoints = reshape(in(2+NN:5*P.size_waypoint_array+1+NN),5,P.size_waypoint_array);
%   NN = NN + 1 + 5*P.size_waypoint_array;
pn        = states(1+NN);
pe        = states(2+NN);
pd         = states(3+NN);
% Va      = in(4+NN);
% alpha   = in(5+NN);
% beta    = in(6+NN);
% phi     = in(7+NN);
% theta   = in(8+NN);
% chi     = in(9+NN);
% p       = in(10+NN);
% q       = in(11+NN);
% r       = in(12+NN);
% Vg      = in(13+NN);
u      = states(13+NN);
v      = states(14+NN);
w      = states(15+NN);
Vg = sqrt(u^2+v^2+w^2);
% state     =  states(1+NN:16+NN);
NN = NN + 18;
%   t         = in(1+NN);


p = [pn; pe; pd];

persistent waypoints_old   % stored copy of old waypoints
persistent ptr_a           % waypoint pointer
persistent flag_need_new_waypoints % flag that request new waypoints from path planner


if start_of_simulation || isempty(waypoints_old),
    waypoints_old = zeros(5,num_waypoints);
    flag_need_new_waypoints = 0;
    
end

% if the waypoints have changed, update the waypoint pointer
if min(min(waypoints==waypoints_old))==0,
    ptr_a = 1;
    waypoints_old = waypoints;
    flag_need_new_waypoints = 0;
end

% define the current and next two waypoints

% find unit vector along current waypoint
if ptr_a==num_waypoints,
    ptr_b = 1;
    ptr_c = 2;
elseif ptr_a==num_waypoints-1,
    ptr_b = num_waypoints;
    ptr_c = 1;
else
    ptr_b = ptr_a+1;
    ptr_c = ptr_b+1;
end
wpp_a = waypoints(1:3,ptr_a);
wpp_b = waypoints(1:3,ptr_b);
wpp_c = waypoints(1:3,ptr_c);
while all(wpp_a == wpp_b)
    ptr_b = ptr_b +1;
    if ptr_b>num_waypoints
        flag_need_new_waypoints = 1;
        ptr_b = 1;
        ptr_c = 2;
    end
    wpp_b = waypoints(1:3,ptr_b);
    
end

while all(wpp_c == wpp_b)
    ptr_c = ptr_c +1;
    if ptr_c>num_waypoints
        ptr_c = 1;
    end
    wpp_c = waypoints(1:3,ptr_c);
end

% construct output for path follower
flag   = 1;                  % following straight line path
Va_d   = waypoints(5,ptr_a); % desired airspeed along waypoint path
chi_p  = waypoints(4,ptr_b);


% course angle predicition
lhd = Vg;
ptr_course = ptr_b;
wpp_course = waypoints(1:3,ptr_course);
while norm(p(1:2)-wpp_course(1:2))<lhd && ptr_course < num_waypoints
    ptr_course = ptr_course +1;
    wpp_course = waypoints(1:3,ptr_course);
end
chi_p  = waypoints(4,ptr_course);


r      = wpp_a;
q      = wpp_b-wpp_a;
q      = q/norm(q);
c      = [0; 0; 0];
rho    = 0;
lambda = 0;
chi_q = waypoints(4,ptr_b);

% determin if next waypoint path has been reached.
q_next   = wpp_c - wpp_b;
q_next   = q_next/norm(q_next);
n = (q+q_next)/2;
n = n/norm(n);
if (p-wpp_b)'*n >= 0 ,  % entered into the half plane separating waypoint segments
% if norm(p-wpp_a)>norm(p-wpp_c)
    % update the waypoint pointer
    if ptr_b==num_waypoints,
        flag_need_new_waypoints = 1;
    else
        ptr_a = ptr_b;
    end
end

out = [flag; Va_d; r; q; c; rho; lambda; states;chi_p;chi_q];
end_path = flag_need_new_waypoints;
end