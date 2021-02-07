close all
clear all
addpath(genpath('matlab2tikz'))
path = '/Users/andreaswenz/Documents/MATLAB/x8-simulink-simulator_MHE/Figures_ICUAS2017';
path_tikz = '/Users/andreaswenz/Documents/Thesis/Chapters/MSC_2016/images/';
save_flag = 0;
save_tikz = 1;
inputs{1,1}=load('inputs_noice');
states{1,1}=load('sim_states_noice');
airdata{1,1}=load('sim_airdata_noice');
load('results_icing/results_noice.mat');
res{1,1}= results{1,1};
inputs{2,1}=load('inputs_no_alt.mat');
states{2,1}=load('sim_states_noice_no_alt.mat');
airdata{2,1}=load('sim_airdata_noice_no_alt.mat');
load('results_icing/results_noice_no_alt.mat');
res{2,1}= results{1,1};
load('results_icing/results_noice_noreset.mat');
res{3,1}= results{1,1};
% inputs{1,2}=load('sim_inputs');
states{1,2}=load('sim_states');
airdata{1,2}=load('sim_airdata');
load('results_icing/results_ice.mat');
res{1,2}= results{1,1};
states{2,2}=load('sim_states_no_alt.mat');
airdata{2,2}=load('sim_airdata_no_alt.mat');
load('results_icing/results_ice_no_alt.mat');
res{2,2}= results{1,1};
load('results_icing/results_ice_noreset.mat');
res{3,2}= results{1,1};
load('results_icing/results_ice_no_alt_cov_reset.mat');
res{4,2}= results{1,1};
load('results_icing/results_ice_30s_reset.mat');
res{5,2}= results{1,1};
lift_ref;
%%

figure(1)
hold on
plot(inputs{1,1}.sim_inputs.Time,inputs{1,1}.sim_inputs.Data(:,4),'b');
plot(states{1,1}.sim_states.Position.p_D.Time,-states{1, 1}.sim_states.Position.p_D.Data,'r');
xlabel('Time in Seconds');
ylabel('Altitude in Meters');
legend('Altitude','Commanded Altitude');
legend('show')
legend('Location','southeast')
if save_flag ==1
    savefig(fullfile(path,'altitude'))
end
if save_tikz ==1
    cleanfigure('targetResolution',300);
    matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'altitude.tikz'));
end

course = inputs{1,1}.sim_inputs.Data(:,5);
course = wrapToPi(course);

figure(2)
hold on
plot(inputs{1,1}.sim_inputs.Time,course*180/pi,'b');
plot(airdata{1,1}.sim_airdata.Course_angle.Time,airdata{1,1}.sim_airdata.Course_angle.Data*180/pi,'r');
xlabel('Time in Seconds');
ylabel('Course Angle in Degree');
legend('Course Angle','Commanded Course Angle');
legend('show')
legend('Location','southeast')
if save_flag ==1
    savefig(fullfile(path,'course'))
end
if save_tikz ==1
    cleanfigure('targetResolution',300);
    matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'course.tikz'));
end

figure(3)
hold on
ind = res{1,1}.p(:,5)~=0;
h1 = plot(res{2,1}.time(ind),res{2,1}.p(ind,4),'DisplayName','Clean');
% h2 = plot(res{3,1}.time(ind),res{3,1}.p(ind,4),'DisplayName','Clean Alt');
% h3 = plot(res{1,1}.time(ind),res{1,1}.p(ind,4),'DisplayName','Clean Cov + Alt');
h4 = plot(res{2,2}.time(ind),res{2,2}.p(ind,4),'DisplayName','Icing');
h5 = plot(res{3,2}.time(ind),res{3,2}.p(ind,4),'DisplayName','Icing Alt');
h7 = plot(res{4,2}.time(ind),res{4,2}.p(ind,4),'DisplayName','Icing Cov');
h6 = plot(res{1,2}.time(ind),res{1,2}.p(ind,4),'DisplayName','Icing Cov + Alt');
% h8 = plot(res{5,2}.time(ind),res{5,2}.p(ind,4),'DisplayName','Icing 30s Cov + Alt');
plot([0 res{2,1}.time(end)],[p_ref(1,1),p_ref(1,1)],'DisplayName','Reference Clean')
plot([0 res{2,1}.time(end)],[p_ref(3,1),p_ref(3,1)],'DisplayName','Reference Icing')

