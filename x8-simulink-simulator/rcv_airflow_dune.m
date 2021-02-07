function [Va,AoA,SSA] = rcv_airflow_dune(terminate)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
persistent imc airflow


% imc.waitfor
%  imc.stop();
% airflow_n = imc.state('ntnu-x8-008').get('Airflow');
if terminate == 1 && ~isempty(imc)
    imc.stop();
    Va =0;
    AoA =0;
    SSA = 0;
    clearvars imc
else
    if isempty(imc)
        javaaddpath('/Users/andreaswenz/imcjava/dist/libimc.jar')
        import pt.lsts.imc.*
        import pt.lsts.imc.net.*
        imc = StaticIMCConnection('192.168.2.3', 6002, 6006);
        % imc = IMCProtocol();
        
        %     evalin('base','imc = IMCProtocol()');
        %     imc = evalin('base','imc');
    end
    airflow_n = imc.poll('Airflow');
    % imc.start();
    % AoA = imc.state('ntnu-x8-008').get('Airflow').getAoa();
    % SSA = imc.state('ntnu-x8-008').get('Airflow').getSsa();
    %
    %
    % conn = evalin('base','conn');
    % airflow_n=conn.recv('Airflow',Ts);
    if ~isempty(airflow_n)
        airflow = airflow_n;
    end
    if ~isempty(airflow)
        Va = airflow.getVa;
        AoA = airflow.getAoa;
        SSA = airflow.getSsa;
    else
        Va =0;
        AoA =0;
        SSA = 0;
    end
end
end

