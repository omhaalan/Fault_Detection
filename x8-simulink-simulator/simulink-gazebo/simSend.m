function simSend(time_s, velocity_ang, velocity_lin, acceleration_lin, orientation, position,airspeed)
    %time_s... time of the simulation in seconds
    %velocity_ang... angular velocity of IMU in rad/s(body coordinates)
    %velocity_lin... linear velocity in m/s (earth north-east-down coordinates)
    %acceleration_lin... linear acceleration of IMU in m/s^2 (body coordinates)
    %orientation... norm quaternion (earth->body)
    %position... in meters (north-east-down)
    
%     assert(size(time_s, 1) == 1, "Assertion failed: time not scalar")
%     assert(size(velocity_ang, 1) == 3, "Assertion failed: angular velocity not 1x3")
%     assert(size(velocity_lin, 1) == 3, "Assertion failed: linear velocity not 1x3")
%     assert(size(acceleration_lin, 1) == 3, "Assertion failed: acceleration not 1x3")
%     assert(size(orientation, 1) == 4, "Assertion failed: Orientation quaterion not 1x4")
%     assert(size(position, 1) == 3, "Assertion failed: position not 1x3")
    persistent sim_out
    if isempty(sim_out)
     sim_out = evalin('base','sim_out');    
    end
    buf = py.struct.pack('<18d', ...
        time_s, ...
        velocity_ang(1), velocity_ang(2), velocity_ang(3), ...
        acceleration_lin(1), acceleration_lin(2), acceleration_lin(3), ...
        orientation(1), orientation(2), orientation(3), orientation(4), ...
        velocity_lin(1), velocity_lin(2), velocity_lin(3), ...
        position(1), position(2), position(3), ...
        airspeed);
    sim_out.send(buf);
end