xlabel('Time in Seconds');
ylabel('Constant Lift Coefficient');
legend('show')
if save_flag ==1
    savefig(fullfile(path,'c_l_0'))
end
if save_tikz ==1
    cleanfigure('targetResolution',300);
    matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'c_l_0.tikz'));
end

figure(4)
hold on
ind = res{1,1}.p(:,5)~=0;
h1 = plot(res{2,1}.time(ind),res{2,1}.p(ind,5),'DisplayName','Clean');
% h2 = plot(res{3,1}.time(ind),res{3,1}.p(ind,5),'DisplayName','Clean Alt');
% h3 = plot(res{1,1}.time(ind),res{1,1}.p(ind,5),'DisplayName','Clean Cov + Alt');
h4 = plot(res{2,2}.time(ind),res{2,2}.p(ind,5),'DisplayName','Icing');
h5 = plot(res{3,2}.time(ind),res{3,2}.p(ind,5),'DisplayName','Icing Alt');
h7 = plot(res{4,2}.time(ind),res{4,2}.p(ind,5),'DisplayName','Icing Cov');
h6 = plot(res{1,2}.time(ind),res{1,2}.p(ind,5),'DisplayName','Icing Cov + Alt');
% h8 = plot(res{5,2}.time(ind),res{5,2}.p(ind,5),'DisplayName','Icing 30s Cov + Alt');
plot([0 res{2,1}.time(end)],[p_ref(1,2),p_ref(1,2)],'DisplayName','Reference Clean')
plot([0 res{2,1}.time(end)],[p_ref(3,2),p_ref(3,2)],'DisplayName','Reference Icing')

xlabel('Time in Seconds');
ylabel('Linear Lift Coefficient');
legend('show')
if save_flag ==1
    savefig(fullfile(path,'c_l_alpha'))
end
if save_tikz ==1
    cleanfigure('targetResolution',300);
    matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'c_l_alpha.tikz'));
end

figure(5)
hold on
ind = res{1,1}.p(:,5)~=0;
h1 = plot(res{2,1}.time(ind),res{2,1}.alpha_2*180/pi,'DisplayName','Estimate');
h2 = plot(airdata{2, 1}.sim_airdata.alpha.Time,airdata{2, 1}.sim_airdata.alpha.Data*180/pi,'DisplayName','Reference');
xlabel('Time in Seconds');
ylabel('Angle of Attack in Degrees');
legend('show')
if save_flag ==1
    savefig(fullfile(path,'alpha_clean'))
end
if save_tikz ==1
    cleanfigure('targetResolution',10);
    matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'alpha_clean.tikz'));
end

figure(6)
hold on
ind = res{1,1}.p(:,5)~=0;
h1 = plot(res{2,2}.time(ind),res{2,2}.alpha_2*180/pi,'DisplayName','Estimate');
h2 = plot(airdata{2, 2}.sim_airdata.alpha.Time,airdata{2, 2}.sim_airdata.alpha.Data*180/pi,'DisplayName','Reference');
xlabel('Time in Seconds');
ylabel('Angle of Attack in Degrees');
legend('show')
if save_flag ==1
    savefig(fullfile(path,'alpha_icing'))
end
if save_tikz ==1
    cleanfigure('targetResolution',10);
    matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'alpha_icing.tikz'));
end
figure(7)
hold on
ind = res{1,1}.p(:,5)~=0;
h1 = plot(res{1,2}.time(ind),res{1,2}.alpha_2*180/pi,'DisplayName','Estimate');
h2 = plot(airdata{1, 2}.sim_airdata.alpha.Time,airdata{1, 2}.sim_airdata.alpha.Data*180/pi,'DisplayName','Reference');
xlabel('Time in Seconds');
ylabel('Angle of Attack in Degrees');
legend('show')
if save_flag ==1
    savefig(fullfile(path,'alpha_icing'))
end
if save_tikz ==1
    cleanfigure('targetResolution',10);
    matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'alpha_icing_alt.tikz'));
end

