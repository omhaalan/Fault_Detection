function z = create_z_pix(pix)
L1 = length(pix.NKF1_TimeUS);
z.DCM = zeros(3,3,L1);
z.v_b = zeros(L1,3);
Roll = fixangles(pix.NKF1_Roll);
Pitch = fixangles(pix.NKF1_Pitch);
Yaw = fixangles(pix.NKF1_Yaw);
course = atan2(pix.NKF1_VE,pix.NKF1_VN);
R = angle2dcm(0*180/pi,0,0,'XYZ');
for i = 1:L1
z.DCM(:,:,i) = Rzyx(Roll(i),Pitch(i),Yaw(i))';
z.v_b(i,:) = (R*squeeze(z.DCM(:,:,i))*[pix.NKF1_VN(i);pix.NKF1_VE(i);pix.NKF1_VD(i)])';
end

z.u_r_m = interp1(double(pix.ARSP_TimeUS),double(pix.ARSP_Airspeed),double(pix.NKF1_TimeUS),'previous');%/cosd(21.2887);
z.f_z_1 = interp1(double(pix.IMU_TimeUS),double(pix.IMU_AccZ),double(pix.NKF1_TimeUS))-interp1(double(pix.NKF2_TimeUS),double(pix.NKF2_AZbias),double(pix.NKF1_TimeUS))*0.01;
z.f_z_2 = interp1(double(pix.IMU2_TimeUS),double(pix.IMU2_AccZ),double(pix.NKF1_TimeUS))-interp1(double(pix.NKF7_TimeUS),double(pix.NKF7_AZbias),double(pix.NKF1_TimeUS))*0.01;
z.f_z = (z.f_z_1);
z.h = interp1(double(pix.BARO_TimeUS),double(pix.BARO_Alt),double(pix.NKF1_TimeUS));


end