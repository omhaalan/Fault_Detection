function [] = send_airflow_dune(Va,AoA,SSA,wind_n,terminate)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
persistent imc airflow est_flow
if terminate == 1 && ~isempty(imc)
    imc.stop();
    clearvars imc airflow
    
else
    if isempty(imc)
        javaaddpath('/Users/andreaswenz/imcjava/dist/libimc.jar')
        import pt.lsts.imc.*
        import pt.lsts.imc.net.*
%         imc = StaticIMCConnection('127.0.0.1', 6002, 6006);
        imc = IMCProtocol('Matlab',6013);
%         airflow =IMCMessage('Airflow');
        airflow = Airflow();
        est_flow = EstimatedStreamVelocity();
        %     imc.systems();
    end
    %     airflow.setValue('Aoa',AoA);
    %     airflow.setValue('Ssa',SSA);
    %     airflow.setValue('Va',Va);
    airflow.setAoa(AoA);
    airflow.setSsa(SSA);
    airflow.setVa(Va);
    imc.sendMessage('ccu-andreaswenz-35-72',airflow);
    
    est_flow.setX(wind_n(1));
    est_flow.setY(wind_n(2));
    est_flow.setZ(wind_n(3));
    
    imc.sendMessage('ccu-andreaswenz-35-72',est_flow);
end
% conn = evalin('base','conn');
% conn.send(airflow);
end