figure(8)
hold on
ind = res{4,2}.p(:,5)~=0;
h1 = plot(res{4,2}.time(ind),res{4,2}.alpha_2*180/pi,'DisplayName','Estimate');
h2 = plot(airdata{2, 2}.sim_airdata.alpha.Time,airdata{2, 2}.sim_airdata.alpha.Data*180/pi,'DisplayName','Reference');
xlabel('Time in Seconds');
ylabel('Angle of Attack in Degrees');
legend('show')
if save_flag ==1
    savefig(fullfile(path,'alpha_icing'))
end
if save_tikz ==1
    cleanfigure('targetResolution',10);
    matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'alpha_icing_cov.tikz'));
end

figure(9)
hold on
plot(airdata{1,1}.sim_airdata.Va.Time,airdata{1,1}.sim_airdata.Va.Data,'r','DisplayName',' Airspeed');
plot(inputs{1,1}.sim_inputs.Time,inputs{1,1}.sim_inputs.Data(:,3),'b','DisplayName','Commanded Airspeed');
xlabel('Time in Seconds');
ylabel('Airsped in m/s');
legend('show')
legend('Location','southeast')
if save_flag ==1
    savefig(fullfile(path,'airspeed'))
end
if save_tikz ==1
    cleanfigure('targetResolution',10);
    matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'airspeed.tikz'));
end

%%RMSE
ind = res{1,1}.p(:,5)~=0;
RMSE.wind(1,1) = sqrt(mean((interp1(airdata{1,1}.sim_airdata.wind_x.Time,airdata{1,1}.sim_airdata.wind_x.Data,res{1,1}.time(ind))-res{1,1}.wind_b_hat(:,1)).^2));
RMSE.wind(2,1) = sqrt(mean((interp1(airdata{1,1}.sim_airdata.wind_y.Time,airdata{1,1}.sim_airdata.wind_y.Data,res{1,1}.time(ind))-res{1,1}.wind_b_hat(:,2)).^2));
RMSE.wind(3,1) = sqrt(mean((interp1(airdata{1,1}.sim_airdata.wind_z.Time,airdata{1,1}.sim_airdata.wind_z.Data,res{1,1}.time(ind))-res{1,1}.wind_b_hat(:,3)).^2));
RMSE.wind(1,2) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.wind_x.Time,airdata{2,2}.sim_airdata.wind_x.Data,res{2,2}.time(ind))-res{2,2}.wind_b_hat(:,1)).^2));
RMSE.wind(2,2) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.wind_y.Time,airdata{2,2}.sim_airdata.wind_y.Data,res{2,2}.time(ind))-res{2,2}.wind_b_hat(:,2)).^2));
RMSE.wind(3,2) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.wind_z.Time,airdata{2,2}.sim_airdata.wind_z.Data,res{2,2}.time(ind))-res{2,2}.wind_b_hat(:,3)).^2));
RMSE.wind(1,3) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.wind_x.Time,airdata{2,2}.sim_airdata.wind_x.Data,res{3,2}.time(ind))-res{3,2}.wind_b_hat(:,1)).^2));
RMSE.wind(2,3) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.wind_y.Time,airdata{2,2}.sim_airdata.wind_y.Data,res{3,2}.time(ind))-res{3,2}.wind_b_hat(:,2)).^2));
RMSE.wind(3,3) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.wind_z.Time,airdata{2,2}.sim_airdata.wind_z.Data,res{3,2}.time(ind))-res{3,2}.wind_b_hat(:,3)).^2));
RMSE.wind(1,4) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.wind_x.Time,airdata{2,2}.sim_airdata.wind_x.Data,res{4,2}.time(ind))-res{4,2}.wind_b_hat(:,1)).^2));
RMSE.wind(2,4) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.wind_y.Time,airdata{2,2}.sim_airdata.wind_y.Data,res{4,2}.time(ind))-res{4,2}.wind_b_hat(:,2)).^2));
RMSE.wind(3,4) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.wind_z.Time,airdata{2,2}.sim_airdata.wind_z.Data,res{4,2}.time(ind))-res{4,2}.wind_b_hat(:,3)).^2));
RMSE.wind(1,5) = sqrt(mean((interp1(airdata{1,2}.sim_airdata.wind_x.Time,airdata{1,2}.sim_airdata.wind_x.Data,res{1,2}.time(ind))-res{1,2}.wind_b_hat(:,1)).^2));
RMSE.wind(2,5) = sqrt(mean((interp1(airdata{1,2}.sim_airdata.wind_y.Time,airdata{1,2}.sim_airdata.wind_y.Data,res{1,2}.time(ind))-res{1,2}.wind_b_hat(:,2)).^2));
RMSE.wind(3,5) = sqrt(mean((interp1(airdata{1,2}.sim_airdata.wind_z.Time,airdata{1,2}.sim_airdata.wind_z.Data,res{1,2}.time(ind))-res{1,2}.wind_b_hat(:,3)).^2));

