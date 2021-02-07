% path_manager_fillet
%   - follow lines between waypoints.  Smooth transition with fillets
%
% Modified:  
%   - 4/1/2010 - RWB
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
function out = path_manager_fillet(states,waypoints,P,start_of_simulation)

  NN = 0;
  num_waypoints = length(waypoints);
%   waypoints = reshape(in(2+NN:5*P.size_waypoint_array+1+NN),5,P.size_waypoint_array);
%   NN = NN + 1 + 5*P.size_waypoint_array;
  pn        = states(1+NN);
  pe        = states(2+NN);
  h         = - states(3+NN);
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
  % wn      = in(14+NN);
  % we      = in(15+NN);
  % psi     = in(16+NN);
  state     =  states(1+NN:16+NN);
  NN = NN + 16;
%   t         = in(1+NN);
 
  p = [pn; pe; -h];


  persistent waypoints_old   % stored copy of old waypoints
  persistent ptr_a           % waypoint pointer
  persistent state_transition % state of transition state machine
  persistent flag_need_new_waypoints % flag that request new waypoints from path planner
  
  
  if start_of_simulation || isempty(waypoints_old),
      waypoints_old = zeros(5,num_waypoints);
      flag_need_new_waypoints = 0;
      ptr_a = 1;
      state_transition = 1;
  end
  
  % if the waypoints have changed, update the waypoint pointer
  if min(min(waypoints==waypoints_old))==0,
      ptr_a = 1;
      waypoints_old = waypoints;
      state_transition = 1;
      flag_need_new_waypoints = 0;
  end
  
  % define current and next two waypoints
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
  % define transition state machine
  q	= wpp_b-wpp_a;
  q      = q/norm(q);
  q_next = wpp_c-wpp_b;
  q_next = q_next/norm(q_next);
  if abs(-q'*q_next)>=1
      state_transition = 1;
  end
  if state_transition ==2 % follow orbit from wpp_a-wpp_b to wpp_b-wpp_c
      flag   = 2;  % following orbit
          Va_d   = waypoints(5,ptr_a); % desired airspeed along waypoint path
          r      = [0;0;0];
          q      = wpp_b-wpp_a;
          q      = q/norm(q);
          q_next = wpp_c-wpp_b;
          q_next = q_next/norm(q_next);
          beta = acos(-q'*q_next);
          
          c      = wpp_b - P.R_min/sin(beta/2)*(q-q_next)/norm(q-q_next);
          rho    = P.R_min;
          lambda = sign(q(1)*q_next(2)-q(2)*q_next(1));
          
          z = wpp_b + P.R_min/tan(beta/2)*q_next;
          if (p-z)'*q_next >= 0, % entering H2
              state_transition = 1;
              
              % increase the waypoint pointer
              if ptr_a==num_waypoints,
                  ptr_a = 1;
              else
                  ptr_a = ptr_a+1;
              end
          end
  else
  % follow straight line from wpp_a to wpp_b
          flag   = 1;  % following straight line path
          Va_d   = waypoints(5,ptr_a); % desired airspeed along waypoint path
          r      = wpp_a;
          q      = wpp_b-wpp_a;
          q      = q/norm(q);
          c      = [0; 0; 0];
          rho    = 0;
          lambda = 0;
          
          q_next = wpp_c-wpp_b;
          q_next = q_next/norm(q_next);
          if -q'*q_next>1
              beta = acos(1);
          elseif -q'*q_next<-1
              beta = acos(-1);
          else
            beta = acos(-q'*q_next);
          end
          if ptr_a<num_waypoints-1
          	  z = wpp_b - P.R_min/tan(beta/2)*q;
              if (p-z)'*q >= 0,% entering H1
                  state_transition = 2;
              end
          else
              z = wpp_b;
              if (p-z)'*q >= 0,% reached the waypoint
                  flag_need_new_waypoints=1;
              end
          end

  end
  
  out = [flag; Va_d; r; q; c; rho; lambda; state];
  

end