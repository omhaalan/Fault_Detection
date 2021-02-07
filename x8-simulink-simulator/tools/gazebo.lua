--[[
--
-- Copy this file to your local Wirshark lua folder: 
-- WINDOWS: %APPDATA%\Wireshark\plugins
-- Linux (probably MacOS?):  ~/.local/lib/wireshark/plugins
-- See: https://www.wireshark.org/docs/wsug_html_chunked/ChPluginFolders.html
--
--
-- This is a minimal wireshark dissector for the Adrupilot-Simulink communication
-- on localhost. Simulink sends the current state, ardupilot a virtual RC connection
--
-- A nice-to-have would be a better-to-read output using the "Info" field in 
-- Wireshark. This requires casting the data to an integer/string, which I
-- so far was unable to do -- but this is a low priority task, so I 
-- didn't spend much time on that. 
--
-- Adrian Winter (adriawi@stud.ntnu.no adrian_winter@web.de) June 2019
--
--]]

gaztoard_proto = Proto("ArdtoMat", "Ardupilot to Matlab Interface Protocol")

df01 = ProtoField.float("gazebo.Servo01", "Servo01", base.DEC)
df02 = ProtoField.float("gazebo.Servo02", "Servo02", base.DEC)
df03 = ProtoField.float("gazebo.Servo03", "Servo03", base.DEC)
df04 = ProtoField.float("gazebo.Servo04", "Servo04", base.DEC)
df05 = ProtoField.float("gazebo.Servo05", "Servo05", base.DEC)
df06 = ProtoField.float("gazebo.Servo06", "Servo06", base.DEC)
df07 = ProtoField.float("gazebo.Servo07", "Servo07", base.DEC)
df08 = ProtoField.float("gazebo.Servo08", "Servo08", base.DEC)
df09 = ProtoField.float("gazebo.Servo09", "Servo09", base.DEC)
df10 = ProtoField.float("gazebo.Servo10", "Servo10", base.DEC)
df11 = ProtoField.float("gazebo.Servo11", "Servo11", base.DEC)
df12 = ProtoField.float("gazebo.Servo12", "Servo12", base.DEC)
df13 = ProtoField.float("gazebo.Servo13", "Servo13", base.DEC)
df14 = ProtoField.float("gazebo.Servo14", "Servo14", base.DEC)
df15 = ProtoField.float("gazebo.Servo15", "Servo15", base.DEC)
df16 = ProtoField.float("gazebo.Servo16", "Servo16", base.DEC)


gaztoard_proto.fields = { 
    df01,
    df02,
    df03,
    df04,
    df05,
    df06,
    df07,
    df08,
    df09,
    df10,
    df11,
    df12,
    df13,
    df14,
    df15,
    df16
}

function gaztoard_proto.dissector(buffer, pinfo, tree)
    length = buffer:len()
    if length == 0 then return end
    
    pinfo.cols.protocol = gaztoard_proto.name
    
    local data = {}
    local subtree = tree:add(gaztoard_proto, buffer(), "Gazebo Communication")
    for i = 1, 16, 1 do
        data[i] =  buffer(4 * (i-1) ,4)
        subtree:add_le(gaztoard_proto.fields[i], data[i])
    end
    --pinfo.cols.info = string.format("Aileron: %.4f -- Elevator: %.4f -- Thrust: %.4f -- Rudder: %.4f", tonumber(data[1]), tonumber(data[2]), tonumber(data[3]), tonumber(data[4]))
end                             

local udp_port = DissectorTable.get("udp.port")
udp_port:add(9002, gaztoard_proto)
 -- udp_port:add(9003, gaztoard_proto)
 
 
 
 mattogaz_proto = Proto("MATtoArd", "Matlab to Ardupilot Interface Protocol")
 
 time          = ProtoField.double("matlab.time", "Time", base.DEC)
 v_ang_1       = ProtoField.double("gazebo.v_ang_1", "Angular Velocity (Body Fixed) p", base.DEC)
 v_ang_2       = ProtoField.double("gazebo.v_ang_2", "Angular Velocity (Body Fixed) q", base.DEC)
 v_ang_3       = ProtoField.double("gazebo.v_ang_3", "Angular Velocity (Body Fixed) r", base.DEC)
 acc_lin_1     = ProtoField.double("gazebo.acc_lin_1", "Linear Acceleration (Body Fixed) x", base.DEC)
 acc_lin_2     = ProtoField.double("gazebo.acc_lin_2", "Linear Acceleration (Body Fixed) y", base.DEC)
 acc_lin_3     = ProtoField.double("gazebo.acc_lin_3", "Linear Acceleration (Body Fixed) z", base.DEC)
 orientation_1 = ProtoField.double("gazebo.orientation_1", "Orientation 1 (real)", base.DEC)
 orientation_2 = ProtoField.double("gazebo.orientation_2", "Orientation 2 (img1)", base.DEC)
 orientation_3 = ProtoField.double("gazebo.orientation_3", "Orientation 3 (img2)", base.DEC)
 orientation_4 = ProtoField.double("gazebo.orientation_4", "Orientation 4 (img3)", base.DEC)
 vel_lin_1     = ProtoField.double("gazebo.vel_lin_1", "Linear Velocity (Earth Fixed) Northward", base.DEC)
 vel_lin_2     = ProtoField.double("gazebo.vel_lin_2", "Linear Velocity (Earth Fixed) Eastward", base.DEC)
 vel_lin_3     = ProtoField.double("gazebo.vel_lin_3", "Linear Velocity (Earth Fixed) Downward", base.DEC)
 pos_1         = ProtoField.double("gazebo.pos_1", "Position (Earth fixed) North", base.DEC)
 pos_2         = ProtoField.double("gazebo.pos_2", "Position (Earth fixed) East", base.DEC)
 pos_3         = ProtoField.double("gazebo.pos_3", "Position (Earth fixed) Down", base.DEC)

 
 mattogaz_proto.fields = { 
     time         ,
     v_ang_1      ,
     v_ang_2      ,
     v_ang_3      ,
     acc_lin_1    ,
     acc_lin_2    ,
     acc_lin_3    ,
     orientation_1,
     orientation_2,
     orientation_3,
     orientation_4,
     vel_lin_1    ,
     vel_lin_2    ,
     vel_lin_3    ,
     pos_1        ,
     pos_2        ,
     pos_3           
 }
 
 function mattogaz_proto.dissector(buffer, pinfo, tree)
     local length_double = 8
     length = buffer:len()
     if length == 0 then return end
     
     pinfo.cols.protocol = mattogaz_proto.name
     
     local subtree = tree:add(mattogaz_proto, buffer(), "Gazebo Communication")
     for i = 1, 17, 1 do
         subtree:add_le(mattogaz_proto.fields[i], buffer(length_double * (i-1) , length_double))
     end
 end                             
 
 local udp_port = DissectorTable.get("udp.port")
 udp_port:add(9003, mattogaz_proto)