RMSE.alpha(1,1) = sqrt(mean((interp1(airdata{1,1}.sim_airdata.alpha.Time,airdata{1,1}.sim_airdata.alpha.Data,res{1,1}.time(ind))-res{1,1}.alpha_2(:,1)).^2))*180/pi;
RMSE.alpha(1,2) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.alpha.Time,airdata{2,2}.sim_airdata.alpha.Data,res{2,2}.time(ind))-res{2,2}.alpha_2(:,1)).^2))*180/pi;
RMSE.alpha(1,3) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.alpha.Time,airdata{2,2}.sim_airdata.alpha.Data,res{3,2}.time(ind))-res{3,2}.alpha_2(:,1)).^2))*180/pi;
RMSE.alpha(1,4) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.alpha.Time,airdata{2,2}.sim_airdata.alpha.Data,res{4,2}.time(ind))-res{4,2}.alpha_2(:,1)).^2))*180/pi;
RMSE.alpha(1,5) = sqrt(mean((interp1(airdata{1,2}.sim_airdata.alpha.Time,airdata{1,2}.sim_airdata.alpha.Data,res{1,2}.time(ind))-res{1,2}.alpha_2(:,1)).^2))*180/pi;

RMSE.Va(1,1) = sqrt(mean((interp1(airdata{1,1}.sim_airdata.Va.Time,airdata{1,1}.sim_airdata.Va.Data,res{1,1}.time(ind))-res{1,1}.Va(:,1)).^2));
RMSE.Va(1,2) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.Va.Time,airdata{2,2}.sim_airdata.Va.Data,res{2,2}.time(ind))-res{2,2}.Va(:,1)).^2));
RMSE.Va(1,3) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.Va.Time,airdata{2,2}.sim_airdata.Va.Data,res{3,2}.time(ind))-res{3,2}.Va(:,1)).^2));
RMSE.Va(1,4) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.Va.Time,airdata{2,2}.sim_airdata.Va.Data,res{4,2}.time(ind))-res{4,2}.Va(:,1)).^2));
RMSE.Va(1,5) = sqrt(mean((interp1(airdata{1,2}.sim_airdata.Va.Time,airdata{1,2}.sim_airdata.Va.Data,res{1,2}.time(ind))-res{1,2}.Va(:,1)).^2));

RMSE.beta(1,1) = sqrt(mean((interp1(airdata{1,1}.sim_airdata.beta.Time,airdata{1,1}.sim_airdata.beta.Data,res{1,1}.time(ind))-res{1,1}.beta(:,1)).^2))*180/pi;
RMSE.beta(1,2) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.beta.Time,airdata{2,2}.sim_airdata.beta.Data,res{2,2}.time(ind))-res{2,2}.beta(:,1)).^2))*180/pi;
RMSE.beta(1,3) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.beta.Time,airdata{2,2}.sim_airdata.beta.Data,res{3,2}.time(ind))-res{3,2}.beta(:,1)).^2))*180/pi;
RMSE.beta(1,4) = sqrt(mean((interp1(airdata{2,2}.sim_airdata.beta.Time,airdata{2,2}.sim_airdata.beta.Data,res{4,2}.time(ind))-res{4,2}.beta(:,1)).^2))*180/pi;
RMSE.beta(1,5) = sqrt(mean((interp1(airdata{1,2}.sim_airdata.beta.Time,airdata{1,2}.sim_airdata.beta.Data,res{1,2}.time(ind))-res{1,2}.beta(:,1)).^2))*180/pi;

RMSE.runtime(1,1) = mean(res{1,1}.runtime);
RMSE.runtime(1,2) = mean(res{2,2}.runtime);
RMSE.runtime(1,3) = mean(res{3,2}.runtime);
RMSE.runtime(1,4) = mean(res{4,2}.runtime);
RMSE.runtime(1,5) = mean(res{1,2}.runtime);

% hold on
% plot(Wind_ned.time,Wind_ned.signals(1).values(:,1),'b');
% plot(Wind_ned.time,Wind_ned.signals(1).values(:,2),'r');
% xlabel('Time in Seconds');
% ylabel('Wind in North Direction in m/s');
% legend('$u_w^n$ estimate','$u_w^n$ reference');
% legend('show')
% legend('Location','southeast')
% if save_flag ==1
%     savefig(fullfile(path,'wind_x_n'))
% end
% if save_tikz ==1
%     cleanfigure('minimumPointsDistance',1);
%     matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'wind_x_n.tikz'));
% end
% 
% 
% figure(4)
% hold on
% plot(Wind_ned.time,Wind_ned.signals(2).values(:,1),'b');
% plot(Wind_ned.time,Wind_ned.signals(2).values(:,2),'r');
% xlabel('Time in Seconds');
% ylabel('Wind in East Direction in m/s');
% legend('$v_w^n$ estimate','$v_w^n$ reference');
% legend('show')
% legend('Location','southeast')
% cleanfigure('minimumPointsDistance',1);
% if save_flag ==1
%     savefig(fullfile(path,'wind_y_n'))
% end
% if save_tikz ==1
%     matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'wind_y_n.tikz'));
% end
% figure(5)
% hold on
% plot(Wind_ned.time,Wind_ned.signals(3).values(:,1),'b');
% plot(Wind_ned.time,Wind_ned.signals(3).values(:,2),'r');
% xlabel('Time in Seconds');
% ylabel('Wind in Down Direction in m/s');
% legend('$w_w^n$ estimate','$w_w^n$ reference');
% legend('show')
% legend('Location','southeast')
% cleanfigure('minimumPointsDistance',1);
% if save_flag ==1
%     savefig(fullfile(path,'wind_z_n'))
% end
% if save_tikz ==1
%     matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'wind_z_n.tikz'));
% end
% %%
% figure(6)
% hold on
% %plot(res_kalman.time,res_kalman.signals.values(:,1),'Color',[0,0.49804,0]);
% plot(alpha.time,smooth(alpha.signals.values(:,2),20),'b');
% plot(alpha.time,smooth(alpha.signals.values(:,1),20),'r');
% xlabel('Time in Seconds');
% ylabel('Angle of Attack in Degrees');
% legend('$\alpha$ estimate','$\alpha$ reference');
% legend('show')
% legend('Location','southeast')
% cleanfigure('minimumPointsDistance',5);
% if save_flag ==1
%     savefig(fullfile(path,'alpha'))
% end
% if save_tikz ==1
%     matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'alpha.tikz'));
% end
% %%
% figure(7)
% hold on
% %plot(res_kalman.time,res_kalman.signals.values(:,2),'Color',[0,0.49804,0]);
% plot(beta.time,beta.signals.values(:,2),'b');
% plot(beta.time,beta.signals.values(:,1),'r');
% xlabel('Time in Seconds');
% ylabel('Sideslip Angle in Degrees');
% legend('$\beta$ estimate','$\beta$ reference');
% legend('show')
% legend('Location','southeast')
% cleanfigure('minimumPointsDistance',5);
% if save_flag ==1
%     savefig(fullfile(path,'beta'))
% end
% if save_tikz ==1
%     matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'beta.tikz'));
% end
% 
% figure(8)
% hold on
% %plot(res_kalman.time,res_kalman.signals.values(:,3),'Color',[0,0.49804,0]);
% plot(va.time,va.signals.values(:,2),'b');
% plot(va.time,va.signals.values(:,1),'r');
% xlabel('Time in Seconds');
% ylabel('Airspeed in m/s');
% legend('$V_a$ estimate','$V_a$ reference');
% legend('show')
% legend('Location','southeast')
% cleanfigure('minimumPointsDistance',2);
% if save_flag ==1
%     savefig(fullfile(path,'Va'))
% end
% if save_tikz ==1
%     matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'Va.tikz'));
% end
% %%
% figure(9)
% hold on
% h(1) = plot(States_res.time,States_res.signals.values(:,7),'b');
% h(2) = plot(States_res.time,C_L_alpha_n.signals.values(:,2),'r');
% h(3) = plot(States_res.time,States_res.signals.values(:,7)+3*sqrt(squeeze(P_cov.signals.values(7,7,:))),'k--');
% h(4) = plot(States_res.time,States_res.signals.values(:,7)-3*sqrt(squeeze(P_cov.signals.values(7,7,:))),'k--');
% xlabel('Time in Seconds');
% ylabel('Constant Lift Coefficient');
% legend(h([1 2]),'$C_{L,0}$ estimate','$C_{L,0}$ reference');
% legend('Location','southeast')
% cleanfigure('minimumPointsDistance',1);
% if save_flag ==1
%     savefig(fullfile(path,'C_L_0'))
% end
% if save_tikz ==1
%     matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'C_L_0.tikz'));
% end
% %%
% figure(10)
% hold on
% h(1) = plot(States_res.time,States_res.signals.values(:,8),'b');
% h(2) = plot(States_res.time,C_L_alpha_n.signals.values(:,1),'r');
% h(3) = plot(States_res.time,States_res.signals.values(:,8)+3*sqrt(squeeze(P_cov.signals.values(8,8,:))),'k--');
% h(4) = plot(States_res.time,States_res.signals.values(:,8)-3*sqrt(squeeze(P_cov.signals.values(8,8,:))),'k--');
% xlabel('Time in Seconds');
% ylabel('Linear Lift Coefficient');
% legend(h([1 2]),'$C_{L,\alpha}$ estimate','$C_{L,\alpha}$ reference');
% legend('Location','southeast')
% cleanfigure('minimumPointsDistance',1);
% if save_flag ==1
%     savefig(fullfile(path,'C_L_alpha'))
% end
% if save_tikz ==1
%     matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'C_L_alpha.tikz'));
% end
% %%
% figure(11)
% hold on
% plot(States_res.time,States_res.signals.values(:,9),'b');
% plot([0 States_res.time(end)],[1,1],'r');
% xlabel('Time in Seconds');
% ylabel('Scale Factor');
% legend('$\gamma$ estimate','$\gamma$ reference');
% legend('show')
% legend('Location','southeast')
% cleanfigure('minimumPointsDistance',1);
% if save_flag ==1
%     savefig(fullfile(path,'gamma'))
% end
% if save_tikz ==1
%     matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'gamma.tikz'));
% end
% %%
% h12 = figure(12);
% hold on
% plot(alpha.time,Comp_alpha.signals.values(:,1)*180/pi,'b');
% plot(alpha.time,Comp_alpha.signals.values(:,2)*180/pi,'Color',[0,0.49804,0]);
% plot(alpha.time,alpha.signals.values(:,1),'r');
% xlabel('Time in Seconds');
% ylabel('Angle of Attack in Degrees');
% legend('$\alpha$ estimate Acceleration','$\alpha$ estimate Airspeed','$\alpha$ reference');
% legend('show')
% legend('Location','southeast')
% cleanfigure('minimumPointsDistance',1);
% if save_flag ==1
% savefig(h12,fullfile(path,'alpha_comp'))
% end
% if save_tikz ==1
% matlab2tikz('noSize',true,'parseStrings',false,'filename',fullfile(path_tikz,'alpha_comp.tikz'));
% end

% RMSE_alpha_airspeed = sqrt(sum((alpha.signals.values(:,1)-Comp_alpha.signals.values(:,2)*180/pi).^2)/length(alpha.time))
% RMSE_alpha = sqrt(sum((alpha.signals.values(:,1)-alpha.signals.values(:,2)).^2)/length(alpha.time))
% RMSE_alpha_kal = sqrt(sum((alpha.signals.values(:,1)-res_kalman.signals.values(:,1)).^2)/length(alpha.time))
%
% RMSE_beta = sqrt(sum((beta.signals.values(:,1)-beta.signals.values(:,2)).^2)/length(beta.time))
% RMSE_beta_kal = sqrt(sum((beta.signals.values(:,1)-res_kalman.signals.values(:,2)).^2)/length(beta.time))
%
% RMSE_va = sqrt(sum((va.signals.values(:,1)-va.signals.values(:,2)).^2)/length(va.time))
% RMSE_va_kal = sqrt(sum((va.signals.values(:,1)-res_kalman.signals.values(:,3)).^2)/length(va.time))
