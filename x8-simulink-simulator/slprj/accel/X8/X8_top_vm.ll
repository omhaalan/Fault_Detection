; ModuleID = 'test'
target datalayout = "e-m:w-i64:64-f64:64-f80:128-n8:16:32:64-S128"

%B_X8_T.43 = type { %States.41, %States.41, %AirData.42, %Acceleration.40, %Acceleration.40, double, double, double, double, double, [6 x double], [13 x double], [13 x double], double, double, double, double, [6 x double], double, [4 x double], [4 x double], [4 x double], double, double, [2 x double], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, [6 x double], double, [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], double, double, double, double, double, double, double, double, double, double, double, double, double, double, [4 x double], double, [3 x double], [3 x double], [4 x double], [6 x double], [3 x double], double, double, [3 x double], [3 x double], double, [3 x double], [3 x double], double, double, double, double, double, double, double, [3 x double], [9 x double], [3 x double], double, double, double, double, double, double, [3 x double], [9 x double], [3 x double], double, double, [6 x double], [3 x double], [6 x double], [6 x double], double, double, double, double, double, double, double, double, double, double, [4 x double], [3 x double], double, double, double, double, double, [2 x double], [2 x double], double, [2 x double], [2 x double], double, [2 x double], [2 x double], double, [2 x double], [2 x double], [2 x double], double, double, [2 x double], [2 x double], [2 x double], double, double, [2 x double], [2 x double], double, double, double, double, [4 x double], [15 x double], [9 x double], [6 x double], double, [3 x double], double, double, double, [5 x double], [4 x double], double, double, double, [13 x double], double, [4 x double], [9 x double], double, [16 x double], [13 x double], [6 x double], [4 x double], [9 x double], [3 x double], i32, i32, i32, i8, [3 x i8] }
%States.41 = type { %Position.35, %Attitude.36, %Quaternion.37, %Velocity.38, %AngularVelocity.39, %Acceleration.40 }
%Position.35 = type { double, double, double }
%Attitude.36 = type { double, double, double }
%Quaternion.37 = type { double, [3 x double] }
%Velocity.38 = type { double, double, double }
%AngularVelocity.39 = type { double, double, double }
%AirData.42 = type { double, double, double, double, double, double, double, double, double, double }
%Acceleration.40 = type { double, double, double }
%XDot_X8_T.49 = type { [13 x double], double, double }
%P_X8_T.48 = type { %struct_ek8poQdAha3LOd94y4Mm8B.47, %struct_ek8poQdAha3LOd94y4Mm8B.47, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, [4 x double], double, [4 x double], double, double, double, double, double, double, double, [4 x double], double, double, double, [1444 x double], [38 x double], [38 x double], [16 x double], [4 x double], [4 x double], [1444 x double], [38 x double], [38 x double], [16 x double], [4 x double], [4 x double], [1444 x double], [38 x double], [38 x double], [16 x double], [4 x double], [4 x double], double, [484 x double], [22 x double], [22 x double], [16 x double], [4 x double], [4 x double], [16 x double], [4 x double], [4 x double], [484 x double], [22 x double], [22 x double], [16 x double], [4 x double], [4 x double], [16 x double], [4 x double], [4 x double], [484 x double], [22 x double], [22 x double], [16 x double], [4 x double], [4 x double], [16 x double], [4 x double], [4 x double], double, double, [16 x double], [4 x double], [4 x double], [16 x double], [4 x double], [4 x double], [16 x double], [4 x double], [4 x double], double, [16 x double], [4 x double], [4 x double], double, [16 x double], [4 x double], [4 x double], [16 x double], [4 x double], [4 x double], [16 x double], [4 x double], [4 x double], [16 x double], [4 x double], [4 x double], [16 x double], [4 x double], [4 x double], double, double, [3 x double], double, double, [3 x double], [3 x double], double, double, [3 x double], [3 x double], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, [12 x double], [84 x double], double, double, [4 x double], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, [3 x double], [3 x double], double, double, double, double, double, double, double, double, double, double, double, [3 x double], [9 x double], [3 x double], double, double, double, double, double, double, double, double, double, double, [3 x double], [9 x double], [3 x double], double, double, [6 x double], [3 x double], [6 x double], [6 x double], double, double, double, double, double, double, double, double, double, double, double, [7 x double], [4 x double], double, double, double, double, double, double, i32, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], i8, i8, [2 x i8] }
%struct_ek8poQdAha3LOd94y4Mm8B.47 = type { %struct_OwZGIhES8j1WPxEvrfcse.45, double, %struct_fKPRg2oFQ3TBmGwIuFXxmE.46, double, double, [3 x double], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, [9 x double], double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, double, [4 x double] }
%struct_OwZGIhES8j1WPxEvrfcse.45 = type { double, double, double, double }
%struct_fKPRg2oFQ3TBmGwIuFXxmE.46 = type { double, double, double, double, double }
%DW_X8_T.44 = type { double, double, double, double, double, double, [6 x double], [6 x double], [2 x double], [2 x double], [2 x double], [2 x double], [2 x double], [2 x double], [2 x double], [2 x double], [13 x double], [6 x double], [4 x double], double, [4 x double], [6 x double], double, [3 x double], double, [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], double, [3 x double], double, [4 x double], [2 x i8*], [2 x i8*], [2 x i8*], [4 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [3 x i8*], [4 x i8*], [3 x i8*], [3 x i8*], [3 x i8*], [5 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [16 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [4 x i8*], [3 x i8*], [3 x i8*], [2 x i8*], [3 x i8*], [2 x i8*], [4 x i8*], [2 x i8*], i8*, [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [18 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], [2 x i8*], i8*, [2 x i8*], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%X_X8_T.50 = type { [13 x double], double, double }
%PrevZCX_X8_T.51 = type { i8 }

@0 = private unnamed_addr constant [46 x i8] c"Simulink:blocks:PreLookupOutofRangeInputError\00"
@1 = private unnamed_addr constant [50 x i8] c"Simulink:blocks:PreLookupOutofRangeInputWarn_Clip\00"
@2 = private unnamed_addr constant [160 x i8] c"X8/X1/wind model/Dryden Wind Turbulence Model  (Discrete (-q +r))/RMS turbulence  intensities/High Altitude Intensity/PreLook-Up Index Search  (prob of exceed)\00"
@3 = private unnamed_addr constant [154 x i8] c"X8/X1/wind model/Dryden Wind Turbulence Model  (Discrete (-q +r))/RMS turbulence  intensities/High Altitude Intensity/PreLook-Up Index Search  (altitude)\00"

define i8* @X8_BlockPathFcn(i8* %S_1, i32 %sysIdx, i32 %blkIdx) {
X8_BlockPathFcn_entry:
  %path_ = alloca i8*, align 8
  call void @vm__ssGetBlockPath(i8* %S_1, i32 %sysIdx, i32 %blkIdx, i8** nonnull %path_)
  %path_4 = load i8*, i8** %path_, align 8
  ret i8* %path_4
}

declare void @vm__ssGetBlockPath(i8*, i32, i32, i8**)

define double @X8_rt_urand_Upu32_Yd_f_pw_snf(i32* %u) {
X8_rt_urand_Upu32_Yd_f_pw_snf_entry:
  %u_ = alloca i32*, align 8
  store i32* %u, i32** %u_, align 8
  %lo_ = alloca i32, align 4
  %hi_ = alloca i32, align 4
  %y_ = alloca double, align 8
  %u_2 = load i32, i32* %u, align 1
  %tmp0 = urem i32 %u_2, 127773
  %tmp1 = mul nuw i32 %tmp0, 16807
  store i32 %tmp1, i32* %lo_, align 4
  %tmp2 = udiv i32 %u_2, 127773
  %tmp3 = mul nuw nsw i32 %tmp2, 2836
  store i32 %tmp3, i32* %hi_, align 4
  %0 = icmp ult i32 %tmp1, %tmp3
  br i1 %0, label %true, label %false

true:                                             ; preds = %X8_rt_urand_Upu32_Yd_f_pw_snf_entry
  %hi_10.neg = sub i32 0, %tmp3
  %tmp516 = add i32 %hi_10.neg, 2147483647
  %tmp6 = add i32 %tmp516, %tmp1
  store i32 %tmp6, i32* %u, align 1
  br label %merge

false:                                            ; preds = %X8_rt_urand_Upu32_Yd_f_pw_snf_entry
  %tmp4 = sub i32 %tmp1, %tmp3
  store i32 %tmp4, i32* %u, align 1
  br label %merge

merge:                                            ; preds = %true, %false
  %u_14 = phi i32 [ %tmp6, %true ], [ %tmp4, %false ]
  %1 = uitofp i32 %u_14 to double
  %tmp7 = fmul double %1, 0x3E00000000200000
  store double %tmp7, double* %y_, align 8
  ret double %tmp7
}

define double @X8_rt_nrand_Upu32_Yd_f_pw_snf(i32* %u) {
X8_rt_nrand_Upu32_Yd_f_pw_snf_entry:
  %u_ = alloca i32*, align 8
  store i32* %u, i32** %u_, align 8
  %sr_ = alloca double, align 8
  %si_ = alloca double, align 8
  %y_ = alloca double, align 8
  br label %true

true:                                             ; preds = %true, %X8_rt_nrand_Upu32_Yd_f_pw_snf_entry
  %0 = call double @X8_rt_urand_Upu32_Yd_f_pw_snf(i32* %u)
  %tmp0 = fmul double %0, 2.000000e+00
  %tmp1 = fadd double %tmp0, -1.000000e+00
  store double %tmp1, double* %sr_, align 8
  %1 = call double @X8_rt_urand_Upu32_Yd_f_pw_snf(i32* %u)
  %tmp2 = fmul double %1, 2.000000e+00
  %tmp3 = fadd double %tmp2, -1.000000e+00
  %tmp4 = fmul double %tmp1, %tmp1
  %tmp5 = fmul double %tmp3, %tmp3
  %tmp6 = fadd double %tmp4, %tmp5
  store double %tmp6, double* %si_, align 8
  %2 = fcmp ogt double %tmp6, 1.000000e+00
  br i1 %2, label %true, label %false

false:                                            ; preds = %true
  %3 = call double @muDoubleScalarLog(double %tmp6)
  %tmp7 = fmul double %3, -2.000000e+00
  %tmp8 = fdiv double %tmp7, %tmp6
  %4 = call double @muDoubleScalarSqrt(double %tmp8)
  %tmp9 = fmul double %4, %tmp1
  store double %tmp9, double* %y_, align 8
  ret double %tmp9
}

declare double @muDoubleScalarLog(double)

declare double @muDoubleScalarSqrt(double)

define void @X8_CGInitializeSizes(i8* %S_0) {
X8_CGInitializeSizes_entry:
  %S_0_ = alloca i8*, align 8
  store i8* %S_0, i8** %S_0_, align 8
  %tmp_ = alloca [4 x i32], align 4
  call void @X8_Checksum([4 x i32]* nonnull %tmp_)
  %0 = getelementptr inbounds [4 x i32], [4 x i32]* %tmp_, i64 0, i64 0
  %tmp__el = load i32, i32* %0, align 4
  call void @vm_ssSetChecksumVal(i8* %S_0, i32 0, i32 %tmp__el)
  %1 = getelementptr inbounds [4 x i32], [4 x i32]* %tmp_, i64 0, i64 1
  %tmp__el3 = load i32, i32* %1, align 4
  call void @vm_ssSetChecksumVal(i8* %S_0, i32 1, i32 %tmp__el3)
  %2 = getelementptr inbounds [4 x i32], [4 x i32]* %tmp_, i64 0, i64 2
  %tmp__el5 = load i32, i32* %2, align 4
  call void @vm_ssSetChecksumVal(i8* %S_0, i32 2, i32 %tmp__el5)
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %tmp_, i64 0, i64 3
  %tmp__el7 = load i32, i32* %3, align 4
  call void @vm_ssSetChecksumVal(i8* %S_0, i32 3, i32 %tmp__el7)
  call void @vm_blockIOSizeCheck(i8* %S_0, i32 3840)
  call void @vm_dworkSizeCheck(i8* %S_0, i32 2352)
  ret void
}

define void @X8_Checksum([4 x i32]* %y) {
X8_Checksum_entry:
  %y_ = alloca [4 x i32]*, align 8
  store [4 x i32]* %y, [4 x i32]** %y_, align 8
  %0 = getelementptr inbounds [4 x i32], [4 x i32]* %y, i64 0, i64 0
  store i32 1688773942, i32* %0, align 1
  %1 = getelementptr inbounds [4 x i32], [4 x i32]* %y, i64 0, i64 1
  store i32 1355667784, i32* %1, align 1
  %2 = getelementptr inbounds [4 x i32], [4 x i32]* %y, i64 0, i64 2
  store i32 2047071829, i32* %2, align 1
  %3 = getelementptr inbounds [4 x i32], [4 x i32]* %y, i64 0, i64 3
  store i32 195634499, i32* %3, align 1
  ret void
}

declare void @vm_ssSetChecksumVal(i8*, i32, i32)

declare void @vm_blockIOSizeCheck(i8*, i32)

declare void @vm_dworkSizeCheck(i8*, i32)

define void @X8_oorCheck(i8 %diagSetting, double %u, double %bp0, double %bpn, i8* %extrapMsgId, i8* %blockPath, i8* %S) {
X8_oorCheck_entry:
  %diagSetting_ = alloca i8, align 1
  store i8 %diagSetting, i8* %diagSetting_, align 1
  %u_ = alloca double, align 8
  store double %u, double* %u_, align 8
  %bp0_ = alloca double, align 8
  store double %bp0, double* %bp0_, align 8
  %bpn_ = alloca double, align 8
  store double %bpn, double* %bpn_, align 8
  %extrapMsgId_ = alloca i8*, align 8
  store i8* %extrapMsgId, i8** %extrapMsgId_, align 8
  %blockPath_ = alloca i8*, align 8
  store i8* %blockPath, i8** %blockPath_, align 8
  %S_ = alloca i8*, align 8
  store i8* %S, i8** %S_, align 8
  %0 = icmp ne i8 %diagSetting, 0
  %1 = fcmp olt double %u, %bp0
  %2 = fcmp ogt double %u, %bpn
  %3 = or i1 %1, %2
  %4 = and i1 %0, %3
  br i1 %4, label %true, label %false

true:                                             ; preds = %X8_oorCheck_entry
  %5 = icmp eq i8 %diagSetting, 2
  br i1 %5, label %true1, label %false2

false:                                            ; preds = %false2, %true1, %X8_oorCheck_entry
  ret void

true1:                                            ; preds = %true
  %6 = call i8* (i8*, ...) @CreateDiagnosticAsVoidPtr(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @0, i64 0, i64 0), i32 1, i32 3, i8* %blockPath)
  call void @vm__ssSet_slErrMsg(i8* %S, i8* %6)
  br label %false

false2:                                           ; preds = %true
  %7 = call i8* (i8*, ...) @CreateDiagnosticAsVoidPtr(i8* %extrapMsgId, i32 1, i32 3, i8* %blockPath)
  call void @vm__ssReportDiagnosticAsWarning(i8* %S, i8* %7)
  br label %false
}

declare i8* @CreateDiagnosticAsVoidPtr(i8*, ...)

declare void @vm__ssReportDiagnosticAsWarning(i8*, i8*)

declare void @vm__ssSet_slErrMsg(i8*, i8*)

define void @Enable(i8* %S) {
Enable_entry:
  %S_ = alloca i8*, align 8
  store i8* %S, i8** %S_, align 8
  %0 = call i8* @vm_ssGetModelRtp(i8* %S)
  %1 = call i8* @vm__ssGetModelBlockIO(i8* %S)
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 7, i32 0, i32 139)
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 3, i32 0, i32 139)
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 5, i32 1, i32 139)
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 6, i32 3, i32 139)
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 4, i32 0, i32 139)
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 1, i32 0, i32 139)
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 2, i32 1, i32 139)
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 0, i32 0, i32 139)
  ret void
}

declare i8* @vm_ssGetModelRtp(i8*)

declare i8* @vm__ssGetModelBlockIO(i8*)

declare void @vm_ssCallAccelRunBlock(i8*, i32, i32, i32)

define void @ForcingFunction(i8* %S) {
ForcingFunction_entry:
  %_rtB_ = alloca %B_X8_T.43*, align 8
  %_rtXdot_ = alloca %XDot_X8_T.49*, align 8
  %0 = call i8* @vm_ssGetdX(i8* %S)
  %1 = bitcast %XDot_X8_T.49** %_rtXdot_ to i8**
  store i8* %0, i8** %1, align 8
  %2 = call i8* @vm__ssGetModelBlockIO(i8* %S)
  %3 = bitcast %B_X8_T.43** %_rtB_ to i8**
  store i8* %2, i8** %3, align 8
  %4 = getelementptr inbounds i8, i8* %2, i64 3192
  %5 = call i8* @memcpy(i8* %0, i8* %4, i32 104)
  %6 = getelementptr inbounds i8, i8* %2, i64 1752
  %7 = bitcast i8* %6 to i64*
  %_rtB__Constant29 = load i64, i64* %7, align 1
  %8 = bitcast i8* %0 to %XDot_X8_T.49*
  %9 = getelementptr inbounds %XDot_X8_T.49, %XDot_X8_T.49* %8, i64 0, i32 1
  %10 = bitcast double* %9 to i64*
  store i64 %_rtB__Constant29, i64* %10, align 1
  %11 = bitcast i8* %2 to %B_X8_T.43*
  %12 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %11, i64 0, i32 21, i64 3
  %13 = bitcast double* %12 to i64*
  %_rtB__MultiportSwitch_c_el10 = load i64, i64* %13, align 1
  %14 = getelementptr inbounds %XDot_X8_T.49, %XDot_X8_T.49* %8, i64 0, i32 2
  %15 = bitcast double* %14 to i64*
  store i64 %_rtB__MultiportSwitch_c_el10, i64* %15, align 1
  ret void
}

declare i8* @vm_ssGetdX(i8*)

declare i8* @memcpy(i8*, i8*, i32)

define void @Derivatives(i8* %S) {
Derivatives_entry:
  %_rtB_ = alloca %B_X8_T.43*, align 8
  %_rtXdot_ = alloca %XDot_X8_T.49*, align 8
  %0 = call i8* @vm_ssGetdX(i8* %S)
  %1 = bitcast %XDot_X8_T.49** %_rtXdot_ to i8**
  store i8* %0, i8** %1, align 8
  %2 = call i8* @vm__ssGetModelBlockIO(i8* %S)
  %3 = bitcast %B_X8_T.43** %_rtB_ to i8**
  store i8* %2, i8** %3, align 8
  %4 = getelementptr inbounds i8, i8* %2, i64 3192
  %5 = call i8* @memcpy(i8* %0, i8* %4, i32 104)
  %6 = getelementptr inbounds i8, i8* %2, i64 1752
  %7 = bitcast i8* %6 to i64*
  %_rtB__Constant29 = load i64, i64* %7, align 1
  %8 = bitcast i8* %0 to %XDot_X8_T.49*
  %9 = getelementptr inbounds %XDot_X8_T.49, %XDot_X8_T.49* %8, i64 0, i32 1
  %10 = bitcast double* %9 to i64*
  store i64 %_rtB__Constant29, i64* %10, align 1
  %11 = bitcast i8* %2 to %B_X8_T.43*
  %12 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %11, i64 0, i32 21, i64 3
  %13 = bitcast double* %12 to i64*
  %_rtB__MultiportSwitch_c_el10 = load i64, i64* %13, align 1
  %14 = getelementptr inbounds %XDot_X8_T.49, %XDot_X8_T.49* %8, i64 0, i32 2
  %15 = bitcast double* %14 to i64*
  store i64 %_rtB__MultiportSwitch_c_el10, i64* %15, align 1
  ret void
}

define void @Update1(i8* %S) {
Update1_entry:
  %0 = call i8* @vm_ssGetRootDWork(i8* %S)
  %1 = call i8* @vm_ssGetModelRtp(i8* %S)
  %2 = call i8* @vm__ssGetModelBlockIO(i8* %S)
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 21, i32 367, i32 105)
  ret void
}

declare i8* @vm_ssGetRootDWork(i8*)

define void @Update0(i8* %S) {
Update0_entry:
  %S_ = alloca i8*, align 8
  store i8* %S, i8** %S_, align 8
  %lastU_ = alloca [3 x double]*, align 8
  %_rtB_ = alloca %B_X8_T.43*, align 8
  %_rtP_ = alloca %P_X8_T.48*, align 8
  %_rtDW_ = alloca %DW_X8_T.44*, align 8
  %vm_ssIsContinuousTaskVar0_ = alloca i32, align 4
  %vm_ssIsSampleHitVar1_ = alloca i32, align 4
  %vm_ssIsSampleHitVar2_ = alloca i32, align 4
  %vm_ssGetTVar3_ = alloca double, align 8
  %0 = call double @vm_ssGetT(i8* %S)
  store double %0, double* %vm_ssGetTVar3_, align 8
  %1 = call i32 @vm_ssIsSampleHit(i8* %S, i32 1, i32 0)
  store i32 %1, i32* %vm_ssIsSampleHitVar2_, align 4
  %2 = call i32 @vm_ssIsSampleHit(i8* %S, i32 2, i32 0)
  store i32 %2, i32* %vm_ssIsSampleHitVar1_, align 4
  %3 = call i32 @vm_ssIsContinuousTask(i8* %S, i32 0)
  store i32 %3, i32* %vm_ssIsContinuousTaskVar0_, align 4
  %4 = call i8* @vm_ssGetRootDWork(i8* %S)
  %5 = bitcast %DW_X8_T.44** %_rtDW_ to i8**
  store i8* %4, i8** %5, align 8
  %6 = call i8* @vm_ssGetModelRtp(i8* %S)
  %7 = bitcast %P_X8_T.48** %_rtP_ to i8**
  store i8* %6, i8** %7, align 8
  %8 = call i8* @vm__ssGetModelBlockIO(i8* %S)
  %9 = bitcast %B_X8_T.43** %_rtB_ to i8**
  store i8* %8, i8** %9, align 8
  %10 = icmp eq i32 %3, 0
  %11 = bitcast double %0 to i64
  br i1 %10, label %false, label %true

true:                                             ; preds = %Update0_entry
  %_rtDW_47 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %12 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_47, i64 0, i32 126
  store i32 0, i32* %12, align 1
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %false2, label %true1

false:                                            ; preds = %Update0_entry, %false32
  %vm_ssIsSampleHitVar1_222 = phi i32 [ %2, %Update0_entry ], [ %vm_ssIsSampleHitVar1_222.pre, %false32 ]
  %14 = icmp eq i32 %vm_ssIsSampleHitVar1_222, 0
  br i1 %14, label %false36, label %true35

true1:                                            ; preds = %true
  %_rtDW_50 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %15 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_50, i64 0, i32 16, i64 0
  %16 = bitcast double* %15 to i8*
  %_rtB_51 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %17 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_51, i64 0, i32 161, i64 0
  %18 = bitcast double* %17 to i8*
  %19 = call i8* @memcpy(i8* %16, i8* %18, i32 104)
  %_rtB_52 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %20 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_52, i64 0, i32 69, i64 0
  %21 = bitcast double* %20 to i64*
  %_rtB__Sum_el263 = load i64, i64* %21, align 1
  %_rtDW_53 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %22 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_53, i64 0, i32 17
  %23 = bitcast [6 x double]* %22 to i64*
  store i64 %_rtB__Sum_el263, i64* %23, align 1
  %_rtB_54 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %24 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_54, i64 0, i32 68, i64 0
  %25 = bitcast double* %24 to i64*
  %_rtB__Merge_el264 = load i64, i64* %25, align 1
  %_rtDW_55 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %26 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_55, i64 0, i32 17, i64 3
  %27 = bitcast double* %26 to i64*
  store i64 %_rtB__Merge_el264, i64* %27, align 1
  %_rtB_56 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %28 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_56, i64 0, i32 69, i64 1
  %29 = bitcast double* %28 to i64*
  %_rtB__Sum_el57265 = load i64, i64* %29, align 1
  %_rtDW_58 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %30 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_58, i64 0, i32 17, i64 1
  %31 = bitcast double* %30 to i64*
  store i64 %_rtB__Sum_el57265, i64* %31, align 1
  %_rtB_59 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %32 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_59, i64 0, i32 68, i64 1
  %33 = bitcast double* %32 to i64*
  %_rtB__Merge_el60266 = load i64, i64* %33, align 1
  %_rtDW_61 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %34 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_61, i64 0, i32 17, i64 4
  %35 = bitcast double* %34 to i64*
  store i64 %_rtB__Merge_el60266, i64* %35, align 1
  %_rtB_62 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %36 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_62, i64 0, i32 69, i64 2
  %37 = bitcast double* %36 to i64*
  %_rtB__Sum_el63267 = load i64, i64* %37, align 1
  %_rtDW_64 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %38 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_64, i64 0, i32 17, i64 2
  %39 = bitcast double* %38 to i64*
  store i64 %_rtB__Sum_el63267, i64* %39, align 1
  %_rtB_65 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %40 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_65, i64 0, i32 68, i64 2
  %41 = bitcast double* %40 to i64*
  %_rtB__Merge_el66268 = load i64, i64* %41, align 1
  %_rtDW_67 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %42 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_67, i64 0, i32 17, i64 5
  %43 = bitcast double* %42 to i64*
  store i64 %_rtB__Merge_el66268, i64* %43, align 1
  %_rtB_68 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %44 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_68, i64 0, i32 65
  %45 = bitcast double* %44 to i64*
  %_rtB__Saturation_b269 = load i64, i64* %45, align 1
  %46 = bitcast %DW_X8_T.44** %_rtDW_ to i64**
  %_rtDW_69270 = load i64*, i64** %46, align 8
  store i64 %_rtB__Saturation_b269, i64* %_rtDW_69270, align 1
  %_rtB_70 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %47 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_70, i64 0, i32 64
  %48 = bitcast double* %47 to i64*
  %_rtB__Saturation1_n271 = load i64, i64* %48, align 1
  %_rtDW_71 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %49 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_71, i64 0, i32 1
  %50 = bitcast double* %49 to i64*
  store i64 %_rtB__Saturation1_n271, i64* %50, align 1
  %_rtB_72 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %51 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_72, i64 0, i32 24, i64 0
  %52 = bitcast double* %51 to i64*
  %_rtB__elevontoelevatoraileron_el272 = load i64, i64* %52, align 1
  %_rtDW_73 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %53 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_73, i64 0, i32 2
  %54 = bitcast double* %53 to i64*
  store i64 %_rtB__elevontoelevatoraileron_el272, i64* %54, align 1
  %_rtDW_74 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %55 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_74, i64 0, i32 3
  store double 0.000000e+00, double* %55, align 1
  %_rtB_75 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %56 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_75, i64 0, i32 24, i64 1
  %57 = bitcast double* %56 to i64*
  %_rtB__elevontoelevatoraileron_el76273 = load i64, i64* %57, align 1
  %_rtDW_77 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %58 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_77, i64 0, i32 4
  %59 = bitcast double* %58 to i64*
  store i64 %_rtB__elevontoelevatoraileron_el76273, i64* %59, align 1
  %_rtB_78 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %60 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_78, i64 0, i32 21, i64 2
  %61 = bitcast double* %60 to i64*
  %_rtB__MultiportSwitch_c_el274 = load i64, i64* %61, align 1
  %_rtDW_79 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %62 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_79, i64 0, i32 5
  %63 = bitcast double* %62 to i64*
  store i64 %_rtB__MultiportSwitch_c_el274, i64* %63, align 1
  br label %false2

false2:                                           ; preds = %true, %true1
  %_rtDW_80 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %64 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_80, i64 0, i32 22
  %_rtDW__TimeStampA = load double, double* %64, align 1
  %65 = fcmp oeq double %_rtDW__TimeStampA, 0x7FF0000000000000
  br i1 %65, label %true3, label %false4

true3:                                            ; preds = %false2
  %66 = bitcast double* %vm_ssGetTVar3_ to i64*
  %67 = bitcast double* %64 to i64*
  store i64 %11, i64* %67, align 1
  %_rtDW_97 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %68 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_97, i64 0, i32 23
  br label %merge38

false4:                                           ; preds = %false2
  %69 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_80, i64 0, i32 24
  %_rtDW__TimeStampB = load double, double* %69, align 1
  %70 = fcmp oeq double %_rtDW__TimeStampB, 0x7FF0000000000000
  br i1 %70, label %true5, label %false6

true5:                                            ; preds = %false4
  %71 = bitcast double* %vm_ssGetTVar3_ to i64*
  %72 = bitcast double* %69 to i64*
  store i64 %11, i64* %72, align 1
  %_rtDW_94 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %73 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_94, i64 0, i32 25
  br label %merge38

false6:                                           ; preds = %false4
  %74 = fcmp olt double %_rtDW__TimeStampA, %_rtDW__TimeStampB
  %75 = bitcast double* %vm_ssGetTVar3_ to i64*
  br i1 %74, label %true7, label %false8

true7:                                            ; preds = %false6
  %76 = bitcast double* %64 to i64*
  store i64 %11, i64* %76, align 1
  %_rtDW_91 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %77 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_91, i64 0, i32 23
  br label %merge38

false8:                                           ; preds = %false6
  %78 = bitcast double* %69 to i64*
  store i64 %11, i64* %78, align 1
  %_rtDW_88 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %79 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_88, i64 0, i32 25
  br label %merge38

true9:                                            ; preds = %merge38
  %_rtDW_108 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %80 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_108, i64 0, i32 6, i64 0
  %81 = bitcast double* %80 to i64*
  %_rtDW__DiscreteTransferFcn_states_el246 = load i64, i64* %81, align 1
  %82 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_108, i64 0, i32 6, i64 1
  %83 = bitcast double* %82 to i64*
  store i64 %_rtDW__DiscreteTransferFcn_states_el246, i64* %83, align 1
  %_rtDW_110 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %84 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_110, i64 0, i32 26, i64 0
  %85 = bitcast double* %84 to i64*
  %_rtDW__DiscreteTransferFcn_tmp_el247 = load i64, i64* %85, align 1
  %86 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_110, i64 0, i32 6
  %87 = bitcast [6 x double]* %86 to i64*
  store i64 %_rtDW__DiscreteTransferFcn_tmp_el247, i64* %87, align 1
  %_rtDW_112 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %88 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_112, i64 0, i32 6, i64 2
  %89 = bitcast double* %88 to i64*
  %_rtDW__DiscreteTransferFcn_states_el113248 = load i64, i64* %89, align 1
  %90 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_112, i64 0, i32 6, i64 3
  %91 = bitcast double* %90 to i64*
  store i64 %_rtDW__DiscreteTransferFcn_states_el113248, i64* %91, align 1
  %_rtDW_115 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %92 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_115, i64 0, i32 26, i64 1
  %93 = bitcast double* %92 to i64*
  %_rtDW__DiscreteTransferFcn_tmp_el116249 = load i64, i64* %93, align 1
  %94 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_115, i64 0, i32 6, i64 2
  %95 = bitcast double* %94 to i64*
  store i64 %_rtDW__DiscreteTransferFcn_tmp_el116249, i64* %95, align 1
  %_rtDW_118 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %96 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_118, i64 0, i32 6, i64 4
  %97 = bitcast double* %96 to i64*
  %_rtDW__DiscreteTransferFcn_states_el119250 = load i64, i64* %97, align 1
  %98 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_118, i64 0, i32 6, i64 5
  %99 = bitcast double* %98 to i64*
  store i64 %_rtDW__DiscreteTransferFcn_states_el119250, i64* %99, align 1
  %_rtDW_121 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %100 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_121, i64 0, i32 26, i64 2
  %101 = bitcast double* %100 to i64*
  %_rtDW__DiscreteTransferFcn_tmp_el122251 = load i64, i64* %101, align 1
  %102 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_121, i64 0, i32 6, i64 4
  %103 = bitcast double* %102 to i64*
  store i64 %_rtDW__DiscreteTransferFcn_tmp_el122251, i64* %103, align 1
  %_rtDW_124 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %104 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_124, i64 0, i32 7, i64 0
  %105 = bitcast double* %104 to i64*
  %_rtDW__DiscreteTransferFcn_states_a_el252 = load i64, i64* %105, align 1
  %106 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_124, i64 0, i32 7, i64 1
  %107 = bitcast double* %106 to i64*
  store i64 %_rtDW__DiscreteTransferFcn_states_a_el252, i64* %107, align 1
  %_rtDW_126 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %108 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_126, i64 0, i32 28, i64 0
  %109 = bitcast double* %108 to i64*
  %_rtDW__DiscreteTransferFcn_tmp_b_el253 = load i64, i64* %109, align 1
  %110 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_126, i64 0, i32 7
  %111 = bitcast [6 x double]* %110 to i64*
  store i64 %_rtDW__DiscreteTransferFcn_tmp_b_el253, i64* %111, align 1
  %_rtDW_128 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %112 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_128, i64 0, i32 7, i64 2
  %113 = bitcast double* %112 to i64*
  %_rtDW__DiscreteTransferFcn_states_a_el129254 = load i64, i64* %113, align 1
  %114 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_128, i64 0, i32 7, i64 3
  %115 = bitcast double* %114 to i64*
  store i64 %_rtDW__DiscreteTransferFcn_states_a_el129254, i64* %115, align 1
  %_rtDW_131 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %116 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_131, i64 0, i32 28, i64 1
  %117 = bitcast double* %116 to i64*
  %_rtDW__DiscreteTransferFcn_tmp_b_el132255 = load i64, i64* %117, align 1
  %118 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_131, i64 0, i32 7, i64 2
  %119 = bitcast double* %118 to i64*
  store i64 %_rtDW__DiscreteTransferFcn_tmp_b_el132255, i64* %119, align 1
  %_rtDW_134 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %120 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_134, i64 0, i32 7, i64 4
  %121 = bitcast double* %120 to i64*
  %_rtDW__DiscreteTransferFcn_states_a_el135256 = load i64, i64* %121, align 1
  %122 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_134, i64 0, i32 7, i64 5
  %123 = bitcast double* %122 to i64*
  store i64 %_rtDW__DiscreteTransferFcn_states_a_el135256, i64* %123, align 1
  %_rtDW_137 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %124 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_137, i64 0, i32 28, i64 2
  %125 = bitcast double* %124 to i64*
  %_rtDW__DiscreteTransferFcn_tmp_b_el138257 = load i64, i64* %125, align 1
  %126 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_137, i64 0, i32 7, i64 4
  %127 = bitcast double* %126 to i64*
  store i64 %_rtDW__DiscreteTransferFcn_tmp_b_el138257, i64* %127, align 1
  %_rtDW_140 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %128 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_140, i64 0, i32 124, i64 0
  %129 = call double @X8_rt_nrand_Upu32_Yd_f_pw_snf(i32* %128)
  %_rtP_141 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %130 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_141, i64 0, i32 190
  %_rtP__WhiteNoise_StdDev = load double, double* %130, align 1
  %tmp1 = fmul double %129, %_rtP__WhiteNoise_StdDev
  %131 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_141, i64 0, i32 189
  %_rtP__WhiteNoise_Mean = load double, double* %131, align 1
  %tmp2 = fadd double %tmp1, %_rtP__WhiteNoise_Mean
  %_rtDW_143 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %132 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_143, i64 0, i32 33, i64 0
  store double %tmp2, double* %132, align 1
  %_rtDW_144 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %133 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_144, i64 0, i32 124, i64 1
  %134 = call double @X8_rt_nrand_Upu32_Yd_f_pw_snf(i32* %133)
  %_rtP__WhiteNoise_StdDev146 = load double, double* %130, align 1
  %tmp3 = fmul double %134, %_rtP__WhiteNoise_StdDev146
  %_rtP__WhiteNoise_Mean148 = load double, double* %131, align 1
  %tmp4 = fadd double %tmp3, %_rtP__WhiteNoise_Mean148
  %_rtDW_149 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %135 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_149, i64 0, i32 33, i64 1
  store double %tmp4, double* %135, align 1
  %_rtDW_150 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %136 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_150, i64 0, i32 124, i64 2
  %137 = call double @X8_rt_nrand_Upu32_Yd_f_pw_snf(i32* %136)
  %_rtP__WhiteNoise_StdDev152 = load double, double* %130, align 1
  %tmp5 = fmul double %137, %_rtP__WhiteNoise_StdDev152
  %_rtP__WhiteNoise_Mean154 = load double, double* %131, align 1
  %tmp6 = fadd double %tmp5, %_rtP__WhiteNoise_Mean154
  %_rtDW_155 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %138 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_155, i64 0, i32 33, i64 2
  store double %tmp6, double* %138, align 1
  %_rtDW_156 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %139 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_156, i64 0, i32 124, i64 3
  %140 = call double @X8_rt_nrand_Upu32_Yd_f_pw_snf(i32* %139)
  %_rtP__WhiteNoise_StdDev158 = load double, double* %130, align 1
  %tmp7 = fmul double %140, %_rtP__WhiteNoise_StdDev158
  %_rtP__WhiteNoise_Mean160 = load double, double* %131, align 1
  %tmp8 = fadd double %tmp7, %_rtP__WhiteNoise_Mean160
  %_rtDW_161 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %141 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_161, i64 0, i32 33, i64 3
  store double %tmp8, double* %141, align 1
  br label %false10

false10:                                          ; preds = %merge38, %true9
  %_rtDW_162 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %142 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_162, i64 0, i32 146
  %_rtDW__Hpgw_MODE = load i8, i8* %142, align 1
  %143 = and i8 %_rtDW__Hpgw_MODE, 1
  %144 = icmp eq i8 %143, 0
  %vm_ssIsSampleHitVar2_163 = load i32, i32* %vm_ssIsSampleHitVar2_, align 4
  %145 = icmp eq i32 %vm_ssIsSampleHitVar2_163, 0
  %or.cond = or i1 %144, %145
  br i1 %or.cond, label %false12, label %true13

false12:                                          ; preds = %true13, %false10
  %_rtDW_174 = phi %DW_X8_T.44* [ %_rtDW_162, %false10 ], [ %_rtDW_170.pre.pre, %true13 ]
  %146 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_174, i64 0, i32 141
  %_rtDW__Hwgwz_MODE = load i8, i8* %146, align 1
  %147 = and i8 %_rtDW__Hwgwz_MODE, 1
  %148 = icmp eq i8 %147, 0
  %vm_ssIsSampleHitVar2_171 = load i32, i32* %vm_ssIsSampleHitVar2_, align 4
  %149 = icmp eq i32 %vm_ssIsSampleHitVar2_171, 0
  %or.cond288 = or i1 %148, %149
  br i1 %or.cond288, label %false16, label %true17

true13:                                           ; preds = %false10
  %_rtB_165 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %150 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_165, i64 0, i32 142, i64 0
  %151 = bitcast double* %150 to i64*
  %_rtB__Sum_l_el244 = load i64, i64* %151, align 1
  %152 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_162, i64 0, i32 15
  %153 = bitcast [2 x double]* %152 to i64*
  store i64 %_rtB__Sum_l_el244, i64* %153, align 1
  %_rtB_167 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %154 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_167, i64 0, i32 142, i64 1
  %155 = bitcast double* %154 to i64*
  %_rtB__Sum_l_el168245 = load i64, i64* %155, align 1
  %_rtDW_169 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %156 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_169, i64 0, i32 15, i64 1
  %157 = bitcast double* %156 to i64*
  store i64 %_rtB__Sum_l_el168245, i64* %157, align 1
  %_rtDW_170.pre.pre = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  br label %false12

false16:                                          ; preds = %true17, %false12
  %_rtDW_182 = phi %DW_X8_T.44* [ %_rtDW_174, %false12 ], [ %_rtDW_178.pre.pre, %true17 ]
  %158 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_182, i64 0, i32 145
  %_rtDW__Hqgw_MODE = load i8, i8* %158, align 1
  %159 = and i8 %_rtDW__Hqgw_MODE, 1
  %160 = icmp eq i8 %159, 0
  %vm_ssIsSampleHitVar2_179 = load i32, i32* %vm_ssIsSampleHitVar2_, align 4
  %161 = icmp eq i32 %vm_ssIsSampleHitVar2_179, 0
  %or.cond290 = or i1 %160, %161
  br i1 %or.cond290, label %false20, label %true21

true17:                                           ; preds = %false12
  %_rtB_173 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %162 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_173, i64 0, i32 123, i64 0
  %163 = bitcast double* %162 to i64*
  %_rtB__Sum_a_el242 = load i64, i64* %163, align 1
  %164 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_174, i64 0, i32 8
  %165 = bitcast [2 x double]* %164 to i64*
  store i64 %_rtB__Sum_a_el242, i64* %165, align 1
  %_rtB_175 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %166 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_175, i64 0, i32 123, i64 1
  %167 = bitcast double* %166 to i64*
  %_rtB__Sum_a_el176243 = load i64, i64* %167, align 1
  %_rtDW_177 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %168 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_177, i64 0, i32 8, i64 1
  %169 = bitcast double* %168 to i64*
  store i64 %_rtB__Sum_a_el176243, i64* %169, align 1
  %_rtDW_178.pre.pre = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  br label %false16

false20:                                          ; preds = %true21, %false16
  %_rtDW_196 = phi %DW_X8_T.44* [ %_rtDW_182, %false16 ], [ %_rtDW_192.pre.pre, %true21 ]
  %170 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_196, i64 0, i32 142
  %_rtDW__Hvgwz_MODE = load i8, i8* %170, align 1
  %171 = and i8 %_rtDW__Hvgwz_MODE, 1
  %172 = icmp eq i8 %171, 0
  %vm_ssIsSampleHitVar2_193 = load i32, i32* %vm_ssIsSampleHitVar2_, align 4
  %173 = icmp eq i32 %vm_ssIsSampleHitVar2_193, 0
  %or.cond292 = or i1 %172, %173
  br i1 %or.cond292, label %false24, label %true25

true21:                                           ; preds = %false16
  %_rtB_181 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %174 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_181, i64 0, i32 138, i64 0
  %175 = bitcast double* %174 to i64*
  %_rtB__Sum1_g_el238 = load i64, i64* %175, align 1
  %176 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_182, i64 0, i32 13
  %177 = bitcast [2 x double]* %176 to i64*
  store i64 %_rtB__Sum1_g_el238, i64* %177, align 1
  %_rtB_183 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %178 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_183, i64 0, i32 123, i64 0
  %179 = bitcast double* %178 to i64*
  %_rtB__Sum_a_el184239 = load i64, i64* %179, align 1
  %_rtDW_185 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %180 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_185, i64 0, i32 14
  %181 = bitcast [2 x double]* %180 to i64*
  store i64 %_rtB__Sum_a_el184239, i64* %181, align 1
  %_rtB_186 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %182 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_186, i64 0, i32 138, i64 1
  %183 = bitcast double* %182 to i64*
  %_rtB__Sum1_g_el187240 = load i64, i64* %183, align 1
  %_rtDW_188 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %184 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_188, i64 0, i32 13, i64 1
  %185 = bitcast double* %184 to i64*
  store i64 %_rtB__Sum1_g_el187240, i64* %185, align 1
  %_rtB_189 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %186 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_189, i64 0, i32 123, i64 1
  %187 = bitcast double* %186 to i64*
  %_rtB__Sum_a_el190241 = load i64, i64* %187, align 1
  %_rtDW_191 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %188 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_191, i64 0, i32 14, i64 1
  %189 = bitcast double* %188 to i64*
  store i64 %_rtB__Sum_a_el190241, i64* %189, align 1
  %_rtDW_192.pre.pre = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  br label %false20

false24:                                          ; preds = %true25, %false20
  %_rtDW_204 = phi %DW_X8_T.44* [ %_rtDW_196, %false20 ], [ %_rtDW_200.pre.pre, %true25 ]
  %190 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_204, i64 0, i32 144
  %_rtDW__Hrgw_MODE = load i8, i8* %190, align 1
  %191 = and i8 %_rtDW__Hrgw_MODE, 1
  %192 = icmp eq i8 %191, 0
  %vm_ssIsSampleHitVar2_201 = load i32, i32* %vm_ssIsSampleHitVar2_, align 4
  %193 = icmp eq i32 %vm_ssIsSampleHitVar2_201, 0
  %or.cond294 = or i1 %192, %193
  br i1 %or.cond294, label %false28, label %true29

true25:                                           ; preds = %false20
  %_rtB_195 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %194 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_195, i64 0, i32 126, i64 0
  %195 = bitcast double* %194 to i64*
  %_rtB__Sum_g_el236 = load i64, i64* %195, align 1
  %196 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_196, i64 0, i32 9
  %197 = bitcast [2 x double]* %196 to i64*
  store i64 %_rtB__Sum_g_el236, i64* %197, align 1
  %_rtB_197 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %198 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_197, i64 0, i32 126, i64 1
  %199 = bitcast double* %198 to i64*
  %_rtB__Sum_g_el198237 = load i64, i64* %199, align 1
  %_rtDW_199 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %200 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_199, i64 0, i32 9, i64 1
  %201 = bitcast double* %200 to i64*
  store i64 %_rtB__Sum_g_el198237, i64* %201, align 1
  %_rtDW_200.pre.pre = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  br label %false24

false28:                                          ; preds = %true29, %false24
  %_rtDW_218 = phi %DW_X8_T.44* [ %_rtDW_204, %false24 ], [ %_rtDW_214.pre.pre, %true29 ]
  %202 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_218, i64 0, i32 143
  %_rtDW__Hugwz_MODE = load i8, i8* %202, align 1
  %203 = and i8 %_rtDW__Hugwz_MODE, 1
  %204 = icmp eq i8 %203, 0
  %vm_ssIsSampleHitVar2_215 = load i32, i32* %vm_ssIsSampleHitVar2_, align 4
  %205 = icmp eq i32 %vm_ssIsSampleHitVar2_215, 0
  %or.cond296 = or i1 %204, %205
  br i1 %or.cond296, label %false32, label %true33

true29:                                           ; preds = %false24
  %_rtB_203 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %206 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_203, i64 0, i32 133, i64 0
  %207 = bitcast double* %206 to i64*
  %_rtB__Sum1_el232 = load i64, i64* %207, align 1
  %208 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_204, i64 0, i32 11
  %209 = bitcast [2 x double]* %208 to i64*
  store i64 %_rtB__Sum1_el232, i64* %209, align 1
  %_rtB_205 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %210 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_205, i64 0, i32 126, i64 0
  %211 = bitcast double* %210 to i64*
  %_rtB__Sum_g_el206233 = load i64, i64* %211, align 1
  %_rtDW_207 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %212 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_207, i64 0, i32 12
  %213 = bitcast [2 x double]* %212 to i64*
  store i64 %_rtB__Sum_g_el206233, i64* %213, align 1
  %_rtB_208 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %214 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_208, i64 0, i32 133, i64 1
  %215 = bitcast double* %214 to i64*
  %_rtB__Sum1_el209234 = load i64, i64* %215, align 1
  %_rtDW_210 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %216 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_210, i64 0, i32 11, i64 1
  %217 = bitcast double* %216 to i64*
  store i64 %_rtB__Sum1_el209234, i64* %217, align 1
  %_rtB_211 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %218 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_211, i64 0, i32 126, i64 1
  %219 = bitcast double* %218 to i64*
  %_rtB__Sum_g_el212235 = load i64, i64* %219, align 1
  %_rtDW_213 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %220 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_213, i64 0, i32 12, i64 1
  %221 = bitcast double* %220 to i64*
  store i64 %_rtB__Sum_g_el212235, i64* %221, align 1
  %_rtDW_214.pre.pre = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  br label %false28

false32:                                          ; preds = %true33, %false28
  %vm_ssIsSampleHitVar1_222.pre = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  br label %false

true33:                                           ; preds = %false28
  %_rtB_217 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %222 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_217, i64 0, i32 129, i64 0
  %223 = bitcast double* %222 to i64*
  %_rtB__Sum_mc_el230 = load i64, i64* %223, align 1
  %224 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_218, i64 0, i32 10
  %225 = bitcast [2 x double]* %224 to i64*
  store i64 %_rtB__Sum_mc_el230, i64* %225, align 1
  %_rtB_219 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %226 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_219, i64 0, i32 129, i64 1
  %227 = bitcast double* %226 to i64*
  %_rtB__Sum_mc_el220231 = load i64, i64* %227, align 1
  %_rtDW_221 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %228 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_221, i64 0, i32 10, i64 1
  %229 = bitcast double* %228 to i64*
  store i64 %_rtB__Sum_mc_el220231, i64* %229, align 1
  br label %false32

true35:                                           ; preds = %false
  %S_224 = load i8*, i8** %S_, align 8
  call void @Update1(i8* %S_224)
  br label %false36

false36:                                          ; preds = %false, %true35
  ret void

merge38:                                          ; preds = %true5, %true7, %false8, %true3
  %storemerge262 = phi [3 x double]* [ %68, %true3 ], [ %73, %true5 ], [ %77, %true7 ], [ %79, %false8 ]
  store [3 x double]* %storemerge262, [3 x double]** %lastU_, align 8
  %_rtB_98 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %230 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_98, i64 0, i32 12, i64 10
  %231 = bitcast double* %230 to i64*
  %_rtB__Integrator_el226 = load i64, i64* %231, align 1
  %lastU_99227.cast = bitcast [3 x double]* %storemerge262 to i64*
  store i64 %_rtB__Integrator_el226, i64* %lastU_99227.cast, align 1
  %_rtB_100 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %232 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_100, i64 0, i32 12, i64 11
  %233 = bitcast double* %232 to i64*
  %_rtB__Integrator_el101228 = load i64, i64* %233, align 1
  %234 = getelementptr inbounds [3 x double], [3 x double]* %storemerge262, i64 0, i64 1
  %235 = bitcast double* %234 to i64*
  store i64 %_rtB__Integrator_el101228, i64* %235, align 1
  %_rtB_103 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %236 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_103, i64 0, i32 12, i64 12
  %237 = bitcast double* %236 to i64*
  %_rtB__Integrator_el104229 = load i64, i64* %237, align 1
  %lastU_105 = load [3 x double]*, [3 x double]** %lastU_, align 8
  %238 = getelementptr inbounds [3 x double], [3 x double]* %lastU_105, i64 0, i64 2
  %239 = bitcast double* %238 to i64*
  store i64 %_rtB__Integrator_el104229, i64* %239, align 1
  br i1 %13, label %false10, label %true9
}

declare double @vm_ssGetT(i8*)

declare i32 @vm_ssIsSampleHit(i8*, i32, i32)

declare i32 @vm_ssIsContinuousTask(i8*, i32)

define void @Outputs5(i8* %S, i32 %controlPortIdx) {
Outputs5_entry:
  %S_ = alloca i8*, align 8
  store i8* %S, i8** %S_, align 8
  %rtb_b2_ = alloca double, align 8
  %rtb_k_ = alloca double, align 8
  %rtb_Divide5_ = alloca double, align 8
  %rtb_r_ = alloca double, align 8
  %i_ = alloca i32, align 4
  %_rtB_ = alloca %B_X8_T.43*, align 8
  %_rtP_ = alloca %P_X8_T.48*, align 8
  %_rtDW_ = alloca %DW_X8_T.44*, align 8
  %vm_ssIsMajorTimeStepVar0_ = alloca i32, align 4
  %0 = call i32 @vm_ssIsMajorTimeStep(i8* %S)
  store i32 %0, i32* %vm_ssIsMajorTimeStepVar0_, align 4
  %1 = call i8* @vm_ssGetRootDWork(i8* %S)
  %2 = bitcast %DW_X8_T.44** %_rtDW_ to i8**
  store i8* %1, i8** %2, align 8
  %3 = call i8* @vm_ssGetModelRtp(i8* %S)
  %4 = bitcast %P_X8_T.48** %_rtP_ to i8**
  store i8* %3, i8** %4, align 8
  %5 = call i8* @vm__ssGetModelBlockIO(i8* %S)
  %6 = bitcast %B_X8_T.43** %_rtB_ to i8**
  store i8* %5, i8** %6, align 8
  %_rtP_17 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %7 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_17, i64 0, i32 213
  %8 = bitcast double* %7 to i64*
  %_rtP__Constant2_Value_n284 = load i64, i64* %8, align 1
  %9 = getelementptr inbounds i8, i8* %5, i64 1752
  %10 = bitcast i8* %9 to i64*
  store i64 %_rtP__Constant2_Value_n284, i64* %10, align 1
  %_rtP_19 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %11 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_19, i64 0, i32 214
  %12 = bitcast double* %11 to i64*
  %_rtP__Constant_Value_i285 = load i64, i64* %12, align 1
  %_rtB_20 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %13 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_20, i64 0, i32 81
  %14 = bitcast double* %13 to i64*
  store i64 %_rtP__Constant_Value_i285, i64* %14, align 1
  %_rtP_21 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %15 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_21, i64 0, i32 215
  %_rtP__NaturalFrequency_Value = load double, double* %15, align 1
  %tmp0 = fmul double %_rtP__NaturalFrequency_Value, %_rtP__NaturalFrequency_Value
  store double %tmp0, double* %rtb_b2_, align 8
  %16 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_21, i64 0, i32 218
  %_rtP__a1_Value = load double, double* %16, align 1
  %17 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_21, i64 0, i32 219
  %_rtP__samplingtime_Value = load double, double* %17, align 1
  %tmp1 = fdiv double %_rtP__a1_Value, %_rtP__samplingtime_Value
  store double %tmp1, double* %rtb_k_, align 8
  %_rtP__NaturalFrequency_Value27 = load double, double* %15, align 1
  %18 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_21, i64 0, i32 216
  %_rtP__Damping_Value = load double, double* %18, align 1
  %tmp2 = fmul double %_rtP__NaturalFrequency_Value27, %_rtP__Damping_Value
  %19 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_21, i64 0, i32 217
  %_rtP__Gain_Gain_g3 = load double, double* %19, align 1
  %tmp3 = fmul double %tmp2, %_rtP__Gain_Gain_g3
  %tmp4 = fmul double %tmp3, %tmp1
  store double %tmp4, double* %rtb_Divide5_, align 8
  %tmp5 = fmul double %tmp1, %tmp1
  %20 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_21, i64 0, i32 220
  %_rtP__a0_Value = load double, double* %20, align 1
  %tmp6 = fmul double %tmp5, %_rtP__a0_Value
  store double %tmp6, double* %rtb_k_, align 8
  %tmp7 = fadd double %tmp0, %tmp4
  %tmp8 = fadd double %tmp6, %tmp7
  store double %tmp8, double* %rtb_r_, align 8
  %tmp9 = fdiv double %tmp0, %tmp8
  %_rtB_39 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %21 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_39, i64 0, i32 82
  store double %tmp9, double* %21, align 1
  %rtb_b2_40 = load double, double* %rtb_b2_, align 8
  %tmp10 = fsub double %rtb_b2_40, %tmp6
  %_rtP_42 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %22 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_42, i64 0, i32 221
  %_rtP__Gain2_Gain_c = load double, double* %22, align 1
  %tmp11 = fmul double %tmp10, %_rtP__Gain2_Gain_c
  %tmp12 = fdiv double %tmp11, %tmp8
  %_rtB_44 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %23 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_44, i64 0, i32 83
  store double %tmp12, double* %23, align 1
  %rtb_Divide5_46 = load double, double* %rtb_Divide5_, align 8
  %tmp13 = fsub double %tmp6, %rtb_Divide5_46
  %rtb_b2_47 = load double, double* %rtb_b2_, align 8
  %tmp14 = fadd double %tmp13, %rtb_b2_47
  %tmp15 = fdiv double %tmp14, %tmp8
  %_rtB_49 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %24 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_49, i64 0, i32 84
  store double %tmp15, double* %24, align 1
  %_rtP_50 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %25 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_50, i64 0, i32 222
  %_rtP__Gain1_Gain_g = load double, double* %25, align 1
  %_rtB_51 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %26 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_51, i64 0, i32 82
  %_rtB__Divide6 = load double, double* %26, align 1
  %tmp16 = fmul double %_rtP__Gain1_Gain_g, %_rtB__Divide6
  %27 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_51, i64 0, i32 85
  store double %tmp16, double* %27, align 1
  %_rtP_53 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %28 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_53, i64 0, i32 223
  %29 = bitcast double* %28 to i64*
  %_rtP__a2_Value286 = load i64, i64* %29, align 1
  %_rtB_54 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %30 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_54, i64 0, i32 86
  %31 = bitcast double* %30 to i64*
  store i64 %_rtP__a2_Value286, i64* %31, align 1
  %_rtP_55 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %32 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_55, i64 0, i32 211, i64 0
  %33 = bitcast double* %32 to i64*
  %_rtP__Constant_Value_d_el287 = load i64, i64* %33, align 1
  %_rtB_56 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %34 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_56, i64 0, i32 78
  %35 = bitcast [3 x double]* %34 to i64*
  store i64 %_rtP__Constant_Value_d_el287, i64* %35, align 1
  %_rtP_57 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %36 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_57, i64 0, i32 212, i64 0
  %37 = bitcast double* %36 to i64*
  %_rtP__Constant1_Value_j_el288 = load i64, i64* %37, align 1
  %_rtB_58 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %38 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_58, i64 0, i32 79
  %39 = bitcast [3 x double]* %38 to i64*
  store i64 %_rtP__Constant1_Value_j_el288, i64* %39, align 1
  %_rtP_59 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %40 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_59, i64 0, i32 224, i64 0
  %41 = bitcast double* %40 to i64*
  %_rtP__Measurementbias_Value_el289 = load i64, i64* %41, align 1
  %_rtB_60 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %42 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_60, i64 0, i32 87
  %43 = bitcast [3 x double]* %42 to i64*
  store i64 %_rtP__Measurementbias_Value_el289, i64* %43, align 1
  %_rtP_61 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %44 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_61, i64 0, i32 211, i64 1
  %45 = bitcast double* %44 to i64*
  %_rtP__Constant_Value_d_el62290 = load i64, i64* %45, align 1
  %_rtB_63 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %46 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_63, i64 0, i32 78, i64 1
  %47 = bitcast double* %46 to i64*
  store i64 %_rtP__Constant_Value_d_el62290, i64* %47, align 1
  %_rtP_64 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %48 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_64, i64 0, i32 212, i64 1
  %49 = bitcast double* %48 to i64*
  %_rtP__Constant1_Value_j_el65291 = load i64, i64* %49, align 1
  %_rtB_66 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %50 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_66, i64 0, i32 79, i64 1
  %51 = bitcast double* %50 to i64*
  store i64 %_rtP__Constant1_Value_j_el65291, i64* %51, align 1
  %_rtP_67 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %52 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_67, i64 0, i32 224, i64 1
  %53 = bitcast double* %52 to i64*
  %_rtP__Measurementbias_Value_el68292 = load i64, i64* %53, align 1
  %_rtB_69 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %54 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_69, i64 0, i32 87, i64 1
  %55 = bitcast double* %54 to i64*
  store i64 %_rtP__Measurementbias_Value_el68292, i64* %55, align 1
  %_rtP_70 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %56 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_70, i64 0, i32 211, i64 2
  %57 = bitcast double* %56 to i64*
  %_rtP__Constant_Value_d_el71293 = load i64, i64* %57, align 1
  %_rtB_72 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %58 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_72, i64 0, i32 78, i64 2
  %59 = bitcast double* %58 to i64*
  store i64 %_rtP__Constant_Value_d_el71293, i64* %59, align 1
  %_rtP_73 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %60 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_73, i64 0, i32 212, i64 2
  %61 = bitcast double* %60 to i64*
  %_rtP__Constant1_Value_j_el74294 = load i64, i64* %61, align 1
  %_rtB_75 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %62 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_75, i64 0, i32 79, i64 2
  %63 = bitcast double* %62 to i64*
  store i64 %_rtP__Constant1_Value_j_el74294, i64* %63, align 1
  %_rtP_76 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %64 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_76, i64 0, i32 224, i64 2
  %65 = bitcast double* %64 to i64*
  %_rtP__Measurementbias_Value_el77295 = load i64, i64* %65, align 1
  %_rtB_78 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %66 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_78, i64 0, i32 87, i64 2
  %67 = bitcast double* %66 to i64*
  store i64 %_rtP__Measurementbias_Value_el77295, i64* %67, align 1
  %_rtP_79 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %68 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_79, i64 0, i32 227
  %69 = bitcast double* %68 to i64*
  %_rtP__Constant_Value_d0296 = load i64, i64* %69, align 1
  %_rtB_80 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %70 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_80, i64 0, i32 90
  %71 = bitcast double* %70 to i64*
  store i64 %_rtP__Constant_Value_d0296, i64* %71, align 1
  %_rtP_81 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %72 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_81, i64 0, i32 228
  %_rtP__NaturalFrequency_Value_f = load double, double* %72, align 1
  %tmp17 = fmul double %_rtP__NaturalFrequency_Value_f, %_rtP__NaturalFrequency_Value_f
  store double %tmp17, double* %rtb_b2_, align 8
  %73 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_81, i64 0, i32 231
  %_rtP__a1_Value_o = load double, double* %73, align 1
  %74 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_81, i64 0, i32 232
  %_rtP__samplingtime_Value_a = load double, double* %74, align 1
  %tmp18 = fdiv double %_rtP__a1_Value_o, %_rtP__samplingtime_Value_a
  store double %tmp18, double* %rtb_k_, align 8
  %_rtP__NaturalFrequency_Value_f87 = load double, double* %72, align 1
  %75 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_81, i64 0, i32 229
  %_rtP__Damping_Value_m = load double, double* %75, align 1
  %tmp19 = fmul double %_rtP__NaturalFrequency_Value_f87, %_rtP__Damping_Value_m
  %76 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_81, i64 0, i32 230
  %_rtP__Gain_Gain_bj = load double, double* %76, align 1
  %tmp20 = fmul double %tmp19, %_rtP__Gain_Gain_bj
  %tmp21 = fmul double %tmp20, %tmp18
  store double %tmp21, double* %rtb_Divide5_, align 8
  %tmp22 = fmul double %tmp18, %tmp18
  %77 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_81, i64 0, i32 233
  %_rtP__a0_Value_c = load double, double* %77, align 1
  %tmp23 = fmul double %tmp22, %_rtP__a0_Value_c
  store double %tmp23, double* %rtb_k_, align 8
  %tmp24 = fadd double %tmp17, %tmp21
  %tmp25 = fadd double %tmp23, %tmp24
  store double %tmp25, double* %rtb_r_, align 8
  %tmp26 = fdiv double %tmp17, %tmp25
  %_rtB_99 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %78 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_99, i64 0, i32 91
  store double %tmp26, double* %78, align 1
  %rtb_b2_100 = load double, double* %rtb_b2_, align 8
  %tmp27 = fsub double %rtb_b2_100, %tmp23
  %_rtP_102 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %79 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_102, i64 0, i32 234
  %_rtP__Gain2_Gain_b = load double, double* %79, align 1
  %tmp28 = fmul double %tmp27, %_rtP__Gain2_Gain_b
  %tmp29 = fdiv double %tmp28, %tmp25
  %_rtB_104 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %80 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_104, i64 0, i32 92
  store double %tmp29, double* %80, align 1
  %rtb_Divide5_106 = load double, double* %rtb_Divide5_, align 8
  %tmp30 = fsub double %tmp23, %rtb_Divide5_106
  %rtb_b2_107 = load double, double* %rtb_b2_, align 8
  %tmp31 = fadd double %tmp30, %rtb_b2_107
  %tmp32 = fdiv double %tmp31, %tmp25
  %_rtB_109 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %81 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_109, i64 0, i32 93
  store double %tmp32, double* %81, align 1
  %_rtP_110 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %82 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_110, i64 0, i32 235
  %_rtP__Gain1_Gain_k = load double, double* %82, align 1
  %_rtB_111 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %83 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_111, i64 0, i32 91
  %_rtB__Divide6_d = load double, double* %83, align 1
  %tmp33 = fmul double %_rtP__Gain1_Gain_k, %_rtB__Divide6_d
  %84 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_111, i64 0, i32 94
  store double %tmp33, double* %84, align 1
  %_rtP_113 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %85 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_113, i64 0, i32 236
  %86 = bitcast double* %85 to i64*
  %_rtP__a2_Value_g297 = load i64, i64* %86, align 1
  %_rtB_114 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %87 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_114, i64 0, i32 95
  %88 = bitcast double* %87 to i64*
  store i64 %_rtP__a2_Value_g297, i64* %88, align 1
  %_rtP_115 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %89 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_115, i64 0, i32 226, i64 0
  %90 = bitcast double* %89 to i64*
  %_rtP__wl_ins_Value_el298 = load i64, i64* %90, align 1
  %_rtB_116 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %91 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_116, i64 0, i32 89
  %92 = bitcast [3 x double]* %91 to i64*
  store i64 %_rtP__wl_ins_Value_el298, i64* %92, align 1
  %_rtP_117 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %93 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_117, i64 0, i32 237, i64 0
  %94 = bitcast double* %93 to i64*
  %_rtP__Measurementbias_Value_b_el299 = load i64, i64* %94, align 1
  %_rtB_118 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %95 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_118, i64 0, i32 96
  %96 = bitcast [3 x double]* %95 to i64*
  store i64 %_rtP__Measurementbias_Value_b_el299, i64* %96, align 1
  %_rtP_119 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %97 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_119, i64 0, i32 226, i64 1
  %98 = bitcast double* %97 to i64*
  %_rtP__wl_ins_Value_el120300 = load i64, i64* %98, align 1
  %_rtB_121 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %99 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_121, i64 0, i32 89, i64 1
  %100 = bitcast double* %99 to i64*
  store i64 %_rtP__wl_ins_Value_el120300, i64* %100, align 1
  %_rtP_122 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %101 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_122, i64 0, i32 237, i64 1
  %102 = bitcast double* %101 to i64*
  %_rtP__Measurementbias_Value_b_el123301 = load i64, i64* %102, align 1
  %_rtB_124 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %103 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_124, i64 0, i32 96, i64 1
  %104 = bitcast double* %103 to i64*
  store i64 %_rtP__Measurementbias_Value_b_el123301, i64* %104, align 1
  %_rtP_125 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %105 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_125, i64 0, i32 226, i64 2
  %106 = bitcast double* %105 to i64*
  %_rtP__wl_ins_Value_el126302 = load i64, i64* %106, align 1
  %_rtB_127 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %107 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_127, i64 0, i32 89, i64 2
  %108 = bitcast double* %107 to i64*
  store i64 %_rtP__wl_ins_Value_el126302, i64* %108, align 1
  %_rtP_128 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %109 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_128, i64 0, i32 237, i64 2
  %110 = bitcast double* %109 to i64*
  %_rtP__Measurementbias_Value_b_el129303 = load i64, i64* %110, align 1
  %_rtB_130 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %111 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_130, i64 0, i32 96, i64 2
  %112 = bitcast double* %111 to i64*
  store i64 %_rtP__Measurementbias_Value_b_el129303, i64* %112, align 1
  %_rtB_131 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %113 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_131, i64 0, i32 88, i64 0
  %114 = bitcast double* %113 to i8*
  %_rtP_132 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %115 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_132, i64 0, i32 225, i64 0
  %116 = bitcast double* %115 to i8*
  %117 = call i8* @memcpy(i8* %114, i8* %116, i32 72)
  %_rtB_133 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %118 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_133, i64 0, i32 97, i64 0
  %119 = bitcast double* %118 to i8*
  %_rtP_134 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %120 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_134, i64 0, i32 238, i64 0
  %121 = bitcast double* %120 to i8*
  %122 = call i8* @memcpy(i8* %119, i8* %121, i32 72)
  %_rtP_135 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %123 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_135, i64 0, i32 239, i64 0
  %124 = bitcast double* %123 to i64*
  %_rtP__gsensitivebias_Value_el304 = load i64, i64* %124, align 1
  %_rtB_136 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %125 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_136, i64 0, i32 98
  %126 = bitcast [3 x double]* %125 to i64*
  store i64 %_rtP__gsensitivebias_Value_el304, i64* %126, align 1
  %_rtP_137 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %127 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_137, i64 0, i32 239, i64 1
  %128 = bitcast double* %127 to i64*
  %_rtP__gsensitivebias_Value_el138305 = load i64, i64* %128, align 1
  %_rtB_139 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %129 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_139, i64 0, i32 98, i64 1
  %130 = bitcast double* %129 to i64*
  store i64 %_rtP__gsensitivebias_Value_el138305, i64* %130, align 1
  %_rtP_140 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %131 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_140, i64 0, i32 239, i64 2
  %132 = bitcast double* %131 to i64*
  %_rtP__gsensitivebias_Value_el141306 = load i64, i64* %132, align 1
  %_rtB_142 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %133 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_142, i64 0, i32 98, i64 2
  %134 = bitcast double* %133 to i64*
  store i64 %_rtP__gsensitivebias_Value_el141306, i64* %134, align 1
  %_rtP_143 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %135 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_143, i64 0, i32 240
  %136 = bitcast double* %135 to i64*
  %_rtP__Constant_Value_g307 = load i64, i64* %136, align 1
  %_rtB_144 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %137 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_144, i64 0, i32 99
  %138 = bitcast double* %137 to i64*
  store i64 %_rtP__Constant_Value_g307, i64* %138, align 1
  %_rtP_145 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %139 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_145, i64 0, i32 241
  %140 = bitcast double* %139 to i64*
  %_rtP__PWMOffset_Value308 = load i64, i64* %140, align 1
  %_rtB_146 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %141 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_146, i64 0, i32 100
  %142 = bitcast double* %141 to i64*
  store i64 %_rtP__PWMOffset_Value308, i64* %142, align 1
  %_rtP_147 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %143 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_147, i64 0, i32 243, i64 0
  %144 = bitcast double* %143 to i64*
  %_rtP__Constant_Value_m_el309 = load i64, i64* %144, align 1
  %_rtB_148 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %145 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_148, i64 0, i32 102
  %146 = bitcast [3 x double]* %145 to i64*
  store i64 %_rtP__Constant_Value_m_el309, i64* %146, align 1
  %_rtP_149 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %147 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_149, i64 0, i32 243, i64 1
  %148 = bitcast double* %147 to i64*
  %_rtP__Constant_Value_m_el150310 = load i64, i64* %148, align 1
  %_rtB_151 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %149 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_151, i64 0, i32 102, i64 1
  %150 = bitcast double* %149 to i64*
  store i64 %_rtP__Constant_Value_m_el150310, i64* %150, align 1
  %_rtP_152 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %151 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_152, i64 0, i32 243, i64 2
  %152 = bitcast double* %151 to i64*
  %_rtP__Constant_Value_m_el153311 = load i64, i64* %152, align 1
  %_rtB_154 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %153 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_154, i64 0, i32 102, i64 2
  %154 = bitcast double* %153 to i64*
  store i64 %_rtP__Constant_Value_m_el153311, i64* %154, align 1
  br label %merge

true:                                             ; preds = %merge
  %155 = sext i32 %i_280 to i64
  %156 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_271, i64 0, i32 242, i64 %155
  %157 = bitcast double* %156 to i64*
  %_rtP__Constant_Value_e_el330 = load i64, i64* %157, align 1
  %_rtB_273 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %158 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_273, i64 0, i32 101, i64 %155
  %159 = bitcast double* %158 to i64*
  store i64 %_rtP__Constant_Value_e_el330, i64* %159, align 1
  %_rtP_275 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %160 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_275, i64 0, i32 244, i64 %155
  %161 = bitcast double* %160 to i64*
  %_rtP__Constant1_Value_n_el331 = load i64, i64* %161, align 1
  %_rtB_277 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %162 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_277, i64 0, i32 103, i64 %155
  %163 = bitcast double* %162 to i64*
  store i64 %_rtP__Constant1_Value_n_el331, i64* %163, align 1
  %_rtP_279 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %164 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_279, i64 0, i32 245, i64 %155
  %165 = bitcast double* %164 to i64*
  %_rtP__Constant2_Value_o_el332 = load i64, i64* %165, align 1
  %_rtB_281 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %166 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_281, i64 0, i32 104, i64 %155
  %167 = bitcast double* %166 to i64*
  store i64 %_rtP__Constant2_Value_o_el332, i64* %167, align 1
  %tmp56 = add i32 %i_280, 1
  br label %merge

false:                                            ; preds = %merge
  %168 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_271, i64 0, i32 246
  %169 = bitcast double* %168 to i64*
  %_rtP__Motor_Fault_Value312 = load i64, i64* %169, align 1
  %_rtB_157 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %170 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_157, i64 0, i32 105
  %171 = bitcast double* %170 to i64*
  store i64 %_rtP__Motor_Fault_Value312, i64* %171, align 1
  %S_158 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_158, i32 21, i32 444, i32 104)
  %_rtP_159 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %172 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_159, i64 0, i32 247
  %_rtP__Winddirection_Value = load double, double* %172, align 1
  %tmp36 = fmul double %_rtP__Winddirection_Value, 0x3F91DF46A2529D39
  %_rtB_160 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %173 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_160, i64 0, i32 106
  store double %tmp36, double* %173, align 1
  %_rtP_161 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %174 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_161, i64 0, i32 248
  %175 = bitcast double* %174 to i64*
  %_rtP__Constant1_Value_b313 = load i64, i64* %175, align 1
  %_rtB_162 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %176 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_162, i64 0, i32 107
  %177 = bitcast double* %176 to i64*
  store i64 %_rtP__Constant1_Value_b313, i64* %177, align 1
  %_rtP_163 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %178 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_163, i64 0, i32 249
  %179 = bitcast double* %178 to i64*
  %_rtP__Constant2_Value_e314 = load i64, i64* %179, align 1
  %_rtB_164 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %180 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_164, i64 0, i32 108
  %181 = bitcast double* %180 to i64*
  store i64 %_rtP__Constant2_Value_e314, i64* %181, align 1
  %_rtP_165 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %182 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_165, i64 0, i32 250
  %183 = bitcast double* %182 to i64*
  %_rtP__Constant3_Value_b315 = load i64, i64* %183, align 1
  %_rtB_166 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %184 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_166, i64 0, i32 109
  %185 = bitcast double* %184 to i64*
  store i64 %_rtP__Constant3_Value_b315, i64* %185, align 1
  %_rtP_167 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %186 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_167, i64 0, i32 251
  %_rtP__Windspeedat20ft6m_Value = load double, double* %186, align 1
  %tmp37 = fmul double %_rtP__Windspeedat20ft6m_Value, 0x400A3F28FCA3F28F
  %187 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_167, i64 0, i32 252
  %_rtP__sigma_wg_Gain = load double, double* %187, align 1
  %tmp38 = fmul double %tmp37, %_rtP__sigma_wg_Gain
  %_rtB_169 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %188 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_169, i64 0, i32 110
  store double %tmp38, double* %188, align 1
  %_rtP_170 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %189 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_170, i64 0, i32 253
  %_rtP__Wingspan_Value = load double, double* %189, align 1
  %tmp39 = fmul double %_rtP__Wingspan_Value, 0x400A3F28FCA3F28F
  %_rtB_171 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %190 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_171, i64 0, i32 111
  store double %tmp39, double* %190, align 1
  %_rtP_172 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %191 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_172, i64 0, i32 6
  %192 = bitcast double* %191 to i64*
  %_rtP__Constant_Value316 = load i64, i64* %192, align 1
  %_rtB_173 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %193 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_173, i64 0, i32 143
  %194 = bitcast double* %193 to i64*
  store i64 %_rtP__Constant_Value316, i64* %194, align 1
  %_rtP_174 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %195 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_174, i64 0, i32 7
  %196 = bitcast double* %195 to i64*
  %_rtP__Constant1_Value317 = load i64, i64* %196, align 1
  %_rtB_175 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %197 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_175, i64 0, i32 144
  %198 = bitcast double* %197 to i64*
  store i64 %_rtP__Constant1_Value317, i64* %198, align 1
  %_rtP_176 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %199 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_176, i64 0, i32 8
  %200 = bitcast double* %199 to i64*
  %_rtP__Constant2_Value318 = load i64, i64* %200, align 1
  %_rtB_177 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %201 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_177, i64 0, i32 145
  %202 = bitcast double* %201 to i64*
  store i64 %_rtP__Constant2_Value318, i64* %202, align 1
  %_rtP_178 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %203 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_178, i64 0, i32 9
  %204 = bitcast double* %203 to i64*
  %_rtP__Constant3_Value319 = load i64, i64* %204, align 1
  %_rtB_179 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %205 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_179, i64 0, i32 146
  %206 = bitcast double* %205 to i64*
  store i64 %_rtP__Constant3_Value319, i64* %206, align 1
  %vm_ssIsMajorTimeStepVar0_180 = load i32, i32* %vm_ssIsMajorTimeStepVar0_, align 4
  %207 = icmp eq i32 %vm_ssIsMajorTimeStepVar0_180, 0
  br i1 %207, label %false2, label %true1

true1:                                            ; preds = %false
  %_rtDW_181 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %208 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_181, i64 0, i32 140
  call void @vm_srUpdateBC(i8* %208)
  br label %false2

false2:                                           ; preds = %false, %true1
  %_rtP_182 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %209 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_182, i64 0, i32 14
  %210 = bitcast double* %209 to i64*
  %_rtP__Constant_Value_a320 = load i64, i64* %210, align 1
  %_rtB_183 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %211 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_183, i64 0, i32 139
  %212 = bitcast double* %211 to i64*
  store i64 %_rtP__Constant_Value_a320, i64* %212, align 1
  %_rtP_184 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %213 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_184, i64 0, i32 15
  %_rtP__dt1_Gain = load double, double* %213, align 1
  %_rtB_185 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %214 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_185, i64 0, i32 111
  %_rtB__UnitConversion_d = load double, double* %214, align 1
  %tmp40 = fmul double %_rtP__dt1_Gain, %_rtB__UnitConversion_d
  %215 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_185, i64 0, i32 140
  store double %tmp40, double* %215, align 1
  br i1 %207, label %false4, label %true3

true3:                                            ; preds = %false2
  %_rtDW_188 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %216 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_188, i64 0, i32 139
  call void @vm_srUpdateBC(i8* %216)
  br label %false4

false4:                                           ; preds = %false2, %true3
  %_rtP_189 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %217 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_189, i64 0, i32 20
  %218 = bitcast double* %217 to i64*
  %_rtP__Constant_Value_j321 = load i64, i64* %218, align 1
  %_rtB_190 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %219 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_190, i64 0, i32 134
  %220 = bitcast double* %219 to i64*
  store i64 %_rtP__Constant_Value_j321, i64* %220, align 1
  %_rtP_191 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %221 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_191, i64 0, i32 21
  %_rtP__dt1_Gain_h = load double, double* %221, align 1
  %_rtB_192 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %222 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_192, i64 0, i32 111
  %_rtB__UnitConversion_d193 = load double, double* %222, align 1
  %tmp41 = fmul double %_rtP__dt1_Gain_h, %_rtB__UnitConversion_d193
  %223 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_192, i64 0, i32 135
  store double %tmp41, double* %223, align 1
  br i1 %207, label %false6, label %true5

true5:                                            ; preds = %false4
  %_rtDW_196 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %224 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_196, i64 0, i32 138
  call void @vm_srUpdateBC(i8* %224)
  br label %false6

false6:                                           ; preds = %false4, %true5
  %_rtP_197 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %225 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_197, i64 0, i32 254
  %226 = bitcast double* %225 to i64*
  %_rtP__Constant3_Value_p322 = load i64, i64* %226, align 1
  %_rtB_198 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %227 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_198, i64 0, i32 112
  %228 = bitcast double* %227 to i64*
  store i64 %_rtP__Constant3_Value_p322, i64* %228, align 1
  %_rtP_199 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %229 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_199, i64 0, i32 255
  %_rtP__MediumHighAltitude_Value = load double, double* %229, align 1
  %tmp42 = fmul double %_rtP__MediumHighAltitude_Value, 0x400A3F28FCA3F28F
  %_rtB_200 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %230 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_200, i64 0, i32 113
  store double %tmp42, double* %230, align 1
  %_rtP_201 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %231 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_201, i64 0, i32 26
  %232 = bitcast double* %231 to i64*
  %_rtP__Constant_Value_l323 = load i64, i64* %232, align 1
  %_rtB_202 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %233 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_202, i64 0, i32 130
  %234 = bitcast double* %233 to i64*
  store i64 %_rtP__Constant_Value_l323, i64* %234, align 1
  br i1 %207, label %false10.critedge, label %true7

true7:                                            ; preds = %false6
  %_rtDW_204 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %235 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_204, i64 0, i32 137
  call void @vm_srUpdateBC(i8* %235)
  %_rtP_205 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %236 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_205, i64 0, i32 31
  %237 = bitcast double* %236 to i64*
  %_rtP__Constant_Value_lx324 = load i64, i64* %237, align 1
  %_rtB_206 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %238 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_206, i64 0, i32 127
  %239 = bitcast double* %238 to i64*
  store i64 %_rtP__Constant_Value_lx324, i64* %239, align 1
  %_rtDW_208 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %240 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_208, i64 0, i32 136
  call void @vm_srUpdateBC(i8* %240)
  br label %false10

false10.critedge:                                 ; preds = %false6
  %_rtP_205.c = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %241 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_205.c, i64 0, i32 31
  %242 = bitcast double* %241 to i64*
  %_rtP__Constant_Value_lx324.c = load i64, i64* %242, align 1
  %_rtB_206.c = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %243 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_206.c, i64 0, i32 127
  %244 = bitcast double* %243 to i64*
  store i64 %_rtP__Constant_Value_lx324.c, i64* %244, align 1
  br label %false10

false10:                                          ; preds = %false10.critedge, %true7
  %_rtP_209 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %245 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_209, i64 0, i32 36
  %246 = bitcast double* %245 to i64*
  %_rtP__Constant_Value_b325 = load i64, i64* %246, align 1
  %_rtB_210 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %247 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_210, i64 0, i32 124
  %248 = bitcast double* %247 to i64*
  store i64 %_rtP__Constant_Value_b325, i64* %248, align 1
  br i1 %207, label %false12, label %true11

true11:                                           ; preds = %false10
  %_rtDW_212 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %249 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_212, i64 0, i32 135
  call void @vm_srUpdateBC(i8* %249)
  br label %false12

false12:                                          ; preds = %false10, %true11
  %_rtP_213 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %250 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_213, i64 0, i32 256
  %251 = bitcast double* %250 to i64*
  %_rtP__ProbabilityofExceedance_Value326 = load i64, i64* %251, align 1
  %252 = bitcast double* %rtb_b2_ to i64*
  store i64 %_rtP__ProbabilityofExceedance_Value326, i64* %252, align 8
  %253 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_213, i64 0, i32 292
  %_rtP__PreLookUpIndexSearchprobofexceed_DiagnosticForOutOfRangeInput = load i8, i8* %253, align 1
  %_rtP__ProbabilityofExceedance_Value216 = load double, double* %250, align 1
  %254 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_213, i64 0, i32 257, i64 0
  %_rtP__PreLookUpIndexSearchprobofexceed_BreakpointsData_el = load double, double* %254, align 1
  %255 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_213, i64 0, i32 257, i64 6
  %_rtP__PreLookUpIndexSearchprobofexceed_BreakpointsData_el219 = load double, double* %255, align 1
  call void @X8_oorCheck(i8 %_rtP__PreLookUpIndexSearchprobofexceed_DiagnosticForOutOfRangeInput, double %_rtP__ProbabilityofExceedance_Value216, double %_rtP__PreLookUpIndexSearchprobofexceed_BreakpointsData_el, double %_rtP__PreLookUpIndexSearchprobofexceed_BreakpointsData_el219, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([160 x i8], [160 x i8]* @2, i64 0, i64 0), i8* %S_158)
  %256 = bitcast i64 %_rtP__ProbabilityofExceedance_Value326 to double
  %_rtP_222 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %257 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_222, i64 0, i32 257, i64 0
  %_rtB_223 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %258 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_223, i64 0, i32 114
  %_rtDW_224 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %259 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_224, i64 0, i32 125
  %260 = call i32 @plook_bincpa(double %256, double* %257, i32 6, double* %258, i32* %259)
  %_rtB_225 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %261 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_225, i64 0, i32 172
  store i32 %260, i32* %261, align 1
  %_rtP_226 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %262 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_226, i64 0, i32 259
  %_rtP__Constant1_Value_nj = load double, double* %262, align 1
  %263 = call double @muDoubleScalarSqrt(double %_rtP__Constant1_Value_nj)
  store double %263, double* %rtb_b2_, align 8
  %_rtP_227 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %264 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_227, i64 0, i32 258, i64 0
  %_rtP__Constant_Value_aw_el = load double, double* %264, align 1
  %265 = call double @muDoubleScalarSqrt(double %_rtP__Constant_Value_aw_el)
  %tmp43 = fdiv double %265, %263
  %_rtB_229 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %266 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_229, i64 0, i32 115, i64 0
  store double %tmp43, double* %266, align 1
  %_rtP_230 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %267 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_230, i64 0, i32 258, i64 1
  %_rtP__Constant_Value_aw_el231 = load double, double* %267, align 1
  %268 = call double @muDoubleScalarSqrt(double %_rtP__Constant_Value_aw_el231)
  %rtb_b2_232 = load double, double* %rtb_b2_, align 8
  %tmp44 = fdiv double %268, %rtb_b2_232
  %_rtB_233 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %269 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_233, i64 0, i32 115, i64 1
  store double %tmp44, double* %269, align 1
  %_rtP_234 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %270 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_234, i64 0, i32 258, i64 2
  %_rtP__Constant_Value_aw_el235 = load double, double* %270, align 1
  %271 = call double @muDoubleScalarSqrt(double %_rtP__Constant_Value_aw_el235)
  %rtb_b2_236 = load double, double* %rtb_b2_, align 8
  %tmp45 = fdiv double %271, %rtb_b2_236
  %_rtB_237 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %272 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_237, i64 0, i32 115, i64 2
  store double %tmp45, double* %272, align 1
  %_rtP_238 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %273 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_238, i64 0, i32 258, i64 3
  %_rtP__Constant_Value_aw_el239 = load double, double* %273, align 1
  %274 = call double @muDoubleScalarSqrt(double %_rtP__Constant_Value_aw_el239)
  %rtb_b2_240 = load double, double* %rtb_b2_, align 8
  %tmp46 = fdiv double %274, %rtb_b2_240
  %_rtB_241 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %275 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_241, i64 0, i32 115, i64 3
  store double %tmp46, double* %275, align 1
  %_rtP_242 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %276 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_242, i64 0, i32 260
  %_rtP__WindDirection_Value = load double, double* %276, align 1
  %tmp47 = fmul double %_rtP__WindDirection_Value, 0x3F91DF46A2529D39
  call void @muDoubleScalarSinCos(double %tmp47, double* nonnull %rtb_b2_, double* nonnull %rtb_Divide5_)
  %_rtP_243 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %277 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_243, i64 0, i32 262
  %_rtP___Gain = load double, double* %277, align 1
  %rtb_Divide5_244 = load double, double* %rtb_Divide5_, align 8
  %tmp48 = fmul double %_rtP___Gain, %rtb_Divide5_244
  %278 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_243, i64 0, i32 263
  %_rtP__WindSpeed_Value = load double, double* %278, align 1
  %tmp49 = fmul double %tmp48, %_rtP__WindSpeed_Value
  %_rtB_246 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %279 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_246, i64 0, i32 116, i64 0
  store double %tmp49, double* %279, align 1
  %_rtP_247 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %280 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_247, i64 0, i32 262
  %_rtP___Gain248 = load double, double* %280, align 1
  %rtb_b2_249 = load double, double* %rtb_b2_, align 8
  %tmp50 = fmul double %_rtP___Gain248, %rtb_b2_249
  %281 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_247, i64 0, i32 263
  %_rtP__WindSpeed_Value251 = load double, double* %281, align 1
  %tmp51 = fmul double %tmp50, %_rtP__WindSpeed_Value251
  %_rtB_252 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %282 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_252, i64 0, i32 116, i64 1
  store double %tmp51, double* %282, align 1
  %_rtP_253 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %283 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_253, i64 0, i32 262
  %_rtP___Gain254 = load double, double* %283, align 1
  %284 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_253, i64 0, i32 261
  %_rtP__Wdeg1_Value = load double, double* %284, align 1
  %tmp52 = fmul double %_rtP___Gain254, %_rtP__Wdeg1_Value
  %285 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_253, i64 0, i32 263
  %_rtP__WindSpeed_Value257 = load double, double* %285, align 1
  %tmp53 = fmul double %tmp52, %_rtP__WindSpeed_Value257
  %_rtB_258 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %286 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_258, i64 0, i32 116, i64 2
  store double %tmp53, double* %286, align 1
  %_rtP_259 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %287 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_259, i64 0, i32 264
  %288 = bitcast double* %287 to i64*
  %_rtP__Constant_Value_f327 = load i64, i64* %288, align 1
  %_rtB_260 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %289 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_260, i64 0, i32 117
  %290 = bitcast double* %289 to i64*
  store i64 %_rtP__Constant_Value_f327, i64* %290, align 1
  %_rtP_261 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %291 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_261, i64 0, i32 38
  %292 = bitcast double* %291 to i64*
  %_rtP__max_height_low_Value328 = load i64, i64* %292, align 1
  %_rtB_262 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %293 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_262, i64 0, i32 120
  %294 = bitcast double* %293 to i64*
  store i64 %_rtP__max_height_low_Value328, i64* %294, align 1
  %_rtP_263 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %295 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_263, i64 0, i32 39
  %_rtP__min_height_high_Value = load double, double* %295, align 1
  %_rtB_264 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %296 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_264, i64 0, i32 120
  %_rtB__max_height_low_j = load double, double* %296, align 1
  %tmp54 = fsub double %_rtP__min_height_high_Value, %_rtB__max_height_low_j
  %297 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_264, i64 0, i32 121
  store double %tmp54, double* %297, align 1
  %_rtP_266 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %298 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_266, i64 0, i32 41
  %299 = bitcast double* %298 to i64*
  %_rtP__max_height_low_Value_c329 = load i64, i64* %299, align 1
  %_rtB_267 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %300 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_267, i64 0, i32 118
  %301 = bitcast double* %300 to i64*
  store i64 %_rtP__max_height_low_Value_c329, i64* %301, align 1
  %_rtP_268 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %302 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_268, i64 0, i32 42
  %_rtP__min_height_high_Value_m = load double, double* %302, align 1
  %_rtB_269 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %303 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_269, i64 0, i32 118
  %_rtB__max_height_low = load double, double* %303, align 1
  %tmp55 = fsub double %_rtP__min_height_high_Value_m, %_rtB__max_height_low
  %304 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_269, i64 0, i32 119
  store double %tmp55, double* %304, align 1
  ret void

merge:                                            ; preds = %true, %Outputs5_entry
  %i_280 = phi i32 [ %tmp56, %true ], [ 0, %Outputs5_entry ]
  store i32 %i_280, i32* %i_, align 4
  %305 = icmp slt i32 %i_280, 6
  %_rtP_271 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  br i1 %305, label %true, label %false
}

declare i32 @vm_ssIsMajorTimeStep(i8*)

declare void @vm_srUpdateBC(i8*)

define i32 @plook_bincpa(double %u, double* %bp, i32 %maxIndex, double* %fraction, i32* %prevIndex) {
plook_bincpa_entry:
  %u_ = alloca double, align 8
  store double %u, double* %u_, align 8
  %bp_ = alloca double*, align 8
  store double* %bp, double** %bp_, align 8
  %maxIndex_ = alloca i32, align 4
  store i32 %maxIndex, i32* %maxIndex_, align 4
  %fraction_ = alloca double*, align 8
  store double* %fraction, double** %fraction_, align 8
  %prevIndex_ = alloca i32*, align 8
  store i32* %prevIndex, i32** %prevIndex_, align 8
  %bpIndex_ = alloca i32, align 4
  %bp__el = load double, double* %bp, align 1
  %0 = fcmp ugt double %u, %bp__el
  br i1 %0, label %false, label %true

true:                                             ; preds = %plook_bincpa_entry
  store i32 0, i32* %bpIndex_, align 4
  store double 0.000000e+00, double* %fraction, align 1
  br label %merge3

false:                                            ; preds = %plook_bincpa_entry
  %1 = sext i32 %maxIndex to i64
  %2 = getelementptr inbounds double, double* %bp, i64 %1
  %bp__el9 = load double, double* %2, align 1
  %3 = fcmp olt double %u, %bp__el9
  br i1 %3, label %true1, label %false2

true1:                                            ; preds = %false
  %prevIndex_15 = load i32, i32* %prevIndex, align 1
  %4 = call i32 @binsearch_u32d_prevIdx(double %u, double* %bp, i32 %prevIndex_15, i32 %maxIndex)
  store i32 %4, i32* %bpIndex_, align 4
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds double, double* %bp, i64 %5
  %bp__el20 = load double, double* %6, align 1
  %tmp0 = fsub double %u, %bp__el20
  %tmp1 = add i32 %4, 1
  %7 = sext i32 %tmp1 to i64
  %8 = getelementptr inbounds double, double* %bp, i64 %7
  %bp__el23 = load double, double* %8, align 1
  %tmp2 = fsub double %bp__el23, %bp__el20
  %tmp3 = fdiv double %tmp0, %tmp2
  store double %tmp3, double* %fraction, align 1
  br label %merge3

false2:                                           ; preds = %false
  store i32 %maxIndex, i32* %bpIndex_, align 4
  store double 0.000000e+00, double* %fraction, align 1
  br label %merge3

merge3:                                           ; preds = %false2, %true1, %true
  %bpIndex_31 = phi i32 [ 0, %true ], [ %4, %true1 ], [ %maxIndex, %false2 ]
  store i32 %bpIndex_31, i32* %prevIndex, align 1
  ret i32 %bpIndex_31
}

declare void @muDoubleScalarSinCos(double, double*, double*)

define void @Outputs3(i8* %S) {
Outputs3_entry:
  %0 = call i8* @vm_ssGetRootDWork(i8* %S)
  %1 = call i8* @vm_ssGetModelRtp(i8* %S)
  %2 = call i8* @vm__ssGetModelBlockIO(i8* %S)
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 21, i32 381, i32 104)
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 21, i32 382, i32 104)
  ret void
}

define void @Outputs2(i8* %S) {
Outputs2_entry:
  %S_ = alloca i8*, align 8
  store i8* %S, i8** %S_, align 8
  %_rtB_ = alloca %B_X8_T.43*, align 8
  %_rtP_ = alloca %P_X8_T.48*, align 8
  %_rtDW_ = alloca %DW_X8_T.44*, align 8
  %0 = call i8* @vm_ssGetRootDWork(i8* %S)
  %1 = bitcast %DW_X8_T.44** %_rtDW_ to i8**
  store i8* %0, i8** %1, align 8
  %2 = call i8* @vm_ssGetModelRtp(i8* %S)
  %3 = bitcast %P_X8_T.48** %_rtP_ to i8**
  store i8* %2, i8** %3, align 8
  %4 = call i8* @vm__ssGetModelBlockIO(i8* %S)
  %5 = bitcast %B_X8_T.43** %_rtB_ to i8**
  store i8* %4, i8** %5, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 0, i32 0, i32 104)
  %6 = getelementptr inbounds i8, i8* %4, i64 3424
  %7 = bitcast i8* %6 to double*
  %_rtB__motors_el = load double, double* %7, align 1
  %8 = getelementptr inbounds i8, i8* %4, i64 2104
  %9 = bitcast i8* %8 to double*
  %_rtB__PWMOffset = load double, double* %9, align 1
  %tmp0 = fsub double %_rtB__motors_el, %_rtB__PWMOffset
  %10 = bitcast i8* %2 to %P_X8_T.48*
  %11 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %10, i64 0, i32 205
  %_rtP__Gain1_Gain_n = load double, double* %11, align 1
  %tmp1 = fmul double %tmp0, %_rtP__Gain1_Gain_n
  %12 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %10, i64 0, i32 207
  %_rtP__Gain3_Gain = load double, double* %12, align 1
  %tmp2 = fmul double %tmp1, %_rtP__Gain3_Gain
  %13 = bitcast i8* %0 to %DW_X8_T.44*
  %14 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %13, i64 0, i32 18, i64 0
  store double %tmp2, double* %14, align 1
  %15 = bitcast i8* %4 to %B_X8_T.43*
  %16 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %15, i64 0, i32 166, i64 0
  %_rtB__motors_el11 = load double, double* %16, align 1
  %17 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %15, i64 0, i32 100
  %_rtB__PWMOffset13 = load double, double* %17, align 1
  %tmp3 = fsub double %_rtB__motors_el11, %_rtB__PWMOffset13
  %18 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %10, i64 0, i32 204
  %_rtP__Gain_Gain_bw = load double, double* %18, align 1
  %tmp4 = fmul double %tmp3, %_rtP__Gain_Gain_bw
  %19 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %10, i64 0, i32 206
  %_rtP__Gain2_Gain = load double, double* %19, align 1
  %tmp5 = fmul double %tmp4, %_rtP__Gain2_Gain
  %20 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %13, i64 0, i32 18, i64 1
  store double %tmp5, double* %20, align 1
  %21 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %15, i64 0, i32 99
  %22 = bitcast double* %21 to i64*
  %_rtB__Constant_f23 = load i64, i64* %22, align 1
  %23 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %13, i64 0, i32 18, i64 2
  %24 = bitcast double* %23 to i64*
  store i64 %_rtB__Constant_f23, i64* %24, align 1
  %25 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %10, i64 0, i32 208
  %_rtP__Gain4_Gain = load double, double* %25, align 1
  %26 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %15, i64 0, i32 166, i64 2
  %_rtB__motors_el21 = load double, double* %26, align 1
  %tmp6 = fmul double %_rtP__Gain4_Gain, %_rtB__motors_el21
  %27 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %13, i64 0, i32 18, i64 3
  store double %tmp6, double* %27, align 1
  ret void
}

define void @Outputs1(i8* %S) {
Outputs1_entry:
  %S_ = alloca i8*, align 8
  store i8* %S, i8** %S_, align 8
  %i_ = alloca i32, align 4
  %_rtB_ = alloca %B_X8_T.43*, align 8
  %_rtDW_ = alloca %DW_X8_T.44*, align 8
  %0 = call i8* @vm_ssGetRootDWork(i8* %S)
  %1 = bitcast %DW_X8_T.44** %_rtDW_ to i8**
  store i8* %0, i8** %1, align 8
  %2 = call i8* @vm_ssGetModelRtp(i8* %S)
  %3 = call i8* @vm__ssGetModelBlockIO(i8* %S)
  %4 = bitcast %B_X8_T.43** %_rtB_ to i8**
  store i8* %3, i8** %4, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 21, i32 367, i32 104)
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 21, i32 368, i32 104)
  %5 = bitcast i8* %0 to %DW_X8_T.44*
  %6 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %5, i64 0, i32 20, i64 0
  %7 = bitcast double* %6 to i64*
  %_rtDW__RateTransition3_Buffer_el57 = load i64, i64* %7, align 1
  %8 = bitcast i8* %3 to %B_X8_T.43*
  %9 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %8, i64 0, i32 70
  %10 = bitcast [4 x double]* %9 to i64*
  store i64 %_rtDW__RateTransition3_Buffer_el57, i64* %10, align 1
  %11 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %5, i64 0, i32 20, i64 1
  %12 = bitcast double* %11 to i64*
  %_rtDW__RateTransition3_Buffer_el958 = load i64, i64* %12, align 1
  %13 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %8, i64 0, i32 70, i64 1
  %14 = bitcast double* %13 to i64*
  store i64 %_rtDW__RateTransition3_Buffer_el958, i64* %14, align 1
  %15 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %5, i64 0, i32 20, i64 2
  %16 = bitcast double* %15 to i64*
  %_rtDW__RateTransition3_Buffer_el1259 = load i64, i64* %16, align 1
  %17 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %8, i64 0, i32 70, i64 2
  %18 = bitcast double* %17 to i64*
  store i64 %_rtDW__RateTransition3_Buffer_el1259, i64* %18, align 1
  %19 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %5, i64 0, i32 20, i64 3
  %20 = bitcast double* %19 to i64*
  %_rtDW__RateTransition3_Buffer_el1560 = load i64, i64* %20, align 1
  %21 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %8, i64 0, i32 70, i64 3
  %22 = bitcast double* %21 to i64*
  store i64 %_rtDW__RateTransition3_Buffer_el1560, i64* %22, align 1
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 21, i32 369, i32 104)
  %23 = ptrtoint i8* %0 to i64
  %24 = inttoptr i64 %23 to %DW_X8_T.44*
  %25 = ptrtoint i8* %3 to i64
  %26 = inttoptr i64 %25 to %B_X8_T.43*
  br label %merge

true:                                             ; preds = %merge
  %27 = sext i32 %i_53 to i64
  %28 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %24, i64 0, i32 21, i64 %27
  %29 = bitcast double* %28 to i64*
  %_rtDW__RateTransition4_Buffer_el73 = load i64, i64* %29, align 1
  %30 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %26, i64 0, i32 71, i64 %27
  %31 = bitcast double* %30 to i64*
  store i64 %_rtDW__RateTransition4_Buffer_el73, i64* %31, align 1
  %tmp0 = add i32 %i_53, 1
  br label %merge

false:                                            ; preds = %merge
  call void @vm_ssCallAccelRunBlock(i8* %S, i32 21, i32 370, i32 104)
  %32 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %24, i64 0, i32 31, i64 0
  %33 = bitcast double* %32 to i64*
  %_rtDW__RateTransition8_Buffer_el61 = load i64, i64* %33, align 1
  %34 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %26, i64 0, i32 72
  %35 = bitcast [3 x double]* %34 to i64*
  store i64 %_rtDW__RateTransition8_Buffer_el61, i64* %35, align 1
  %_rtDW_22 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %36 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_22, i64 0, i32 31, i64 1
  %37 = bitcast double* %36 to i64*
  %_rtDW__RateTransition8_Buffer_el2362 = load i64, i64* %37, align 1
  %_rtB_24 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %38 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_24, i64 0, i32 72, i64 1
  %39 = bitcast double* %38 to i64*
  store i64 %_rtDW__RateTransition8_Buffer_el2362, i64* %39, align 1
  %40 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_22, i64 0, i32 31, i64 2
  %41 = bitcast double* %40 to i64*
  %_rtDW__RateTransition8_Buffer_el2663 = load i64, i64* %41, align 1
  %42 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_24, i64 0, i32 72, i64 2
  %43 = bitcast double* %42 to i64*
  store i64 %_rtDW__RateTransition8_Buffer_el2663, i64* %43, align 1
  %S_28 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_28, i32 21, i32 371, i32 104)
  %44 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_22, i64 0, i32 32
  %45 = bitcast double* %44 to i64*
  %_rtDW__RateTransition9_Buffer64 = load i64, i64* %45, align 1
  %46 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_24, i64 0, i32 73
  %47 = bitcast double* %46 to i64*
  store i64 %_rtDW__RateTransition9_Buffer64, i64* %47, align 1
  call void @vm_ssCallAccelRunBlock(i8* %S_28, i32 21, i32 372, i32 104)
  %48 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_22, i64 0, i32 19
  %49 = bitcast double* %48 to i64*
  %_rtDW__RateTransition1_Buffer65 = load i64, i64* %49, align 1
  %50 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_24, i64 0, i32 74
  %51 = bitcast double* %50 to i64*
  store i64 %_rtDW__RateTransition1_Buffer65, i64* %51, align 1
  %52 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_22, i64 0, i32 27, i64 0
  %53 = bitcast double* %52 to i64*
  %_rtDW__RateTransition5_Buffer_el66 = load i64, i64* %53, align 1
  %54 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_24, i64 0, i32 75
  %55 = bitcast [3 x double]* %54 to i64*
  store i64 %_rtDW__RateTransition5_Buffer_el66, i64* %55, align 1
  %56 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_22, i64 0, i32 29, i64 0
  %57 = bitcast double* %56 to i64*
  %_rtDW__RateTransition6_Buffer_el67 = load i64, i64* %57, align 1
  %58 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_24, i64 0, i32 76
  %59 = bitcast [3 x double]* %58 to i64*
  store i64 %_rtDW__RateTransition6_Buffer_el67, i64* %59, align 1
  %60 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_22, i64 0, i32 27, i64 1
  %61 = bitcast double* %60 to i64*
  %_rtDW__RateTransition5_Buffer_el3968 = load i64, i64* %61, align 1
  %62 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_24, i64 0, i32 75, i64 1
  %63 = bitcast double* %62 to i64*
  store i64 %_rtDW__RateTransition5_Buffer_el3968, i64* %63, align 1
  %64 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_22, i64 0, i32 29, i64 1
  %65 = bitcast double* %64 to i64*
  %_rtDW__RateTransition6_Buffer_el4269 = load i64, i64* %65, align 1
  %66 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_24, i64 0, i32 76, i64 1
  %67 = bitcast double* %66 to i64*
  store i64 %_rtDW__RateTransition6_Buffer_el4269, i64* %67, align 1
  %68 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_22, i64 0, i32 27, i64 2
  %69 = bitcast double* %68 to i64*
  %_rtDW__RateTransition5_Buffer_el4570 = load i64, i64* %69, align 1
  %70 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_24, i64 0, i32 75, i64 2
  %71 = bitcast double* %70 to i64*
  store i64 %_rtDW__RateTransition5_Buffer_el4570, i64* %71, align 1
  %72 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_22, i64 0, i32 29, i64 2
  %73 = bitcast double* %72 to i64*
  %_rtDW__RateTransition6_Buffer_el4871 = load i64, i64* %73, align 1
  %74 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_24, i64 0, i32 76, i64 2
  %75 = bitcast double* %74 to i64*
  store i64 %_rtDW__RateTransition6_Buffer_el4871, i64* %75, align 1
  %76 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_22, i64 0, i32 30
  %77 = bitcast double* %76 to i64*
  %_rtDW__RateTransition7_Buffer72 = load i64, i64* %77, align 1
  %78 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_24, i64 0, i32 77
  %79 = bitcast double* %78 to i64*
  store i64 %_rtDW__RateTransition7_Buffer72, i64* %79, align 1
  ret void

merge:                                            ; preds = %true, %Outputs1_entry
  %i_53 = phi i32 [ %tmp0, %true ], [ 0, %Outputs1_entry ]
  store i32 %i_53, i32* %i_, align 4
  %80 = icmp slt i32 %i_53, 6
  br i1 %80, label %true, label %false
}

define void @Outputs0(i8* %S) {
Outputs0_entry:
  %S_ = alloca i8*, align 8
  store i8* %S, i8** %S_, align 8
  %resetSolver_ = alloca i8, align 1
  %didZcEventOccur_ = alloca i8, align 1
  %lastU_ = alloca [3 x double]*, align 8
  %memOffset_ = alloca i32, align 4
  %rtb_Gain_j_ = alloca [3 x double], align 8
  %rtb_Sum_ae_ = alloca [3 x double], align 8
  %rtb_sincos_o2_ = alloca [3 x double], align 8
  %rtb_TriggerWave_ = alloca double, align 8
  %rtb_VectorConcatenate_f_ = alloca [9 x double], align 8
  %rtAction_ = alloca i8, align 1
  %rtb_Merge_ = alloca [3 x double], align 8
  %rtb_C_L_delta_e_ = alloca double, align 8
  %rtb_C_D_delta_e_ = alloca double, align 8
  %rtb_C_m_delta_e_ = alloca double, align 8
  %rtb_C_Y_delta_a_ = alloca double, align 8
  %rtb_C_Y_delta_r_ = alloca double, align 8
  %rtb_C_l_delta_a_ = alloca double, align 8
  %rtb_C_l_delta_r_ = alloca double, align 8
  %rtb_C_n_delta_a_ = alloca double, align 8
  %rtb_C_n_delta_r_ = alloca double, align 8
  %frac_ = alloca [2 x double], align 8
  %bpIndex_ = alloca [2 x i32], align 4
  %i_ = alloca i32, align 4
  %rtb_u2_ = alloca double, align 8
  %rtb_u2_idx_0_ = alloca double, align 8
  %rtb_u2_idx_2_ = alloca double, align 8
  %tmp_ = alloca double, align 8
  %tmp_0_ = alloca double, align 8
  %_rtB_ = alloca %B_X8_T.43*, align 8
  %_rtP_ = alloca %P_X8_T.48*, align 8
  %_rtX_ = alloca %X_X8_T.50*, align 8
  %_rtZCE_ = alloca %PrevZCX_X8_T.51*, align 8
  %_rtDW_ = alloca %DW_X8_T.44*, align 8
  %vm_ssIsContinuousTaskVar0_ = alloca i32, align 4
  %vm_ssIsSampleHitVar1_ = alloca i32, align 4
  %vm_ssIsSampleHitVar2_ = alloca i32, align 4
  %vm_ssIsSampleHitVar3_ = alloca i32, align 4
  %vm_ssIsSampleHitVar4_ = alloca i32, align 4
  %vm_ssIsMajorTimeStepVar5_ = alloca i32, align 4
  %vm_ssGetTaskTimeVar6_ = alloca double, align 8
  %vm_ssGetTVar7_ = alloca double, align 8
  %vm_ssGetTaskTimeVar8_ = alloca double, align 8
  %vm_ssGetTStartVar9_ = alloca double, align 8
  %0 = call double @vm_ssGetTStart(i8* %S)
  store double %0, double* %vm_ssGetTStartVar9_, align 8
  %S_365 = load i8*, i8** %S_, align 8
  %1 = call double @vm_ssGetTaskTime(i8* %S_365, i32 1)
  store double %1, double* %vm_ssGetTaskTimeVar8_, align 8
  %S_366 = load i8*, i8** %S_, align 8
  %2 = call double @vm_ssGetT(i8* %S_366)
  store double %2, double* %vm_ssGetTVar7_, align 8
  %S_367 = load i8*, i8** %S_, align 8
  %3 = call double @vm_ssGetTaskTime(i8* %S_367, i32 0)
  store double %3, double* %vm_ssGetTaskTimeVar6_, align 8
  %S_368 = load i8*, i8** %S_, align 8
  %4 = call i32 @vm_ssIsMajorTimeStep(i8* %S_368)
  store i32 %4, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %S_369 = load i8*, i8** %S_, align 8
  %5 = call i32 @vm_ssIsSampleHit(i8* %S_369, i32 4, i32 0)
  store i32 %5, i32* %vm_ssIsSampleHitVar4_, align 4
  %S_370 = load i8*, i8** %S_, align 8
  %6 = call i32 @vm_ssIsSampleHit(i8* %S_370, i32 3, i32 0)
  store i32 %6, i32* %vm_ssIsSampleHitVar3_, align 4
  %S_371 = load i8*, i8** %S_, align 8
  %7 = call i32 @vm_ssIsSampleHit(i8* %S_371, i32 2, i32 0)
  store i32 %7, i32* %vm_ssIsSampleHitVar2_, align 4
  %S_372 = load i8*, i8** %S_, align 8
  %8 = call i32 @vm_ssIsSampleHit(i8* %S_372, i32 1, i32 0)
  store i32 %8, i32* %vm_ssIsSampleHitVar1_, align 4
  %S_373 = load i8*, i8** %S_, align 8
  %9 = call i32 @vm_ssIsContinuousTask(i8* %S_373, i32 0)
  store i32 %9, i32* %vm_ssIsContinuousTaskVar0_, align 4
  %S_374 = load i8*, i8** %S_, align 8
  %10 = call i8* @vm_ssGetRootDWork(i8* %S_374)
  %11 = bitcast %DW_X8_T.44** %_rtDW_ to i8**
  store i8* %10, i8** %11, align 8
  %S_375 = load i8*, i8** %S_, align 8
  %12 = call i8* @vm_ssGetPrevZCSigState(i8* %S_375)
  %13 = bitcast %PrevZCX_X8_T.51** %_rtZCE_ to i8**
  store i8* %12, i8** %13, align 8
  %S_376 = load i8*, i8** %S_, align 8
  %14 = call i8* @vm_ssGetX(i8* %S_376)
  %15 = bitcast %X_X8_T.50** %_rtX_ to i8**
  store i8* %14, i8** %15, align 8
  %S_377 = load i8*, i8** %S_, align 8
  %16 = call i8* @vm_ssGetModelRtp(i8* %S_377)
  %17 = bitcast %P_X8_T.48** %_rtP_ to i8**
  store i8* %16, i8** %17, align 8
  %S_378 = load i8*, i8** %S_, align 8
  %18 = call i8* @vm__ssGetModelBlockIO(i8* %S_378)
  %19 = bitcast %B_X8_T.43** %_rtB_ to i8**
  store i8* %18, i8** %19, align 8
  %20 = icmp eq i32 %9, 0
  %21 = ptrtoint i8* %18 to i64
  %22 = inttoptr i64 %21 to %B_X8_T.43*
  br i1 %20, label %false, label %true

true:                                             ; preds = %Outputs0_entry
  %vm_ssIsSampleHitVar1_380 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_380, i32* %i_, align 4
  %23 = icmp eq i32 %vm_ssIsSampleHitVar1_380, 0
  br i1 %23, label %false2, label %true1

false:                                            ; preds = %Outputs0_entry, %false290
  %vm_ssIsSampleHitVar2_2308 = phi i32 [ %7, %Outputs0_entry ], [ %vm_ssIsSampleHitVar2_2308.pre, %false290 ]
  store i32 %vm_ssIsSampleHitVar2_2308, i32* %i_, align 4
  %24 = icmp eq i32 %vm_ssIsSampleHitVar2_2308, 0
  br i1 %24, label %false292, label %true291

true1:                                            ; preds = %true
  %_rtP_382 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %25 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_382, i64 0, i32 43
  %26 = bitcast double* %25 to i64*
  %_rtP__PhysicsModel_Value2836 = load i64, i64* %26, align 1
  %27 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %22, i64 0, i32 5
  %28 = bitcast double* %27 to i64*
  store i64 %_rtP__PhysicsModel_Value2836, i64* %28, align 1
  %_rtDW_384 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %29 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_384, i64 0, i32 101
  %_rtDW__clockTickCounter = load i32, i32* %29, align 1
  %30 = sitofp i32 %_rtDW__clockTickCounter to double
  %_rtP_385 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %31 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_385, i64 0, i32 46
  %_rtP__PulseGenerator_Duty = load double, double* %31, align 1
  %32 = fcmp olt double %30, %_rtP__PulseGenerator_Duty
  %33 = icmp sgt i32 %_rtDW__clockTickCounter, -1
  %34 = and i1 %32, %33
  br i1 %34, label %true3, label %false4

false2:                                           ; preds = %true, %false10
  %_rtB_448 = phi %B_X8_T.43* [ %22, %true ], [ %_rtB_448.pre, %false10 ]
  %35 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_448, i64 0, i32 102, i64 0
  %36 = bitcast double* %35 to i64*
  %_rtB__Constant_l_el2543 = load i64, i64* %36, align 1
  %37 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_448, i64 0, i32 11
  %38 = bitcast [13 x double]* %37 to i64*
  store i64 %_rtB__Constant_l_el2543, i64* %38, align 1
  %_rtB_450 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %39 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_450, i64 0, i32 102, i64 1
  %40 = bitcast double* %39 to i64*
  %_rtB__Constant_l_el4512544 = load i64, i64* %40, align 1
  %41 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_450, i64 0, i32 11, i64 1
  %42 = bitcast double* %41 to i64*
  store i64 %_rtB__Constant_l_el4512544, i64* %42, align 1
  %_rtB_453 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %43 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_453, i64 0, i32 102, i64 2
  %44 = bitcast double* %43 to i64*
  %_rtB__Constant_l_el4542545 = load i64, i64* %44, align 1
  %45 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_453, i64 0, i32 11, i64 2
  %46 = bitcast double* %45 to i64*
  store i64 %_rtB__Constant_l_el4542545, i64* %46, align 1
  %_rtB_456 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %47 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_456, i64 0, i32 6
  %48 = bitcast double* %47 to i64*
  %_rtB__q02546 = load i64, i64* %48, align 1
  %49 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_456, i64 0, i32 11, i64 3
  %50 = bitcast double* %49 to i64*
  store i64 %_rtB__q02546, i64* %50, align 1
  %_rtB_458 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %51 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_458, i64 0, i32 7
  %52 = bitcast double* %51 to i64*
  %_rtB__q12547 = load i64, i64* %52, align 1
  %53 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_458, i64 0, i32 11, i64 4
  %54 = bitcast double* %53 to i64*
  store i64 %_rtB__q12547, i64* %54, align 1
  %_rtB_460 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %55 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_460, i64 0, i32 8
  %56 = bitcast double* %55 to i64*
  %_rtB__q22548 = load i64, i64* %56, align 1
  %57 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_460, i64 0, i32 11, i64 5
  %58 = bitcast double* %57 to i64*
  store i64 %_rtB__q22548, i64* %58, align 1
  %_rtB_462 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %59 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_462, i64 0, i32 9
  %60 = bitcast double* %59 to i64*
  %_rtB__q32549 = load i64, i64* %60, align 1
  %61 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_462, i64 0, i32 11, i64 6
  %62 = bitcast double* %61 to i64*
  store i64 %_rtB__q32549, i64* %62, align 1
  br label %merge312

true3:                                            ; preds = %true1
  %63 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_385, i64 0, i32 44
  %64 = bitcast double* %63 to i64*
  %_rtP__PulseGenerator_Amp2841 = load i64, i64* %64, align 1
  %65 = bitcast double* %rtb_TriggerWave_ to i64*
  store i64 %_rtP__PulseGenerator_Amp2841, i64* %65, align 8
  br label %merge

false4:                                           ; preds = %true1
  store double 0.000000e+00, double* %rtb_TriggerWave_, align 8
  br label %merge

true5:                                            ; preds = %merge
  store i32 0, i32* %29, align 1
  br label %merge309

false6:                                           ; preds = %merge
  %tmp1 = add i32 %_rtDW__clockTickCounter390, 1
  store i32 %tmp1, i32* %29, align 1
  br label %merge309

true9:                                            ; preds = %merge310
  %_rtB_442 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %66 = sext i32 %i_446 to i64
  %67 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_442, i64 0, i32 103, i64 %66
  %68 = bitcast double* %67 to i64*
  %_rtB__Constant1_k_el2837 = load i64, i64* %68, align 1
  %69 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_442, i64 0, i32 10, i64 %66
  %70 = bitcast double* %69 to i64*
  store i64 %_rtB__Constant1_k_el2837, i64* %70, align 1
  %tmp28 = add i32 %i_446, 1
  br label %merge310

false10:                                          ; preds = %merge311, %merge310
  %_rtB_448.pre = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  br label %false2

true11:                                           ; preds = %merge311
  %_rtB_2538 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %71 = sext i32 %i_2542 to i64
  %72 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2538, i64 0, i32 104, i64 %71
  %73 = bitcast double* %72 to i64*
  %_rtB__Constant2_m_el2839 = load i64, i64* %73, align 1
  %74 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2538, i64 0, i32 10, i64 %71
  %75 = bitcast double* %74 to i64*
  store i64 %_rtB__Constant2_m_el2839, i64* %75, align 1
  %tmp458 = add i32 %i_2542, 1
  br label %merge311

true12:                                           ; preds = %merge312
  %_rtB_2533 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %76 = sext i32 %i_2537 to i64
  %77 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2533, i64 0, i32 10, i64 %76
  %78 = bitcast double* %77 to i64*
  %_rtB__MultiportSwitch_el2834 = load i64, i64* %78, align 1
  %tmp456 = add i32 %i_2537, 7
  %79 = sext i32 %tmp456 to i64
  %80 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2533, i64 0, i32 11, i64 %79
  %81 = bitcast double* %80 to i64*
  store i64 %_rtB__MultiportSwitch_el2834, i64* %81, align 1
  %tmp457 = add i32 %i_2537, 1
  br label %merge312

false13:                                          ; preds = %merge312
  %vm_ssIsMajorTimeStepVar5_465 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %82 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_465, 0
  br i1 %82, label %false15, label %true14

true14:                                           ; preds = %false13
  store i8 0, i8* %resetSolver_, align 1
  %_rtZCE_466 = load %PrevZCX_X8_T.51*, %PrevZCX_X8_T.51** %_rtZCE_, align 8
  %83 = getelementptr inbounds %PrevZCX_X8_T.51, %PrevZCX_X8_T.51* %_rtZCE_466, i64 0, i32 0
  %_rtZCE__Integrator_Reset_ZCE = load i8, i8* %83, align 1
  %84 = icmp eq i8 %_rtZCE__Integrator_Reset_ZCE, 1
  %85 = zext i1 %84 to i8
  %_rtB_467 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %86 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_467, i64 0, i32 175
  %_rtB__TriggerSignal = load i8, i8* %86, align 1
  %87 = icmp ne i8 %85, %_rtB__TriggerSignal
  %88 = icmp ne i8 %_rtZCE__Integrator_Reset_ZCE, 3
  %89 = and i1 %87, %88
  %90 = zext i1 %89 to i8
  store i8 %90, i8* %didZcEventOccur_, align 1
  store i8 %_rtB__TriggerSignal, i8* %83, align 1
  %91 = and i8 %90, 1
  %92 = icmp ne i8 %91, 0
  %_rtDW_474 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %93 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_474, i64 0, i32 126
  %_rtDW__Integrator_IWORK = load i32, i32* %93, align 1
  %94 = icmp ne i32 %_rtDW__Integrator_IWORK, 0
  %95 = or i1 %92, %94
  br i1 %95, label %true16, label %false17

false15:                                          ; preds = %true18, %false17, %false13
  %_rtB_479 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %96 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_479, i64 0, i32 12, i64 0
  %97 = bitcast double* %96 to i8*
  %_rtX_4802550 = load i8*, i8** %15, align 8
  %98 = call i8* @memcpy(i8* %97, i8* %_rtX_4802550, i32 104)
  %_rtB_481 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %99 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_481, i64 0, i32 12, i64 0
  %100 = bitcast double* %99 to i64*
  %_rtB__Integrator_el2551 = load i64, i64* %100, align 1
  %101 = bitcast %B_X8_T.43* %_rtB_481 to i64*
  store i64 %_rtB__Integrator_el2551, i64* %101, align 1
  %_rtB_483 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %102 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_483, i64 0, i32 12, i64 1
  %103 = bitcast double* %102 to i64*
  %_rtB__Integrator_el4842552 = load i64, i64* %103, align 1
  %104 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_483, i64 0, i32 0, i32 0, i32 1
  %105 = bitcast double* %104 to i64*
  store i64 %_rtB__Integrator_el4842552, i64* %105, align 1
  %_rtB_486 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %106 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_486, i64 0, i32 12, i64 2
  %107 = bitcast double* %106 to i64*
  %_rtB__Integrator_el4872553 = load i64, i64* %107, align 1
  %108 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_486, i64 0, i32 0, i32 0, i32 2
  %109 = bitcast double* %108 to i64*
  store i64 %_rtB__Integrator_el4872553, i64* %109, align 1
  %_rtB_489 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %110 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_489, i64 0, i32 12, i64 3
  %_rtB__Integrator_el490 = load double, double* %110, align 1
  %tmp31 = fmul double %_rtB__Integrator_el490, %_rtB__Integrator_el490
  %111 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_489, i64 0, i32 12, i64 4
  %_rtB__Integrator_el494 = load double, double* %111, align 1
  %tmp32 = fmul double %_rtB__Integrator_el494, %_rtB__Integrator_el494
  %tmp33 = fadd double %tmp31, %tmp32
  %112 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_489, i64 0, i32 12, i64 5
  %_rtB__Integrator_el498 = load double, double* %112, align 1
  %tmp34 = fmul double %_rtB__Integrator_el498, %_rtB__Integrator_el498
  %tmp35 = fadd double %tmp33, %tmp34
  %113 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_489, i64 0, i32 12, i64 6
  %_rtB__Integrator_el502 = load double, double* %113, align 1
  %tmp36 = fmul double %_rtB__Integrator_el502, %_rtB__Integrator_el502
  %tmp37 = fadd double %tmp35, %tmp36
  %114 = call double @muDoubleScalarSqrt(double %tmp37)
  store double %114, double* %rtb_TriggerWave_, align 8
  %_rtB_505 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %115 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_505, i64 0, i32 12, i64 3
  %_rtB__Integrator_el506 = load double, double* %115, align 1
  %tmp38 = fdiv double %_rtB__Integrator_el506, %114
  %116 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_505, i64 0, i32 13
  store double %tmp38, double* %116, align 1
  %_rtB_509 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %117 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_509, i64 0, i32 12, i64 4
  %_rtB__Integrator_el510 = load double, double* %117, align 1
  %rtb_TriggerWave_511 = load double, double* %rtb_TriggerWave_, align 8
  %tmp39 = fdiv double %_rtB__Integrator_el510, %rtb_TriggerWave_511
  %118 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_509, i64 0, i32 14
  store double %tmp39, double* %118, align 1
  %_rtB_513 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %119 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_513, i64 0, i32 12, i64 5
  %_rtB__Integrator_el514 = load double, double* %119, align 1
  %rtb_TriggerWave_515 = load double, double* %rtb_TriggerWave_, align 8
  %tmp40 = fdiv double %_rtB__Integrator_el514, %rtb_TriggerWave_515
  %120 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_513, i64 0, i32 15
  store double %tmp40, double* %120, align 1
  %_rtB_517 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %121 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_517, i64 0, i32 12, i64 6
  %_rtB__Integrator_el518 = load double, double* %121, align 1
  %rtb_TriggerWave_519 = load double, double* %rtb_TriggerWave_, align 8
  %tmp41 = fdiv double %_rtB__Integrator_el518, %rtb_TriggerWave_519
  %122 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_517, i64 0, i32 16
  store double %tmp41, double* %122, align 1
  %_rtB_521 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %123 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_521, i64 0, i32 13
  %124 = bitcast double* %123 to i64*
  %_rtB__Product2554 = load i64, i64* %124, align 1
  %125 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_521, i64 0, i32 157
  %126 = bitcast [4 x double]* %125 to i64*
  store i64 %_rtB__Product2554, i64* %126, align 1
  %_rtB_523 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %127 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_523, i64 0, i32 14
  %128 = bitcast double* %127 to i64*
  %_rtB__Product12555 = load i64, i64* %128, align 1
  %129 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_523, i64 0, i32 157, i64 1
  %130 = bitcast double* %129 to i64*
  store i64 %_rtB__Product12555, i64* %130, align 1
  %_rtB_525 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %131 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_525, i64 0, i32 15
  %132 = bitcast double* %131 to i64*
  %_rtB__Product22556 = load i64, i64* %132, align 1
  %133 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_525, i64 0, i32 157, i64 2
  %134 = bitcast double* %133 to i64*
  store i64 %_rtB__Product22556, i64* %134, align 1
  %_rtB_527 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %135 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_527, i64 0, i32 16
  %136 = bitcast double* %135 to i64*
  %_rtB__Product32557 = load i64, i64* %136, align 1
  %137 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_527, i64 0, i32 157, i64 3
  %138 = bitcast double* %137 to i64*
  store i64 %_rtB__Product32557, i64* %138, align 1
  %S_529 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_529, i32 5, i32 1, i32 104)
  %_rtB_530 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %139 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_530, i64 0, i32 14
  %140 = bitcast double* %139 to i64*
  %_rtB__Product15312558 = load i64, i64* %140, align 1
  %141 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_530, i64 0, i32 1, i32 2, i32 1
  %142 = bitcast [3 x double]* %141 to i64*
  store i64 %_rtB__Product15312558, i64* %142, align 1
  %_rtB_533 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %143 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_533, i64 0, i32 15
  %144 = bitcast double* %143 to i64*
  %_rtB__Product25342559 = load i64, i64* %144, align 1
  %145 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_533, i64 0, i32 1, i32 2, i32 1, i64 1
  %146 = bitcast double* %145 to i64*
  store i64 %_rtB__Product25342559, i64* %146, align 1
  %_rtB_536 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %147 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_536, i64 0, i32 16
  %148 = bitcast double* %147 to i64*
  %_rtB__Product35372560 = load i64, i64* %148, align 1
  %149 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_536, i64 0, i32 1, i32 2, i32 1, i64 2
  %150 = bitcast double* %149 to i64*
  store i64 %_rtB__Product35372560, i64* %150, align 1
  %vm_ssIsSampleHitVar1_539 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_539, i32* %i_, align 4
  %151 = icmp eq i32 %vm_ssIsSampleHitVar1_539, 0
  br i1 %151, label %false21, label %true20

true16:                                           ; preds = %true14
  store i8 1, i8* %resetSolver_, align 1
  %_rtX_4752833 = load i8*, i8** %15, align 8
  %_rtB_476 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %152 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_476, i64 0, i32 11, i64 0
  %153 = bitcast double* %152 to i8*
  %154 = call i8* @memcpy(i8* %_rtX_4752833, i8* %153, i32 104)
  br label %false17

false17:                                          ; preds = %true16, %true14
  %resetSolver_477 = phi i8 [ 1, %true16 ], [ 0, %true14 ]
  %155 = and i8 %resetSolver_477, 1
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %false15, label %true18

true18:                                           ; preds = %false17
  %S_478 = load i8*, i8** %S_, align 8
  call void @vm_ssSetBlockStateForSolverChangedAtMajorStep(i8* %S_478)
  br label %false15

true20:                                           ; preds = %false15
  %_rtB_541 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %157 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_541, i64 0, i32 167, i64 0
  %158 = bitcast double* %157 to i8*
  %_rtDW_542 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %159 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_542, i64 0, i32 16, i64 0
  %160 = bitcast double* %159 to i8*
  %161 = call i8* @memcpy(i8* %158, i8* %160, i32 104)
  %_rtB_543 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %162 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_543, i64 0, i32 167, i64 7
  %163 = bitcast double* %162 to i64*
  %_rtB__Memory_l_el2830 = load i64, i64* %163, align 1
  %164 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_543, i64 0, i32 3
  %165 = bitcast %Acceleration.40* %164 to i64*
  store i64 %_rtB__Memory_l_el2830, i64* %165, align 1
  %_rtB_545 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %166 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_545, i64 0, i32 167, i64 8
  %167 = bitcast double* %166 to i64*
  %_rtB__Memory_l_el5462831 = load i64, i64* %167, align 1
  %168 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_545, i64 0, i32 3, i32 1
  %169 = bitcast double* %168 to i64*
  store i64 %_rtB__Memory_l_el5462831, i64* %169, align 1
  %_rtB_548 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %170 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_548, i64 0, i32 167, i64 9
  %171 = bitcast double* %170 to i64*
  %_rtB__Memory_l_el5492832 = load i64, i64* %171, align 1
  %172 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_548, i64 0, i32 3, i32 2
  %173 = bitcast double* %172 to i64*
  store i64 %_rtB__Memory_l_el5492832, i64* %173, align 1
  br label %false21

false21:                                          ; preds = %false15, %true20
  %_rtB_551 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %174 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_551, i64 0, i32 158
  %175 = bitcast double* %174 to i64*
  %_rtB__phi2561 = load i64, i64* %175, align 1
  %176 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_551, i64 0, i32 0, i32 1
  %177 = bitcast %Attitude.36* %176 to i64*
  store i64 %_rtB__phi2561, i64* %177, align 1
  %_rtB_553 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %178 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_553, i64 0, i32 159
  %179 = bitcast double* %178 to i64*
  %_rtB__theta2562 = load i64, i64* %179, align 1
  %180 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_553, i64 0, i32 0, i32 1, i32 1
  %181 = bitcast double* %180 to i64*
  store i64 %_rtB__theta2562, i64* %181, align 1
  %_rtB_555 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %182 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_555, i64 0, i32 160
  %183 = bitcast double* %182 to i64*
  %_rtB__psi2563 = load i64, i64* %183, align 1
  %184 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_555, i64 0, i32 0, i32 1, i32 2
  %185 = bitcast double* %184 to i64*
  store i64 %_rtB__psi2563, i64* %185, align 1
  %_rtB_557 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %186 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_557, i64 0, i32 13
  %187 = bitcast double* %186 to i64*
  %_rtB__Product5582564 = load i64, i64* %187, align 1
  %188 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_557, i64 0, i32 0, i32 2
  %189 = bitcast %Quaternion.37* %188 to i64*
  store i64 %_rtB__Product5582564, i64* %189, align 1
  %_rtB_560 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %190 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_560, i64 0, i32 14
  %191 = bitcast double* %190 to i64*
  %_rtB__Product15612565 = load i64, i64* %191, align 1
  %192 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_560, i64 0, i32 0, i32 2, i32 1
  %193 = bitcast [3 x double]* %192 to i64*
  store i64 %_rtB__Product15612565, i64* %193, align 1
  %_rtB_563 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %194 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_563, i64 0, i32 15
  %195 = bitcast double* %194 to i64*
  %_rtB__Product25642566 = load i64, i64* %195, align 1
  %196 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_563, i64 0, i32 0, i32 2, i32 1, i64 1
  %197 = bitcast double* %196 to i64*
  store i64 %_rtB__Product25642566, i64* %197, align 1
  %_rtB_566 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %198 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_566, i64 0, i32 16
  %199 = bitcast double* %198 to i64*
  %_rtB__Product35672567 = load i64, i64* %199, align 1
  %200 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_566, i64 0, i32 0, i32 2, i32 1, i64 2
  %201 = bitcast double* %200 to i64*
  store i64 %_rtB__Product35672567, i64* %201, align 1
  %_rtB_569 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %202 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_569, i64 0, i32 12, i64 7
  %203 = bitcast double* %202 to i64*
  %_rtB__Integrator_el5702568 = load i64, i64* %203, align 1
  %204 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_569, i64 0, i32 0, i32 3
  %205 = bitcast %Velocity.38* %204 to i64*
  store i64 %_rtB__Integrator_el5702568, i64* %205, align 1
  %_rtB_572 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %206 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_572, i64 0, i32 12, i64 8
  %207 = bitcast double* %206 to i64*
  %_rtB__Integrator_el5732569 = load i64, i64* %207, align 1
  %208 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_572, i64 0, i32 0, i32 3, i32 1
  %209 = bitcast double* %208 to i64*
  store i64 %_rtB__Integrator_el5732569, i64* %209, align 1
  %_rtB_575 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %210 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_575, i64 0, i32 12, i64 9
  %211 = bitcast double* %210 to i64*
  %_rtB__Integrator_el5762570 = load i64, i64* %211, align 1
  %212 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_575, i64 0, i32 0, i32 3, i32 2
  %213 = bitcast double* %212 to i64*
  store i64 %_rtB__Integrator_el5762570, i64* %213, align 1
  %_rtB_578 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %214 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_578, i64 0, i32 12, i64 10
  %215 = bitcast double* %214 to i64*
  %_rtB__Integrator_el5792571 = load i64, i64* %215, align 1
  %216 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_578, i64 0, i32 0, i32 4
  %217 = bitcast %AngularVelocity.39* %216 to i64*
  store i64 %_rtB__Integrator_el5792571, i64* %217, align 1
  %_rtB_581 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %218 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_581, i64 0, i32 12, i64 11
  %219 = bitcast double* %218 to i64*
  %_rtB__Integrator_el5822572 = load i64, i64* %219, align 1
  %220 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_581, i64 0, i32 0, i32 4, i32 1
  %221 = bitcast double* %220 to i64*
  store i64 %_rtB__Integrator_el5822572, i64* %221, align 1
  %_rtB_584 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %222 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_584, i64 0, i32 12, i64 12
  %223 = bitcast double* %222 to i64*
  %_rtB__Integrator_el5852573 = load i64, i64* %223, align 1
  %224 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_584, i64 0, i32 0, i32 4, i32 2
  %225 = bitcast double* %224 to i64*
  store i64 %_rtB__Integrator_el5852573, i64* %225, align 1
  %_rtB_587 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %_rtB__Acceleration_d.elt = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_587, i64 0, i32 3, i32 0
  %226 = bitcast double* %_rtB__Acceleration_d.elt to i64*
  %_rtB__Acceleration_d.unpack2585 = load i64, i64* %226, align 1
  %_rtB__Acceleration_d.elt2574 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_587, i64 0, i32 3, i32 1
  %227 = bitcast double* %_rtB__Acceleration_d.elt2574 to i64*
  %_rtB__Acceleration_d.unpack25752584 = load i64, i64* %227, align 1
  %_rtB__Acceleration_d.elt2576 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_587, i64 0, i32 3, i32 2
  %228 = bitcast double* %_rtB__Acceleration_d.elt2576 to i64*
  %_rtB__Acceleration_d.unpack25772583 = load i64, i64* %228, align 1
  %229 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_587, i64 0, i32 0, i32 5
  %230 = bitcast %Acceleration.40* %229 to i64*
  store i64 %_rtB__Acceleration_d.unpack2585, i64* %230, align 8
  %.repack2579 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_587, i64 0, i32 0, i32 5, i32 1
  %231 = bitcast double* %.repack2579 to i64*
  store i64 %_rtB__Acceleration_d.unpack25752584, i64* %231, align 8
  %.repack2581 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_587, i64 0, i32 0, i32 5, i32 2
  %232 = bitcast double* %.repack2581 to i64*
  store i64 %_rtB__Acceleration_d.unpack25772583, i64* %232, align 8
  %vm_ssIsSampleHitVar1_589 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_589, i32* %i_, align 4
  %233 = icmp eq i32 %vm_ssIsSampleHitVar1_589, 0
  br i1 %233, label %false23, label %merge313

false23:                                          ; preds = %false21, %merge313
  %vm_ssGetTaskTimeVar6_592 = load double, double* %vm_ssGetTaskTimeVar6_, align 8
  %_rtP_593 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %234 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_593, i64 0, i32 57
  %_rtP__Selectinput1_Time = load double, double* %234, align 1
  %235 = fcmp olt double %vm_ssGetTaskTimeVar6_592, %_rtP__Selectinput1_Time
  br i1 %235, label %true25, label %false26

true24:                                           ; preds = %merge313
  %_rtDW_2528 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %236 = sext i32 %i_2529 to i64
  %237 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2528, i64 0, i32 17, i64 %236
  %238 = bitcast double* %237 to i64*
  %_rtDW__Memory_PreviousInput_i_el2828 = load i64, i64* %238, align 1
  %_rtB_2530 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %239 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2530, i64 0, i32 17, i64 %236
  %240 = bitcast double* %239 to i64*
  store i64 %_rtDW__Memory_PreviousInput_i_el2828, i64* %240, align 1
  %tmp455 = add i32 %i_2529, 1
  br label %merge313

true25:                                           ; preds = %false23
  %241 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_593, i64 0, i32 58
  %242 = bitcast double* %241 to i64*
  %_rtP__Selectinput1_Y02827 = load i64, i64* %242, align 1
  %_rtB_597 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %243 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_597, i64 0, i32 18
  %244 = bitcast double* %243 to i64*
  store i64 %_rtP__Selectinput1_Y02827, i64* %244, align 1
  br label %merge314

false26:                                          ; preds = %false23
  %245 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_593, i64 0, i32 59
  %246 = bitcast double* %245 to i64*
  %_rtP__Selectinput1_YFinal2586 = load i64, i64* %246, align 1
  %_rtB_595 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %247 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_595, i64 0, i32 18
  %248 = bitcast double* %247 to i64*
  store i64 %_rtP__Selectinput1_YFinal2586, i64* %248, align 1
  br label %merge314

true27:                                           ; preds = %merge314
  %_rtP_600 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %249 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_600, i64 0, i32 60, i64 0
  %250 = bitcast double* %249 to i64*
  %_rtP__U_trim_Value_el2819 = load i64, i64* %250, align 1
  %_rtB_601 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %251 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_601, i64 0, i32 19
  %252 = bitcast [4 x double]* %251 to i64*
  store i64 %_rtP__U_trim_Value_el2819, i64* %252, align 1
  %_rtP_602 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %253 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_602, i64 0, i32 60, i64 1
  %254 = bitcast double* %253 to i64*
  %_rtP__U_trim_Value_el6032820 = load i64, i64* %254, align 1
  %_rtB_604 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %255 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_604, i64 0, i32 19, i64 1
  %256 = bitcast double* %255 to i64*
  store i64 %_rtP__U_trim_Value_el6032820, i64* %256, align 1
  %_rtP_605 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %257 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_605, i64 0, i32 60, i64 2
  %258 = bitcast double* %257 to i64*
  %_rtP__U_trim_Value_el6062821 = load i64, i64* %258, align 1
  %_rtB_607 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %259 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_607, i64 0, i32 19, i64 2
  %260 = bitcast double* %259 to i64*
  store i64 %_rtP__U_trim_Value_el6062821, i64* %260, align 1
  %_rtP_608 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %261 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_608, i64 0, i32 60, i64 3
  %262 = bitcast double* %261 to i64*
  %_rtP__U_trim_Value_el6092822 = load i64, i64* %262, align 1
  %_rtB_610 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %263 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_610, i64 0, i32 19, i64 3
  %264 = bitcast double* %263 to i64*
  store i64 %_rtP__U_trim_Value_el6092822, i64* %264, align 1
  %S_611 = load i8*, i8** %S_, align 8
  %265 = call i32 @vm_ssIsSpecialSampleHit(i8* %S_611, i32 3, i32 1, i32 0)
  store i32 %265, i32* %i_, align 4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %false28, label %true29

false28:                                          ; preds = %true29, %true27, %merge314
  %_rtB_624 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %267 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_624, i64 0, i32 18
  %_rtB__Selectinput1 = load double, double* %267, align 1
  %268 = fptosi double %_rtB__Selectinput1 to i32
  switch i32 %268, label %default [
    i32 1, label %case
    i32 2, label %case31
    i32 3, label %case32
  ]

true29:                                           ; preds = %true27
  %_rtDW_613 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %269 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_613, i64 0, i32 18, i64 0
  %270 = bitcast double* %269 to i64*
  %_rtDW__TmpRTBAtMultiportSwitchInport5_Buffer0_el2823 = load i64, i64* %270, align 1
  %_rtB_614 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %271 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_614, i64 0, i32 20
  %272 = bitcast [4 x double]* %271 to i64*
  store i64 %_rtDW__TmpRTBAtMultiportSwitchInport5_Buffer0_el2823, i64* %272, align 1
  %_rtDW_615 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %273 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_615, i64 0, i32 18, i64 1
  %274 = bitcast double* %273 to i64*
  %_rtDW__TmpRTBAtMultiportSwitchInport5_Buffer0_el6162824 = load i64, i64* %274, align 1
  %_rtB_617 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %275 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_617, i64 0, i32 20, i64 1
  %276 = bitcast double* %275 to i64*
  store i64 %_rtDW__TmpRTBAtMultiportSwitchInport5_Buffer0_el6162824, i64* %276, align 1
  %_rtDW_618 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %277 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_618, i64 0, i32 18, i64 2
  %278 = bitcast double* %277 to i64*
  %_rtDW__TmpRTBAtMultiportSwitchInport5_Buffer0_el6192825 = load i64, i64* %278, align 1
  %_rtB_620 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %279 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_620, i64 0, i32 20, i64 2
  %280 = bitcast double* %279 to i64*
  store i64 %_rtDW__TmpRTBAtMultiportSwitchInport5_Buffer0_el6192825, i64* %280, align 1
  %_rtDW_621 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %281 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_621, i64 0, i32 18, i64 3
  %282 = bitcast double* %281 to i64*
  %_rtDW__TmpRTBAtMultiportSwitchInport5_Buffer0_el6222826 = load i64, i64* %282, align 1
  %_rtB_623 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %283 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_623, i64 0, i32 20, i64 3
  %284 = bitcast double* %283 to i64*
  store i64 %_rtDW__TmpRTBAtMultiportSwitchInport5_Buffer0_el6222826, i64* %284, align 1
  br label %false28

case:                                             ; preds = %false28
  %285 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_624, i64 0, i32 19, i64 0
  %286 = bitcast double* %285 to i64*
  %_rtB__U_trim_el2811 = load i64, i64* %286, align 1
  %287 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_624, i64 0, i32 21
  %288 = bitcast [4 x double]* %287 to i64*
  store i64 %_rtB__U_trim_el2811, i64* %288, align 1
  %_rtB_638 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %289 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_638, i64 0, i32 19, i64 1
  %290 = bitcast double* %289 to i64*
  %_rtB__U_trim_el6392812 = load i64, i64* %290, align 1
  %291 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_638, i64 0, i32 21, i64 1
  %292 = bitcast double* %291 to i64*
  store i64 %_rtB__U_trim_el6392812, i64* %292, align 1
  %_rtB_641 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %293 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_641, i64 0, i32 19, i64 2
  %294 = bitcast double* %293 to i64*
  %_rtB__U_trim_el6422813 = load i64, i64* %294, align 1
  %295 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_641, i64 0, i32 21, i64 2
  %296 = bitcast double* %295 to i64*
  store i64 %_rtB__U_trim_el6422813, i64* %296, align 1
  %_rtB_644 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %297 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_644, i64 0, i32 19, i64 3
  %298 = bitcast double* %297 to i64*
  %_rtB__U_trim_el6452814 = load i64, i64* %298, align 1
  %299 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_644, i64 0, i32 21, i64 3
  %300 = bitcast double* %299 to i64*
  store i64 %_rtB__U_trim_el6452814, i64* %300, align 1
  br label %merge315

case31:                                           ; preds = %false28
  %301 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_624, i64 0, i32 21, i64 0
  store double 0.000000e+00, double* %301, align 1
  %_rtB_648 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %302 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_648, i64 0, i32 21, i64 1
  store double 0.000000e+00, double* %302, align 1
  %_rtB_649 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %303 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_649, i64 0, i32 21, i64 2
  store double 0.000000e+00, double* %303, align 1
  %_rtB_650 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %304 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_650, i64 0, i32 21, i64 3
  store double 0.000000e+00, double* %304, align 1
  br label %merge315

case32:                                           ; preds = %false28
  %305 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_624, i64 0, i32 21, i64 0
  store double 0.000000e+00, double* %305, align 1
  %_rtB_652 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %306 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_652, i64 0, i32 21, i64 1
  store double 0.000000e+00, double* %306, align 1
  %_rtB_653 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %307 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_653, i64 0, i32 21, i64 2
  store double 0.000000e+00, double* %307, align 1
  %_rtB_654 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %308 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_654, i64 0, i32 21, i64 3
  store double 0.000000e+00, double* %308, align 1
  br label %merge315

default:                                          ; preds = %false28
  %309 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_624, i64 0, i32 20, i64 0
  %310 = bitcast double* %309 to i64*
  %_rtB__TmpRTBAtMultiportSwitchInport5_el2815 = load i64, i64* %310, align 1
  %311 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_624, i64 0, i32 21
  %312 = bitcast [4 x double]* %311 to i64*
  store i64 %_rtB__TmpRTBAtMultiportSwitchInport5_el2815, i64* %312, align 1
  %_rtB_627 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %313 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_627, i64 0, i32 20, i64 1
  %314 = bitcast double* %313 to i64*
  %_rtB__TmpRTBAtMultiportSwitchInport5_el6282816 = load i64, i64* %314, align 1
  %315 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_627, i64 0, i32 21, i64 1
  %316 = bitcast double* %315 to i64*
  store i64 %_rtB__TmpRTBAtMultiportSwitchInport5_el6282816, i64* %316, align 1
  %_rtB_630 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %317 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_630, i64 0, i32 20, i64 2
  %318 = bitcast double* %317 to i64*
  %_rtB__TmpRTBAtMultiportSwitchInport5_el6312817 = load i64, i64* %318, align 1
  %319 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_630, i64 0, i32 21, i64 2
  %320 = bitcast double* %319 to i64*
  store i64 %_rtB__TmpRTBAtMultiportSwitchInport5_el6312817, i64* %320, align 1
  %_rtB_633 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %321 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_633, i64 0, i32 20, i64 3
  %322 = bitcast double* %321 to i64*
  %_rtB__TmpRTBAtMultiportSwitchInport5_el6342818 = load i64, i64* %322, align 1
  %323 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_633, i64 0, i32 21, i64 3
  %324 = bitcast double* %323 to i64*
  store i64 %_rtB__TmpRTBAtMultiportSwitchInport5_el6342818, i64* %324, align 1
  br label %merge315

true33:                                           ; preds = %merge315
  %325 = bitcast double* %1837 to i64*
  %326 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_656, i64 0, i32 22
  %327 = bitcast double* %326 to i64*
  store i64 %1840, i64* %327, align 1
  br label %merge317

false34:                                          ; preds = %merge315
  %328 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_655, i64 0, i32 64
  %_rtP__Saturation_LowerSat = load double, double* %328, align 1
  %329 = fcmp olt double %tmp45, %_rtP__Saturation_LowerSat
  %330 = bitcast double %_rtP__Saturation_LowerSat to i64
  br i1 %329, label %true35, label %false36

true35:                                           ; preds = %false34
  %331 = bitcast double* %328 to i64*
  %332 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_656, i64 0, i32 22
  %333 = bitcast double* %332 to i64*
  store i64 %330, i64* %333, align 1
  br label %merge317

false36:                                          ; preds = %false34
  %334 = bitcast double* %rtb_TriggerWave_ to i64*
  %335 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_656, i64 0, i32 22
  %336 = bitcast double* %335 to i64*
  store i64 %1839, i64* %336, align 1
  br label %merge317

true37:                                           ; preds = %merge317
  %337 = bitcast double* %1841 to i64*
  %_rtB_692 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %338 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_692, i64 0, i32 23
  %339 = bitcast double* %338 to i64*
  store i64 %1844, i64* %339, align 1
  br label %merge319

false38:                                          ; preds = %merge317
  %340 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_682, i64 0, i32 66
  %_rtP__Saturation1_LowerSat = load double, double* %340, align 1
  %341 = fcmp olt double %rtb_u2_idx_2_681, %_rtP__Saturation1_LowerSat
  %342 = bitcast double %_rtP__Saturation1_LowerSat to i64
  br i1 %341, label %true39, label %false40

true39:                                           ; preds = %false38
  %343 = bitcast double* %340 to i64*
  %_rtB_689 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %344 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_689, i64 0, i32 23
  %345 = bitcast double* %344 to i64*
  store i64 %342, i64* %345, align 1
  br label %merge319

false40:                                          ; preds = %false38
  %346 = bitcast double* %rtb_u2_idx_2_ to i64*
  %_rtB_686 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %347 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_686, i64 0, i32 23
  %348 = bitcast double* %347 to i64*
  store i64 %1843, i64* %348, align 1
  br label %merge319

true41:                                           ; preds = %merge319
  %349 = bitcast double* %1848 to i64*
  %350 = bitcast double* %rtb_TriggerWave_ to i64*
  store i64 %1850, i64* %350, align 8
  br label %merge320

false42:                                          ; preds = %merge319
  %351 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_693, i64 0, i32 69
  %_rtP__Saturation_LowerSat_i = load double, double* %351, align 1
  %352 = fcmp olt double %tmp49, %_rtP__Saturation_LowerSat_i
  %353 = bitcast double %_rtP__Saturation_LowerSat_i to i64
  br i1 %352, label %true43, label %merge320

true43:                                           ; preds = %false42
  %354 = bitcast double* %351 to i64*
  %355 = bitcast double* %rtb_TriggerWave_ to i64*
  store i64 %353, i64* %355, align 8
  br label %merge320

true45:                                           ; preds = %merge320
  %356 = bitcast double* %1848 to i64*
  %357 = bitcast double* %rtb_u2_idx_2_ to i64*
  store i64 %1852, i64* %357, align 8
  br label %merge321

false46:                                          ; preds = %merge320
  %358 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_693, i64 0, i32 69
  %_rtP__Saturation_LowerSat_i711 = load double, double* %358, align 1
  %359 = fcmp olt double %tmp50, %_rtP__Saturation_LowerSat_i711
  %360 = bitcast double %_rtP__Saturation_LowerSat_i711 to i64
  br i1 %359, label %true47, label %merge321

true47:                                           ; preds = %false46
  %361 = bitcast double* %358 to i64*
  %362 = bitcast double* %rtb_u2_idx_2_ to i64*
  store i64 %360, i64* %362, align 8
  br label %merge321

true49:                                           ; preds = %merge321
  %363 = bitcast double* %1864 to i64*
  %364 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_740, i64 0, i32 25
  %365 = bitcast double* %364 to i64*
  store i64 %1867, i64* %365, align 1
  br label %merge323

false50:                                          ; preds = %merge321
  %366 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_742, i64 0, i32 72
  %_rtP__Saturation_LowerSat_i4 = load double, double* %366, align 1
  %367 = fcmp olt double %_rtB__MultiportSwitch_c_el741, %_rtP__Saturation_LowerSat_i4
  %368 = bitcast double %_rtP__Saturation_LowerSat_i4 to i64
  br i1 %367, label %true51, label %false52

true51:                                           ; preds = %false50
  %369 = bitcast double* %366 to i64*
  %370 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_740, i64 0, i32 25
  %371 = bitcast double* %370 to i64*
  store i64 %368, i64* %371, align 1
  br label %merge323

false52:                                          ; preds = %false50
  %372 = bitcast double* %1863 to i64*
  %373 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_740, i64 0, i32 25
  %374 = bitcast double* %373 to i64*
  store i64 %1866, i64* %374, align 1
  br label %merge323

true53:                                           ; preds = %merge323
  %S_757 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_757, i32 3, i32 0, i32 104)
  %_rtDW_758 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %375 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_758, i64 0, i32 0
  %_rtDW__UnitDelay_DSTATE = load double, double* %375, align 1
  %_rtP_759 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %376 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_759, i64 0, i32 75, i64 0
  %377 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_759, i64 0, i32 76, i64 0
  %378 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_759, i64 0, i32 74, i64 0
  %379 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_759, i64 0, i32 266, i64 0
  %380 = call double @look2_linlcpw(double %_rtDW__UnitDelay_DSTATE, double 0.000000e+00, double* %376, double* %377, double* %378, i32* %379, i32 38)
  %_rtB_763 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %381 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_763, i64 0, i32 26
  store double %380, double* %381, align 1
  %_rtDW_764 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %382 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_764, i64 0, i32 0
  %_rtDW__UnitDelay_DSTATE765 = load double, double* %382, align 1
  %_rtP_766 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %383 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_766, i64 0, i32 78, i64 0
  %384 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_766, i64 0, i32 79, i64 0
  %385 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_766, i64 0, i32 77, i64 0
  %386 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_766, i64 0, i32 267, i64 0
  %387 = call double @look2_linlxpw(double %_rtDW__UnitDelay_DSTATE765, double 0.000000e+00, double* %383, double* %384, double* %385, i32* %386, i32 4)
  %_rtB_770 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %388 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_770, i64 0, i32 27
  store double %387, double* %388, align 1
  %_rtDW_771 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %389 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_771, i64 0, i32 0
  %_rtDW__UnitDelay_DSTATE772 = load double, double* %389, align 1
  %_rtP_773 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %390 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_773, i64 0, i32 81, i64 0
  %391 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_773, i64 0, i32 82, i64 0
  %392 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_773, i64 0, i32 80, i64 0
  %393 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_773, i64 0, i32 268, i64 0
  %394 = call double @look2_linlxpw(double %_rtDW__UnitDelay_DSTATE772, double 0.000000e+00, double* %390, double* %391, double* %392, i32* %393, i32 38)
  %_rtB_777 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %395 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_777, i64 0, i32 28
  store double %394, double* %395, align 1
  %_rtDW_778 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %396 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_778, i64 0, i32 0
  %_rtDW__UnitDelay_DSTATE779 = load double, double* %396, align 1
  %_rtP_780 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %397 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_780, i64 0, i32 84, i64 0
  %398 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_780, i64 0, i32 85, i64 0
  %399 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_780, i64 0, i32 83, i64 0
  %400 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_780, i64 0, i32 269, i64 0
  %401 = call double @look2_linlxpw(double %_rtDW__UnitDelay_DSTATE779, double 0.000000e+00, double* %397, double* %398, double* %399, i32* %400, i32 4)
  %_rtB_784 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %402 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_784, i64 0, i32 29
  store double %401, double* %402, align 1
  %_rtDW_785 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %403 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_785, i64 0, i32 0
  %_rtDW__UnitDelay_DSTATE786 = load double, double* %403, align 1
  %_rtP_787 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %404 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_787, i64 0, i32 87, i64 0
  %405 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_787, i64 0, i32 88, i64 0
  %406 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_787, i64 0, i32 86, i64 0
  %407 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_787, i64 0, i32 270, i64 0
  %408 = call double @look2_linlxpw(double %_rtDW__UnitDelay_DSTATE786, double 0.000000e+00, double* %404, double* %405, double* %406, i32* %407, i32 38)
  %_rtB_791 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %409 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_791, i64 0, i32 30
  store double %408, double* %409, align 1
  %_rtDW_792 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %410 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_792, i64 0, i32 0
  %_rtDW__UnitDelay_DSTATE793 = load double, double* %410, align 1
  %_rtP_794 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %411 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_794, i64 0, i32 90, i64 0
  %412 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_794, i64 0, i32 91, i64 0
  %413 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_794, i64 0, i32 89, i64 0
  %414 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_794, i64 0, i32 271, i64 0
  %415 = call double @look2_linlxpw(double %_rtDW__UnitDelay_DSTATE793, double 0.000000e+00, double* %411, double* %412, double* %413, i32* %414, i32 4)
  %_rtB_798 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %416 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_798, i64 0, i32 31
  store double %415, double* %416, align 1
  %_rtDW_799 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %417 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_799, i64 0, i32 1
  %_rtDW__UnitDelay1_DSTATE = load double, double* %417, align 1
  %_rtP_800 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %418 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_800, i64 0, i32 94, i64 0
  %419 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_800, i64 0, i32 95, i64 0
  %420 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_800, i64 0, i32 93, i64 0
  %421 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_800, i64 0, i32 272, i64 0
  %422 = call double @look2_linlxpw(double %_rtDW__UnitDelay1_DSTATE, double 0.000000e+00, double* %418, double* %419, double* %420, i32* %421, i32 22)
  %_rtB_804 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %423 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_804, i64 0, i32 32
  store double %422, double* %423, align 1
  %_rtDW_805 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %424 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_805, i64 0, i32 1
  %_rtDW__UnitDelay1_DSTATE806 = load double, double* %424, align 1
  %_rtP_807 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %425 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_807, i64 0, i32 97, i64 0
  %426 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_807, i64 0, i32 98, i64 0
  %427 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_807, i64 0, i32 96, i64 0
  %428 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_807, i64 0, i32 273, i64 0
  %429 = call double @look2_linlxpw(double %_rtDW__UnitDelay1_DSTATE806, double 0.000000e+00, double* %425, double* %426, double* %427, i32* %428, i32 4)
  %_rtB_811 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %430 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_811, i64 0, i32 33
  store double %429, double* %430, align 1
  %_rtDW_812 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %431 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_812, i64 0, i32 1
  %_rtDW__UnitDelay1_DSTATE813 = load double, double* %431, align 1
  %_rtP_814 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %432 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_814, i64 0, i32 100, i64 0
  %433 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_814, i64 0, i32 101, i64 0
  %434 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_814, i64 0, i32 99, i64 0
  %435 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_814, i64 0, i32 274, i64 0
  %436 = call double @look2_linlxpw(double %_rtDW__UnitDelay1_DSTATE813, double 0.000000e+00, double* %432, double* %433, double* %434, i32* %435, i32 4)
  %_rtB_818 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %437 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_818, i64 0, i32 34
  store double %436, double* %437, align 1
  %_rtDW_819 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %438 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_819, i64 0, i32 1
  %_rtDW__UnitDelay1_DSTATE820 = load double, double* %438, align 1
  %_rtP_821 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %439 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_821, i64 0, i32 103, i64 0
  %440 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_821, i64 0, i32 104, i64 0
  %441 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_821, i64 0, i32 102, i64 0
  %442 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_821, i64 0, i32 275, i64 0
  %443 = call double @look2_linlxpw(double %_rtDW__UnitDelay1_DSTATE820, double 0.000000e+00, double* %439, double* %440, double* %441, i32* %442, i32 22)
  %_rtB_825 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %444 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_825, i64 0, i32 35
  store double %443, double* %444, align 1
  %_rtDW_826 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %445 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_826, i64 0, i32 1
  %_rtDW__UnitDelay1_DSTATE827 = load double, double* %445, align 1
  %_rtP_828 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %446 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_828, i64 0, i32 106, i64 0
  %447 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_828, i64 0, i32 107, i64 0
  %448 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_828, i64 0, i32 105, i64 0
  %449 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_828, i64 0, i32 276, i64 0
  %450 = call double @look2_linlxpw(double %_rtDW__UnitDelay1_DSTATE827, double 0.000000e+00, double* %446, double* %447, double* %448, i32* %449, i32 4)
  %_rtB_832 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %451 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_832, i64 0, i32 36
  store double %450, double* %451, align 1
  %_rtDW_833 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %452 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_833, i64 0, i32 1
  %_rtDW__UnitDelay1_DSTATE834 = load double, double* %452, align 1
  %_rtP_835 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %453 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_835, i64 0, i32 109, i64 0
  %454 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_835, i64 0, i32 110, i64 0
  %455 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_835, i64 0, i32 108, i64 0
  %456 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_835, i64 0, i32 277, i64 0
  %457 = call double @look2_linlxpw(double %_rtDW__UnitDelay1_DSTATE834, double 0.000000e+00, double* %453, double* %454, double* %455, i32* %456, i32 4)
  %_rtB_839 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %458 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_839, i64 0, i32 37
  store double %457, double* %458, align 1
  %_rtDW_840 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %459 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_840, i64 0, i32 1
  %_rtDW__UnitDelay1_DSTATE841 = load double, double* %459, align 1
  %_rtP_842 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %460 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_842, i64 0, i32 112, i64 0
  %461 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_842, i64 0, i32 113, i64 0
  %462 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_842, i64 0, i32 111, i64 0
  %463 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_842, i64 0, i32 278, i64 0
  %464 = call double @look2_linlxpw(double %_rtDW__UnitDelay1_DSTATE841, double 0.000000e+00, double* %460, double* %461, double* %462, i32* %463, i32 22)
  %_rtB_846 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %465 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_846, i64 0, i32 38
  store double %464, double* %465, align 1
  %_rtDW_847 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %466 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_847, i64 0, i32 1
  %_rtDW__UnitDelay1_DSTATE848 = load double, double* %466, align 1
  %_rtP_849 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %467 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_849, i64 0, i32 115, i64 0
  %468 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_849, i64 0, i32 116, i64 0
  %469 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_849, i64 0, i32 114, i64 0
  %470 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_849, i64 0, i32 279, i64 0
  %471 = call double @look2_linlxpw(double %_rtDW__UnitDelay1_DSTATE848, double 0.000000e+00, double* %467, double* %468, double* %469, i32* %470, i32 4)
  %_rtB_853 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %472 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_853, i64 0, i32 39
  store double %471, double* %472, align 1
  %_rtDW_854 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %473 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_854, i64 0, i32 1
  %_rtDW__UnitDelay1_DSTATE855 = load double, double* %473, align 1
  %_rtP_856 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %474 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_856, i64 0, i32 118, i64 0
  %475 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_856, i64 0, i32 119, i64 0
  %476 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_856, i64 0, i32 117, i64 0
  %477 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_856, i64 0, i32 280, i64 0
  %478 = call double @look2_linlxpw(double %_rtDW__UnitDelay1_DSTATE855, double 0.000000e+00, double* %474, double* %475, double* %476, i32* %477, i32 4)
  %_rtB_860 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %479 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_860, i64 0, i32 40
  store double %478, double* %479, align 1
  %_rtDW_861 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %480 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_861, i64 0, i32 2
  %_rtDW__UnitDelay1_DSTATE_i = load double, double* %480, align 1
  %481 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_861, i64 0, i32 3
  %_rtDW__UnitDelay4_DSTATE = load double, double* %481, align 1
  %_rtP_863 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %482 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_863, i64 0, i32 123, i64 0
  %483 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_863, i64 0, i32 124, i64 0
  %484 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_863, i64 0, i32 122, i64 0
  %485 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_863, i64 0, i32 281, i64 0
  %486 = call double @look2_linlcpw(double %_rtDW__UnitDelay1_DSTATE_i, double %_rtDW__UnitDelay4_DSTATE, double* %482, double* %483, double* %484, i32* %485, i32 4)
  store double %486, double* %rtb_C_L_delta_e_, align 8
  %_rtDW_867 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %487 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_867, i64 0, i32 2
  %_rtDW__UnitDelay1_DSTATE_i868 = load double, double* %487, align 1
  %488 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_867, i64 0, i32 3
  %_rtDW__UnitDelay4_DSTATE870 = load double, double* %488, align 1
  %_rtP_871 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %489 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_871, i64 0, i32 126, i64 0
  %490 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_871, i64 0, i32 127, i64 0
  %491 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_871, i64 0, i32 125, i64 0
  %492 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_871, i64 0, i32 282, i64 0
  %493 = call double @look2_linlcpw(double %_rtDW__UnitDelay1_DSTATE_i868, double %_rtDW__UnitDelay4_DSTATE870, double* %489, double* %490, double* %491, i32* %492, i32 4)
  store double %493, double* %rtb_C_D_delta_e_, align 8
  %_rtDW_875 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %494 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_875, i64 0, i32 2
  %_rtDW__UnitDelay1_DSTATE_i876 = load double, double* %494, align 1
  %495 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_875, i64 0, i32 3
  %_rtDW__UnitDelay4_DSTATE878 = load double, double* %495, align 1
  %_rtP_879 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %496 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_879, i64 0, i32 129, i64 0
  %497 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_879, i64 0, i32 130, i64 0
  %498 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_879, i64 0, i32 128, i64 0
  %499 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_879, i64 0, i32 283, i64 0
  %500 = call double @look2_linlcpw(double %_rtDW__UnitDelay1_DSTATE_i876, double %_rtDW__UnitDelay4_DSTATE878, double* %496, double* %497, double* %498, i32* %499, i32 4)
  store double %500, double* %rtb_C_m_delta_e_, align 8
  %_rtDW_883 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %501 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_883, i64 0, i32 4
  %_rtDW__UnitDelay2_DSTATE = load double, double* %501, align 1
  %502 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_883, i64 0, i32 3
  %_rtDW__UnitDelay4_DSTATE885 = load double, double* %502, align 1
  %_rtP_886 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %503 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_886, i64 0, i32 133, i64 0
  %504 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_886, i64 0, i32 134, i64 0
  %505 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_886, i64 0, i32 132, i64 0
  %506 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_886, i64 0, i32 284, i64 0
  %507 = call double @look2_linlcpw(double %_rtDW__UnitDelay2_DSTATE, double %_rtDW__UnitDelay4_DSTATE885, double* %503, double* %504, double* %505, i32* %506, i32 4)
  store double %507, double* %rtb_C_Y_delta_a_, align 8
  %_rtDW_890 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %508 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_890, i64 0, i32 5
  %_rtDW__UnitDelay3_DSTATE = load double, double* %508, align 1
  %509 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_890, i64 0, i32 3
  %_rtDW__UnitDelay4_DSTATE892 = load double, double* %509, align 1
  %_rtP_893 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %510 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_893, i64 0, i32 137, i64 0
  %511 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_893, i64 0, i32 138, i64 0
  %512 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_893, i64 0, i32 136, i64 0
  %513 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_893, i64 0, i32 285, i64 0
  %514 = call double @look2_linlcpw(double %_rtDW__UnitDelay3_DSTATE, double %_rtDW__UnitDelay4_DSTATE892, double* %510, double* %511, double* %512, i32* %513, i32 4)
  store double %514, double* %rtb_C_Y_delta_r_, align 8
  %_rtDW_897 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %515 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_897, i64 0, i32 4
  %_rtDW__UnitDelay2_DSTATE898 = load double, double* %515, align 1
  %516 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_897, i64 0, i32 3
  %_rtDW__UnitDelay4_DSTATE900 = load double, double* %516, align 1
  %_rtP_901 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %517 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_901, i64 0, i32 140, i64 0
  %518 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_901, i64 0, i32 141, i64 0
  %519 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_901, i64 0, i32 139, i64 0
  %520 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_901, i64 0, i32 286, i64 0
  %521 = call double @look2_linlcpw(double %_rtDW__UnitDelay2_DSTATE898, double %_rtDW__UnitDelay4_DSTATE900, double* %517, double* %518, double* %519, i32* %520, i32 4)
  store double %521, double* %rtb_C_l_delta_a_, align 8
  %_rtDW_905 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %522 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_905, i64 0, i32 5
  %_rtDW__UnitDelay3_DSTATE906 = load double, double* %522, align 1
  %523 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_905, i64 0, i32 3
  %_rtDW__UnitDelay4_DSTATE908 = load double, double* %523, align 1
  %_rtP_909 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %524 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_909, i64 0, i32 143, i64 0
  %525 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_909, i64 0, i32 144, i64 0
  %526 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_909, i64 0, i32 142, i64 0
  %527 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_909, i64 0, i32 287, i64 0
  %528 = call double @look2_linlcpw(double %_rtDW__UnitDelay3_DSTATE906, double %_rtDW__UnitDelay4_DSTATE908, double* %524, double* %525, double* %526, i32* %527, i32 4)
  store double %528, double* %rtb_C_l_delta_r_, align 8
  %_rtDW_913 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %529 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_913, i64 0, i32 4
  %_rtDW__UnitDelay2_DSTATE914 = load double, double* %529, align 1
  %530 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_913, i64 0, i32 3
  %_rtDW__UnitDelay4_DSTATE916 = load double, double* %530, align 1
  %_rtP_917 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %531 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_917, i64 0, i32 146, i64 0
  %532 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_917, i64 0, i32 147, i64 0
  %533 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_917, i64 0, i32 145, i64 0
  %534 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_917, i64 0, i32 288, i64 0
  %535 = call double @look2_linlcpw(double %_rtDW__UnitDelay2_DSTATE914, double %_rtDW__UnitDelay4_DSTATE916, double* %531, double* %532, double* %533, i32* %534, i32 4)
  store double %535, double* %rtb_C_n_delta_a_, align 8
  %_rtDW_921 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %536 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_921, i64 0, i32 5
  %_rtDW__UnitDelay3_DSTATE922 = load double, double* %536, align 1
  %537 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_921, i64 0, i32 3
  %_rtDW__UnitDelay4_DSTATE924 = load double, double* %537, align 1
  %_rtP_925 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %538 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_925, i64 0, i32 149, i64 0
  %539 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_925, i64 0, i32 150, i64 0
  %540 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_925, i64 0, i32 148, i64 0
  %541 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_925, i64 0, i32 289, i64 0
  %542 = call double @look2_linlcpw(double %_rtDW__UnitDelay3_DSTATE922, double %_rtDW__UnitDelay4_DSTATE924, double* %538, double* %539, double* %540, i32* %541, i32 4)
  store double %542, double* %rtb_C_n_delta_r_, align 8
  %vm_ssIsSampleHitVar1_931.pre = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  br label %false54

false54:                                          ; preds = %merge323, %true53
  %vm_ssIsSampleHitVar1_931 = phi i32 [ 0, %merge323 ], [ %vm_ssIsSampleHitVar1_931.pre, %true53 ]
  %543 = bitcast double* %vm_ssGetTVar7_ to i64*
  %vm_ssGetTVar7_9292590 = load i64, i64* %543, align 8
  %_rtB_930 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %544 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_930, i64 0, i32 41
  %545 = bitcast double* %544 to i64*
  store i64 %vm_ssGetTVar7_9292590, i64* %545, align 1
  store i32 %vm_ssIsSampleHitVar1_931, i32* %i_, align 4
  %546 = icmp eq i32 %vm_ssIsSampleHitVar1_931, 0
  br i1 %546, label %false56, label %true55

true55:                                           ; preds = %false54
  %_rtB_933 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %547 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_933, i64 0, i32 24, i64 0
  %548 = bitcast double* %547 to i64*
  %_rtB__elevontoelevatoraileron_el9342769 = load i64, i64* %548, align 1
  %549 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_933, i64 0, i32 147
  %550 = bitcast [4 x double]* %549 to i64*
  store i64 %_rtB__elevontoelevatoraileron_el9342769, i64* %550, align 1
  %_rtB_936 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %551 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_936, i64 0, i32 24, i64 1
  %552 = bitcast double* %551 to i64*
  %_rtB__elevontoelevatoraileron_el9372770 = load i64, i64* %552, align 1
  %553 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_936, i64 0, i32 147, i64 1
  %554 = bitcast double* %553 to i64*
  store i64 %_rtB__elevontoelevatoraileron_el9372770, i64* %554, align 1
  %_rtB_939 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %555 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_939, i64 0, i32 21, i64 2
  %556 = bitcast double* %555 to i64*
  %_rtB__MultiportSwitch_c_el9402771 = load i64, i64* %556, align 1
  %557 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_939, i64 0, i32 147, i64 2
  %558 = bitcast double* %557 to i64*
  store i64 %_rtB__MultiportSwitch_c_el9402771, i64* %558, align 1
  %_rtB_942 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %559 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_942, i64 0, i32 25
  %560 = bitcast double* %559 to i64*
  %_rtB__Saturation_c2772 = load i64, i64* %560, align 1
  %561 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_942, i64 0, i32 147, i64 3
  %562 = bitcast double* %561 to i64*
  store i64 %_rtB__Saturation_c2772, i64* %562, align 1
  %_rtB_944 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %563 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_944, i64 0, i32 26
  %564 = bitcast double* %563 to i64*
  %_rtB__C_L_alpha2773 = load i64, i64* %564, align 1
  %565 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_944, i64 0, i32 148
  %566 = bitcast [15 x double]* %565 to i64*
  store i64 %_rtB__C_L_alpha2773, i64* %566, align 1
  %_rtB_946 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %567 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_946, i64 0, i32 27
  %568 = bitcast double* %567 to i64*
  %_rtB__C_L_q2774 = load i64, i64* %568, align 1
  %569 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_946, i64 0, i32 148, i64 1
  %570 = bitcast double* %569 to i64*
  store i64 %_rtB__C_L_q2774, i64* %570, align 1
  %_rtB_948 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %571 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_948, i64 0, i32 28
  %572 = bitcast double* %571 to i64*
  %_rtB__C_D_alpha2775 = load i64, i64* %572, align 1
  %573 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_948, i64 0, i32 148, i64 2
  %574 = bitcast double* %573 to i64*
  store i64 %_rtB__C_D_alpha2775, i64* %574, align 1
  %_rtB_950 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %575 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_950, i64 0, i32 29
  %576 = bitcast double* %575 to i64*
  %_rtB__C_D_q2776 = load i64, i64* %576, align 1
  %577 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_950, i64 0, i32 148, i64 3
  %578 = bitcast double* %577 to i64*
  store i64 %_rtB__C_D_q2776, i64* %578, align 1
  %_rtB_952 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %579 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_952, i64 0, i32 30
  %580 = bitcast double* %579 to i64*
  %_rtB__C_m_alpha2777 = load i64, i64* %580, align 1
  %581 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_952, i64 0, i32 148, i64 4
  %582 = bitcast double* %581 to i64*
  store i64 %_rtB__C_m_alpha2777, i64* %582, align 1
  %_rtB_954 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %583 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_954, i64 0, i32 31
  %584 = bitcast double* %583 to i64*
  %_rtB__C_m_q2778 = load i64, i64* %584, align 1
  %585 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_954, i64 0, i32 148, i64 5
  %586 = bitcast double* %585 to i64*
  store i64 %_rtB__C_m_q2778, i64* %586, align 1
  %_rtB_956 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %587 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_956, i64 0, i32 32
  %588 = bitcast double* %587 to i64*
  %_rtB__C_Y_beta2779 = load i64, i64* %588, align 1
  %589 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_956, i64 0, i32 148, i64 6
  %590 = bitcast double* %589 to i64*
  store i64 %_rtB__C_Y_beta2779, i64* %590, align 1
  %_rtB_958 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %591 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_958, i64 0, i32 33
  %592 = bitcast double* %591 to i64*
  %_rtB__C_Y_p2780 = load i64, i64* %592, align 1
  %593 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_958, i64 0, i32 148, i64 7
  %594 = bitcast double* %593 to i64*
  store i64 %_rtB__C_Y_p2780, i64* %594, align 1
  %_rtB_960 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %595 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_960, i64 0, i32 34
  %596 = bitcast double* %595 to i64*
  %_rtB__C_Y_r2781 = load i64, i64* %596, align 1
  %597 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_960, i64 0, i32 148, i64 8
  %598 = bitcast double* %597 to i64*
  store i64 %_rtB__C_Y_r2781, i64* %598, align 1
  %_rtB_962 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %599 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_962, i64 0, i32 35
  %600 = bitcast double* %599 to i64*
  %_rtB__C_l_beta2782 = load i64, i64* %600, align 1
  %601 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_962, i64 0, i32 148, i64 9
  %602 = bitcast double* %601 to i64*
  store i64 %_rtB__C_l_beta2782, i64* %602, align 1
  %_rtB_964 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %603 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_964, i64 0, i32 36
  %604 = bitcast double* %603 to i64*
  %_rtB__C_l_p2783 = load i64, i64* %604, align 1
  %605 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_964, i64 0, i32 148, i64 10
  %606 = bitcast double* %605 to i64*
  store i64 %_rtB__C_l_p2783, i64* %606, align 1
  %_rtB_966 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %607 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_966, i64 0, i32 37
  %608 = bitcast double* %607 to i64*
  %_rtB__C_l_r2784 = load i64, i64* %608, align 1
  %609 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_966, i64 0, i32 148, i64 11
  %610 = bitcast double* %609 to i64*
  store i64 %_rtB__C_l_r2784, i64* %610, align 1
  %_rtB_968 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %611 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_968, i64 0, i32 38
  %612 = bitcast double* %611 to i64*
  %_rtB__C_n_beta2785 = load i64, i64* %612, align 1
  %613 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_968, i64 0, i32 148, i64 12
  %614 = bitcast double* %613 to i64*
  store i64 %_rtB__C_n_beta2785, i64* %614, align 1
  %_rtB_970 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %615 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_970, i64 0, i32 39
  %616 = bitcast double* %615 to i64*
  %_rtB__C_n_p2786 = load i64, i64* %616, align 1
  %617 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_970, i64 0, i32 148, i64 13
  %618 = bitcast double* %617 to i64*
  store i64 %_rtB__C_n_p2786, i64* %618, align 1
  %_rtB_972 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %619 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_972, i64 0, i32 40
  %620 = bitcast double* %619 to i64*
  %_rtB__C_n_r2787 = load i64, i64* %620, align 1
  %621 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_972, i64 0, i32 148, i64 14
  %622 = bitcast double* %621 to i64*
  store i64 %_rtB__C_n_r2787, i64* %622, align 1
  %623 = bitcast double* %rtb_C_L_delta_e_ to i64*
  %rtb_C_L_delta_e_9742788 = load i64, i64* %623, align 8
  %_rtB_975 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %624 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_975, i64 0, i32 149
  %625 = bitcast [9 x double]* %624 to i64*
  store i64 %rtb_C_L_delta_e_9742788, i64* %625, align 1
  %626 = bitcast double* %rtb_C_D_delta_e_ to i64*
  %rtb_C_D_delta_e_9762789 = load i64, i64* %626, align 8
  %_rtB_977 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %627 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_977, i64 0, i32 149, i64 1
  %628 = bitcast double* %627 to i64*
  store i64 %rtb_C_D_delta_e_9762789, i64* %628, align 1
  %629 = bitcast double* %rtb_C_m_delta_e_ to i64*
  %rtb_C_m_delta_e_9782790 = load i64, i64* %629, align 8
  %_rtB_979 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %630 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_979, i64 0, i32 149, i64 2
  %631 = bitcast double* %630 to i64*
  store i64 %rtb_C_m_delta_e_9782790, i64* %631, align 1
  %632 = bitcast double* %rtb_C_Y_delta_a_ to i64*
  %rtb_C_Y_delta_a_9802791 = load i64, i64* %632, align 8
  %_rtB_981 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %633 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_981, i64 0, i32 149, i64 3
  %634 = bitcast double* %633 to i64*
  store i64 %rtb_C_Y_delta_a_9802791, i64* %634, align 1
  %635 = bitcast double* %rtb_C_Y_delta_r_ to i64*
  %rtb_C_Y_delta_r_9822792 = load i64, i64* %635, align 8
  %_rtB_983 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %636 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_983, i64 0, i32 149, i64 4
  %637 = bitcast double* %636 to i64*
  store i64 %rtb_C_Y_delta_r_9822792, i64* %637, align 1
  %638 = bitcast double* %rtb_C_l_delta_a_ to i64*
  %rtb_C_l_delta_a_9842793 = load i64, i64* %638, align 8
  %_rtB_985 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %639 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_985, i64 0, i32 149, i64 5
  %640 = bitcast double* %639 to i64*
  store i64 %rtb_C_l_delta_a_9842793, i64* %640, align 1
  %641 = bitcast double* %rtb_C_l_delta_r_ to i64*
  %rtb_C_l_delta_r_9862794 = load i64, i64* %641, align 8
  %_rtB_987 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %642 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_987, i64 0, i32 149, i64 6
  %643 = bitcast double* %642 to i64*
  store i64 %rtb_C_l_delta_r_9862794, i64* %643, align 1
  %644 = bitcast double* %rtb_C_n_delta_a_ to i64*
  %rtb_C_n_delta_a_9882795 = load i64, i64* %644, align 8
  %_rtB_989 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %645 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_989, i64 0, i32 149, i64 7
  %646 = bitcast double* %645 to i64*
  store i64 %rtb_C_n_delta_a_9882795, i64* %646, align 1
  %647 = bitcast double* %rtb_C_n_delta_r_ to i64*
  %rtb_C_n_delta_r_9902796 = load i64, i64* %647, align 8
  %_rtB_991 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %648 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_991, i64 0, i32 149, i64 8
  %649 = bitcast double* %648 to i64*
  store i64 %rtb_C_n_delta_r_9902796, i64* %649, align 1
  %S_992 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_992, i32 6, i32 3, i32 104)
  %_rtB_993 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %650 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_993, i64 0, i32 5
  %_rtB__PhysicsModel994 = load double, double* %650, align 1
  %651 = fptosi double %_rtB__PhysicsModel994 to i32
  %652 = icmp eq i32 %651, 0
  br i1 %652, label %merge325, label %merge324

false56:                                          ; preds = %false54, %false60
  %vm_ssIsSampleHitVar1_1017 = phi i32 [ 0, %false54 ], [ %vm_ssIsSampleHitVar1_1017.pre, %false60 ]
  store i32 %vm_ssIsSampleHitVar1_1017, i32* %i_, align 4
  %653 = icmp eq i32 %vm_ssIsSampleHitVar1_1017, 0
  br i1 %653, label %false63, label %true62

true59:                                           ; preds = %merge324
  %_rtB_996 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %654 = sext i32 %i_1000 to i64
  %655 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_996, i64 0, i32 150, i64 %654
  %656 = bitcast double* %655 to i64*
  %_rtB__tau_el2797 = load i64, i64* %656, align 1
  %657 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_996, i64 0, i32 42, i64 %654
  %658 = bitcast double* %657 to i64*
  store i64 %_rtB__tau_el2797, i64* %658, align 1
  %tmp59 = add i32 %i_1000, 1
  br label %merge324

false60:                                          ; preds = %merge325, %merge324
  %_rtP_1002 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %659 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1002, i64 0, i32 151
  %_rtP__Gain_Gain_i = load double, double* %659, align 1
  %_rtB_1003 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %660 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1003, i64 0, i32 42, i64 0
  %_rtB__MultiportSwitch_o_el = load double, double* %660, align 1
  %tmp60 = fmul double %_rtP__Gain_Gain_i, %_rtB__MultiportSwitch_o_el
  %661 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1003, i64 0, i32 171, i64 0
  store double %tmp60, double* %661, align 1
  %_rtP_1005 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %662 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1005, i64 0, i32 151
  %_rtP__Gain_Gain_i1006 = load double, double* %662, align 1
  %_rtB_1007 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %663 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1007, i64 0, i32 42, i64 1
  %_rtB__MultiportSwitch_o_el1008 = load double, double* %663, align 1
  %tmp61 = fmul double %_rtP__Gain_Gain_i1006, %_rtB__MultiportSwitch_o_el1008
  %664 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1007, i64 0, i32 171, i64 1
  store double %tmp61, double* %664, align 1
  %_rtP_1010 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %665 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1010, i64 0, i32 151
  %_rtP__Gain_Gain_i1011 = load double, double* %665, align 1
  %_rtB_1012 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %666 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1012, i64 0, i32 42, i64 2
  %_rtB__MultiportSwitch_o_el1013 = load double, double* %666, align 1
  %tmp62 = fmul double %_rtP__Gain_Gain_i1011, %_rtB__MultiportSwitch_o_el1013
  %667 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1012, i64 0, i32 171, i64 2
  store double %tmp62, double* %667, align 1
  %S_1015 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1015, i32 21, i32 85, i32 104)
  %S_1016 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1016, i32 21, i32 86, i32 104)
  %vm_ssIsSampleHitVar1_1017.pre = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  br label %false56

true61:                                           ; preds = %merge325
  %_rtB_2523 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %668 = sext i32 %i_2527 to i64
  %669 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2523, i64 0, i32 101, i64 %668
  %670 = bitcast double* %669 to i64*
  %_rtB__Constant_di_el2799 = load i64, i64* %670, align 1
  %671 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2523, i64 0, i32 42, i64 %668
  %672 = bitcast double* %671 to i64*
  store i64 %_rtB__Constant_di_el2799, i64* %672, align 1
  %tmp454 = add i32 %i_2527, 1
  br label %merge325

true62:                                           ; preds = %false56
  %_rtB_1019 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %673 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1019, i64 0, i32 167, i64 7
  %674 = bitcast double* %673 to i64*
  %_rtB__Memory_l_el10202766 = load i64, i64* %674, align 1
  %675 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1019, i64 0, i32 4
  %676 = bitcast %Acceleration.40* %675 to i64*
  store i64 %_rtB__Memory_l_el10202766, i64* %676, align 1
  %_rtB_1022 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %677 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1022, i64 0, i32 167, i64 8
  %678 = bitcast double* %677 to i64*
  %_rtB__Memory_l_el10232767 = load i64, i64* %678, align 1
  %679 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1022, i64 0, i32 4, i32 1
  %680 = bitcast double* %679 to i64*
  store i64 %_rtB__Memory_l_el10232767, i64* %680, align 1
  %_rtB_1025 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %681 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1025, i64 0, i32 167, i64 9
  %682 = bitcast double* %681 to i64*
  %_rtB__Memory_l_el10262768 = load i64, i64* %682, align 1
  %683 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1025, i64 0, i32 4, i32 2
  %684 = bitcast double* %683 to i64*
  store i64 %_rtB__Memory_l_el10262768, i64* %684, align 1
  br label %false63

false63:                                          ; preds = %false56, %true62
  %_rtB_1028 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %685 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1028, i64 0, i32 12, i64 0
  %686 = bitcast double* %685 to i64*
  %_rtB__Integrator_el10292591 = load i64, i64* %686, align 1
  %687 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1028, i64 0, i32 1
  %688 = bitcast %States.41* %687 to i64*
  store i64 %_rtB__Integrator_el10292591, i64* %688, align 1
  %_rtB_1031 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %689 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1031, i64 0, i32 12, i64 1
  %690 = bitcast double* %689 to i64*
  %_rtB__Integrator_el10322592 = load i64, i64* %690, align 1
  %691 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1031, i64 0, i32 1, i32 0, i32 1
  %692 = bitcast double* %691 to i64*
  store i64 %_rtB__Integrator_el10322592, i64* %692, align 1
  %_rtB_1034 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %693 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1034, i64 0, i32 12, i64 2
  %694 = bitcast double* %693 to i64*
  %_rtB__Integrator_el10352593 = load i64, i64* %694, align 1
  %695 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1034, i64 0, i32 1, i32 0, i32 2
  %696 = bitcast double* %695 to i64*
  store i64 %_rtB__Integrator_el10352593, i64* %696, align 1
  %_rtB_1037 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %697 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1037, i64 0, i32 158
  %698 = bitcast double* %697 to i64*
  %_rtB__phi10382594 = load i64, i64* %698, align 1
  %699 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1037, i64 0, i32 1, i32 1
  %700 = bitcast %Attitude.36* %699 to i64*
  store i64 %_rtB__phi10382594, i64* %700, align 1
  %_rtB_1040 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %701 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1040, i64 0, i32 159
  %702 = bitcast double* %701 to i64*
  %_rtB__theta10412595 = load i64, i64* %702, align 1
  %703 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1040, i64 0, i32 1, i32 1, i32 1
  %704 = bitcast double* %703 to i64*
  store i64 %_rtB__theta10412595, i64* %704, align 1
  %_rtB_1043 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %705 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1043, i64 0, i32 160
  %706 = bitcast double* %705 to i64*
  %_rtB__psi10442596 = load i64, i64* %706, align 1
  %707 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1043, i64 0, i32 1, i32 1, i32 2
  %708 = bitcast double* %707 to i64*
  store i64 %_rtB__psi10442596, i64* %708, align 1
  %_rtB_1046 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %709 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1046, i64 0, i32 13
  %710 = bitcast double* %709 to i64*
  %_rtB__Product10472597 = load i64, i64* %710, align 1
  %711 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1046, i64 0, i32 1, i32 2
  %712 = bitcast %Quaternion.37* %711 to i64*
  store i64 %_rtB__Product10472597, i64* %712, align 1
  %_rtB_1049 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %713 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1049, i64 0, i32 12, i64 7
  %714 = bitcast double* %713 to i64*
  %_rtB__Integrator_el10502598 = load i64, i64* %714, align 1
  %715 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1049, i64 0, i32 1, i32 3
  %716 = bitcast %Velocity.38* %715 to i64*
  store i64 %_rtB__Integrator_el10502598, i64* %716, align 1
  %_rtB_1052 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %717 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1052, i64 0, i32 12, i64 8
  %718 = bitcast double* %717 to i64*
  %_rtB__Integrator_el10532599 = load i64, i64* %718, align 1
  %719 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1052, i64 0, i32 1, i32 3, i32 1
  %720 = bitcast double* %719 to i64*
  store i64 %_rtB__Integrator_el10532599, i64* %720, align 1
  %_rtB_1055 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %721 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1055, i64 0, i32 12, i64 9
  %722 = bitcast double* %721 to i64*
  %_rtB__Integrator_el10562600 = load i64, i64* %722, align 1
  %723 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1055, i64 0, i32 1, i32 3, i32 2
  %724 = bitcast double* %723 to i64*
  store i64 %_rtB__Integrator_el10562600, i64* %724, align 1
  %_rtB_1058 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %725 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1058, i64 0, i32 12, i64 10
  %726 = bitcast double* %725 to i64*
  %_rtB__Integrator_el10592601 = load i64, i64* %726, align 1
  %727 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1058, i64 0, i32 1, i32 4
  %728 = bitcast %AngularVelocity.39* %727 to i64*
  store i64 %_rtB__Integrator_el10592601, i64* %728, align 1
  %_rtB_1061 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %729 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1061, i64 0, i32 12, i64 11
  %730 = bitcast double* %729 to i64*
  %_rtB__Integrator_el10622602 = load i64, i64* %730, align 1
  %731 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1061, i64 0, i32 1, i32 4, i32 1
  %732 = bitcast double* %731 to i64*
  store i64 %_rtB__Integrator_el10622602, i64* %732, align 1
  %_rtB_1064 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %733 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1064, i64 0, i32 12, i64 12
  %734 = bitcast double* %733 to i64*
  %_rtB__Integrator_el10652603 = load i64, i64* %734, align 1
  %735 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1064, i64 0, i32 1, i32 4, i32 2
  %736 = bitcast double* %735 to i64*
  store i64 %_rtB__Integrator_el10652603, i64* %736, align 1
  %_rtB_1067 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %_rtB__Acceleration_db.elt = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1067, i64 0, i32 4, i32 0
  %737 = bitcast double* %_rtB__Acceleration_db.elt to i64*
  %_rtB__Acceleration_db.unpack2615 = load i64, i64* %737, align 1
  %_rtB__Acceleration_db.elt2604 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1067, i64 0, i32 4, i32 1
  %738 = bitcast double* %_rtB__Acceleration_db.elt2604 to i64*
  %_rtB__Acceleration_db.unpack26052614 = load i64, i64* %738, align 1
  %_rtB__Acceleration_db.elt2606 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1067, i64 0, i32 4, i32 2
  %739 = bitcast double* %_rtB__Acceleration_db.elt2606 to i64*
  %_rtB__Acceleration_db.unpack26072613 = load i64, i64* %739, align 1
  %740 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1067, i64 0, i32 1, i32 5
  %741 = bitcast %Acceleration.40* %740 to i64*
  store i64 %_rtB__Acceleration_db.unpack2615, i64* %741, align 8
  %.repack2609 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1067, i64 0, i32 1, i32 5, i32 1
  %742 = bitcast double* %.repack2609 to i64*
  store i64 %_rtB__Acceleration_db.unpack26052614, i64* %742, align 8
  %.repack2611 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1067, i64 0, i32 1, i32 5, i32 2
  %743 = bitcast double* %.repack2611 to i64*
  store i64 %_rtB__Acceleration_db.unpack26072613, i64* %743, align 8
  %S_1069 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1069, i32 4, i32 0, i32 104)
  %vm_ssIsSampleHitVar1_1070 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_1070, i32* %i_, align 4
  %744 = icmp eq i32 %vm_ssIsSampleHitVar1_1070, 0
  br i1 %744, label %false65, label %true64

true64:                                           ; preds = %false63
  %_rtB_1072 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %745 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1072, i64 0, i32 161, i64 0
  %746 = bitcast double* %745 to i64*
  %_rtB__y_el2760 = load i64, i64* %746, align 1
  %747 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1072, i64 0, i32 168
  %748 = bitcast [6 x double]* %747 to i64*
  store i64 %_rtB__y_el2760, i64* %748, align 1
  %_rtB_1074 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %749 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1074, i64 0, i32 161, i64 10
  %750 = bitcast double* %749 to i64*
  %_rtB__y_el10752761 = load i64, i64* %750, align 1
  %751 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1074, i64 0, i32 168, i64 3
  %752 = bitcast double* %751 to i64*
  store i64 %_rtB__y_el10752761, i64* %752, align 1
  %_rtB_1077 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %753 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1077, i64 0, i32 161, i64 1
  %754 = bitcast double* %753 to i64*
  %_rtB__y_el10782762 = load i64, i64* %754, align 1
  %755 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1077, i64 0, i32 168, i64 1
  %756 = bitcast double* %755 to i64*
  store i64 %_rtB__y_el10782762, i64* %756, align 1
  %_rtB_1080 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %757 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1080, i64 0, i32 161, i64 11
  %758 = bitcast double* %757 to i64*
  %_rtB__y_el10812763 = load i64, i64* %758, align 1
  %759 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1080, i64 0, i32 168, i64 4
  %760 = bitcast double* %759 to i64*
  store i64 %_rtB__y_el10812763, i64* %760, align 1
  %_rtB_1083 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %761 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1083, i64 0, i32 161, i64 2
  %762 = bitcast double* %761 to i64*
  %_rtB__y_el10842764 = load i64, i64* %762, align 1
  %763 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1083, i64 0, i32 168, i64 2
  %764 = bitcast double* %763 to i64*
  store i64 %_rtB__y_el10842764, i64* %764, align 1
  %_rtB_1086 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %765 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1086, i64 0, i32 161, i64 12
  %766 = bitcast double* %765 to i64*
  %_rtB__y_el10872765 = load i64, i64* %766, align 1
  %767 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1086, i64 0, i32 168, i64 5
  %768 = bitcast double* %767 to i64*
  store i64 %_rtB__y_el10872765, i64* %768, align 1
  %S_1089 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1089, i32 21, i32 96, i32 104)
  %vm_ssIsSampleHitVar1_1092.pre = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  br label %false65

false65:                                          ; preds = %false63, %true64
  %vm_ssIsSampleHitVar1_1092 = phi i32 [ 0, %false63 ], [ %vm_ssIsSampleHitVar1_1092.pre, %true64 ]
  %_rtX_1090 = load %X_X8_T.50*, %X_X8_T.50** %_rtX_, align 8
  %769 = getelementptr inbounds %X_X8_T.50, %X_X8_T.50* %_rtX_1090, i64 0, i32 1
  %770 = bitcast double* %769 to i64*
  %_rtX__Integrator_CSTATE_o2616 = load i64, i64* %770, align 1
  %_rtB_1091 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %771 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1091, i64 0, i32 43
  %772 = bitcast double* %771 to i64*
  store i64 %_rtX__Integrator_CSTATE_o2616, i64* %772, align 1
  store i32 %vm_ssIsSampleHitVar1_1092, i32* %i_, align 4
  %773 = icmp eq i32 %vm_ssIsSampleHitVar1_1092, 0
  br i1 %773, label %false67, label %true66

true66:                                           ; preds = %false65
  %S_1094 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1094, i32 1, i32 0, i32 104)
  br label %false67

false67:                                          ; preds = %false65, %true66
  %_rtB_1095 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %774 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1095, i64 0, i32 13
  %775 = bitcast double* %774 to i64*
  %_rtB__Product10962617 = load i64, i64* %775, align 1
  %776 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1095, i64 0, i32 163
  %777 = bitcast [4 x double]* %776 to i64*
  store i64 %_rtB__Product10962617, i64* %777, align 1
  %_rtB_1098 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %778 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1098, i64 0, i32 14
  %779 = bitcast double* %778 to i64*
  %_rtB__Product110992618 = load i64, i64* %779, align 1
  %780 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1098, i64 0, i32 163, i64 1
  %781 = bitcast double* %780 to i64*
  store i64 %_rtB__Product110992618, i64* %781, align 1
  %_rtB_1101 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %782 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1101, i64 0, i32 15
  %783 = bitcast double* %782 to i64*
  %_rtB__Product211022619 = load i64, i64* %783, align 1
  %784 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1101, i64 0, i32 163, i64 2
  %785 = bitcast double* %784 to i64*
  store i64 %_rtB__Product211022619, i64* %785, align 1
  %_rtB_1104 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %786 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1104, i64 0, i32 16
  %787 = bitcast double* %786 to i64*
  %_rtB__Product311052620 = load i64, i64* %787, align 1
  %788 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1104, i64 0, i32 163, i64 3
  %789 = bitcast double* %788 to i64*
  store i64 %_rtB__Product311052620, i64* %789, align 1
  %S_1107 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1107, i32 2, i32 1, i32 104)
  br label %merge326

true68:                                           ; preds = %merge326
  %_rtB_2492 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %790 = sext i32 %i_2522 to i64
  %791 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2492, i64 0, i32 44, i64 %790
  store double 0.000000e+00, double* %791, align 1
  %_rtB_2494 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %tmp442 = mul i32 %i_2522, 3
  %792 = sext i32 %tmp442 to i64
  %793 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2494, i64 0, i32 164, i64 %792
  %_rtB__y_o_el = load double, double* %793, align 1
  %794 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2494, i64 0, i32 79, i64 0
  %_rtB__Constant1_el = load double, double* %794, align 1
  %tmp443 = fmul double %_rtB__y_o_el, %_rtB__Constant1_el
  %795 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2494, i64 0, i32 44, i64 %790
  %_rtB__MatrixMultiply_el2499 = load double, double* %795, align 1
  %tmp444 = fadd double %tmp443, %_rtB__MatrixMultiply_el2499
  store double %tmp444, double* %795, align 1
  %_rtB_2502 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %tmp446 = add i32 %tmp442, 1
  %796 = sext i32 %tmp446 to i64
  %797 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2502, i64 0, i32 164, i64 %796
  %_rtB__y_o_el2504 = load double, double* %797, align 1
  %798 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2502, i64 0, i32 79, i64 1
  %_rtB__Constant1_el2506 = load double, double* %798, align 1
  %tmp447 = fmul double %_rtB__y_o_el2504, %_rtB__Constant1_el2506
  %799 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2502, i64 0, i32 44, i64 %790
  %_rtB__MatrixMultiply_el2509 = load double, double* %799, align 1
  %tmp448 = fadd double %tmp447, %_rtB__MatrixMultiply_el2509
  store double %tmp448, double* %799, align 1
  %_rtB_2512 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %tmp450 = add i32 %tmp442, 2
  %800 = sext i32 %tmp450 to i64
  %801 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2512, i64 0, i32 164, i64 %800
  %_rtB__y_o_el2514 = load double, double* %801, align 1
  %802 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2512, i64 0, i32 79, i64 2
  %_rtB__Constant1_el2516 = load double, double* %802, align 1
  %tmp451 = fmul double %_rtB__y_o_el2514, %_rtB__Constant1_el2516
  %803 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2512, i64 0, i32 44, i64 %790
  %_rtB__MatrixMultiply_el2519 = load double, double* %803, align 1
  %tmp452 = fadd double %tmp451, %_rtB__MatrixMultiply_el2519
  store double %tmp452, double* %803, align 1
  %tmp453 = add i32 %i_2522, 1
  br label %merge326

false69:                                          ; preds = %merge326
  %vm_ssIsSampleHitVar1_1109 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_1109, i32* %i_, align 4
  %804 = icmp eq i32 %vm_ssIsSampleHitVar1_1109, 0
  br i1 %804, label %false71, label %true70

true70:                                           ; preds = %false69
  %S_1111 = load i8*, i8** %S_, align 8
  %805 = call i32 @vm_ssIsSpecialSampleHit(i8* %S_1111, i32 2, i32 1, i32 0)
  store i32 %805, i32* %i_, align 4
  %806 = icmp eq i32 %805, 0
  br i1 %806, label %false73, label %true72

false71:                                          ; preds = %false69, %false77
  %_rtDW_1192 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %807 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1192, i64 0, i32 22
  %_rtDW__TimeStampA = load double, double* %807, align 1
  %vm_ssGetTVar7_1193 = load double, double* %vm_ssGetTVar7_, align 8
  %808 = fcmp oge double %_rtDW__TimeStampA, %vm_ssGetTVar7_1193
  %809 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1192, i64 0, i32 24
  %_rtDW__TimeStampB = load double, double* %809, align 1
  %810 = fcmp oge double %_rtDW__TimeStampB, %vm_ssGetTVar7_1193
  %811 = and i1 %808, %810
  %812 = bitcast double %_rtDW__TimeStampA to i64
  br i1 %811, label %true79, label %false80

true72:                                           ; preds = %true70
  %_rtB_1113 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %813 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1113, i64 0, i32 2, i32 0
  %814 = bitcast double* %813 to i64*
  %_rtB__AirData_d_Va2758 = load i64, i64* %814, align 1
  %_rtDW_1114 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %815 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1114, i64 0, i32 19
  %816 = bitcast double* %815 to i64*
  store i64 %_rtB__AirData_d_Va2758, i64* %816, align 1
  br label %false73

false73:                                          ; preds = %true70, %true72
  %S_1115 = load i8*, i8** %S_, align 8
  %817 = call i32 @vm_ssIsSpecialSampleHit(i8* %S_1115, i32 2, i32 1, i32 0)
  store i32 %817, i32* %i_, align 4
  %818 = icmp eq i32 %817, 0
  br i1 %818, label %false75, label %true74

true74:                                           ; preds = %false73
  %_rtB_1117 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %819 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1117, i64 0, i32 13
  %820 = bitcast double* %819 to i64*
  %_rtB__Product11182754 = load i64, i64* %820, align 1
  %_rtDW_1119 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %821 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1119, i64 0, i32 20
  %822 = bitcast [4 x double]* %821 to i64*
  store i64 %_rtB__Product11182754, i64* %822, align 1
  %_rtB_1120 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %823 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1120, i64 0, i32 14
  %824 = bitcast double* %823 to i64*
  %_rtB__Product111212755 = load i64, i64* %824, align 1
  %_rtDW_1122 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %825 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1122, i64 0, i32 20, i64 1
  %826 = bitcast double* %825 to i64*
  store i64 %_rtB__Product111212755, i64* %826, align 1
  %_rtB_1123 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %827 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1123, i64 0, i32 15
  %828 = bitcast double* %827 to i64*
  %_rtB__Product211242756 = load i64, i64* %828, align 1
  %_rtDW_1125 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %829 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1125, i64 0, i32 20, i64 2
  %830 = bitcast double* %829 to i64*
  store i64 %_rtB__Product211242756, i64* %830, align 1
  %_rtB_1126 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %831 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1126, i64 0, i32 16
  %832 = bitcast double* %831 to i64*
  %_rtB__Product311272757 = load i64, i64* %832, align 1
  %_rtDW_1128 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %833 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1128, i64 0, i32 20, i64 3
  %834 = bitcast double* %833 to i64*
  store i64 %_rtB__Product311272757, i64* %834, align 1
  br label %false75

false75:                                          ; preds = %false73, %true74
  %S_1129 = load i8*, i8** %S_, align 8
  %835 = call i32 @vm_ssIsSpecialSampleHit(i8* %S_1129, i32 2, i32 1, i32 0)
  store i32 %835, i32* %i_, align 4
  %836 = icmp eq i32 %835, 0
  br i1 %836, label %false77, label %merge327

false77:                                          ; preds = %false75, %merge327
  %_rtB_1132 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %837 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1132, i64 0, i32 44, i64 0
  %838 = bitcast double* %837 to i64*
  %_rtB__MatrixMultiply_el2743 = load i64, i64* %838, align 1
  %839 = bitcast [3 x double]* %rtb_sincos_o2_ to i64*
  store i64 %_rtB__MatrixMultiply_el2743, i64* %839, align 8
  %840 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1132, i64 0, i32 78, i64 0
  %_rtB__Constant_el = load double, double* %840, align 1
  %841 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1132, i64 0, i32 89, i64 0
  %_rtB__wl_ins_el = load double, double* %841, align 1
  %tmp63 = fsub double %_rtB__Constant_el, %_rtB__wl_ins_el
  %_rtP_1135 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %842 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1135, i64 0, i32 153, i64 0
  %_rtP__Gain_Gain_j_el = load double, double* %842, align 1
  %tmp64 = fmul double %tmp63, %_rtP__Gain_Gain_j_el
  %843 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Gain_j_, i64 0, i64 0
  store double %tmp64, double* %843, align 8
  %844 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1132, i64 0, i32 44, i64 1
  %845 = bitcast double* %844 to i64*
  %_rtB__MatrixMultiply_el11372744 = load i64, i64* %845, align 1
  %846 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 1
  %847 = bitcast double* %846 to i64*
  store i64 %_rtB__MatrixMultiply_el11372744, i64* %847, align 8
  %848 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1132, i64 0, i32 78, i64 1
  %_rtB__Constant_el1139 = load double, double* %848, align 1
  %849 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1132, i64 0, i32 89, i64 1
  %_rtB__wl_ins_el1141 = load double, double* %849, align 1
  %tmp65 = fsub double %_rtB__Constant_el1139, %_rtB__wl_ins_el1141
  %850 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1135, i64 0, i32 153, i64 1
  %_rtP__Gain_Gain_j_el1143 = load double, double* %850, align 1
  %tmp66 = fmul double %tmp65, %_rtP__Gain_Gain_j_el1143
  %851 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Gain_j_, i64 0, i64 1
  store double %tmp66, double* %851, align 8
  %852 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1132, i64 0, i32 44, i64 2
  %853 = bitcast double* %852 to i64*
  %_rtB__MatrixMultiply_el11452745 = load i64, i64* %853, align 1
  %854 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 2
  %855 = bitcast double* %854 to i64*
  store i64 %_rtB__MatrixMultiply_el11452745, i64* %855, align 8
  %856 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1132, i64 0, i32 78, i64 2
  %_rtB__Constant_el1147 = load double, double* %856, align 1
  %857 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1132, i64 0, i32 89, i64 2
  %_rtB__wl_ins_el1149 = load double, double* %857, align 1
  %tmp67 = fsub double %_rtB__Constant_el1147, %_rtB__wl_ins_el1149
  %858 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1135, i64 0, i32 153, i64 2
  %_rtP__Gain_Gain_j_el1151 = load double, double* %858, align 1
  %tmp68 = fmul double %tmp67, %_rtP__Gain_Gain_j_el1151
  %859 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Gain_j_, i64 0, i64 2
  store double %tmp68, double* %859, align 8
  %860 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1132, i64 0, i32 12, i64 11
  %_rtB__Integrator_el1153 = load double, double* %860, align 1
  %tmp69 = fmul double %tmp68, %_rtB__Integrator_el1153
  %861 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1132, i64 0, i32 12, i64 12
  %_rtB__Integrator_el1155 = load double, double* %861, align 1
  %tmp70 = fmul double %_rtB__Integrator_el1155, %tmp66
  %tmp71 = fsub double %tmp69, %tmp70
  %862 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Sum_ae_, i64 0, i64 0
  store double %tmp71, double* %862, align 8
  %_rtB__Integrator_el1158 = load double, double* %861, align 1
  %tmp72 = fmul double %_rtB__Integrator_el1158, %tmp64
  %863 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1132, i64 0, i32 12, i64 10
  %_rtB__Integrator_el1161 = load double, double* %863, align 1
  %tmp73 = fmul double %_rtB__Integrator_el1161, %tmp68
  %tmp74 = fsub double %tmp72, %tmp73
  %864 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Sum_ae_, i64 0, i64 1
  store double %tmp74, double* %864, align 8
  %_rtB__Integrator_el1164 = load double, double* %863, align 1
  %tmp75 = fmul double %_rtB__Integrator_el1164, %tmp66
  %_rtB__Integrator_el1167 = load double, double* %860, align 1
  %tmp76 = fmul double %_rtB__Integrator_el1167, %tmp64
  %tmp77 = fsub double %tmp75, %tmp76
  %865 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Sum_ae_, i64 0, i64 2
  store double %tmp77, double* %865, align 8
  store double %tmp77, double* %rtb_u2_, align 8
  %866 = bitcast [3 x double]* %rtb_Sum_ae_ to i64*
  %867 = bitcast double %tmp71 to i64
  %868 = bitcast double* %rtb_u2_idx_0_ to i64*
  store i64 %867, i64* %868, align 8
  %869 = bitcast double* %864 to i64*
  %870 = bitcast double %tmp74 to i64
  %871 = bitcast double* %tmp_ to i64*
  store i64 %870, i64* %871, align 8
  %872 = bitcast double* %tmp_0_ to i64*
  store i64 %870, i64* %872, align 8
  %873 = bitcast double* %865 to i64*
  %874 = bitcast double %tmp77 to i64
  %875 = bitcast double* %rtb_TriggerWave_ to i64*
  store i64 %874, i64* %875, align 8
  %876 = bitcast double* %rtb_u2_idx_2_ to i64*
  store i64 %867, i64* %876, align 8
  %_rtB__Integrator_el1175 = load double, double* %860, align 1
  %tmp78 = fmul double %_rtB__Integrator_el1175, %tmp77
  %_rtB__Integrator_el1178 = load double, double* %861, align 1
  %877 = bitcast i64 %870 to double
  %tmp79 = fmul double %_rtB__Integrator_el1178, %877
  %tmp80 = fsub double %tmp78, %tmp79
  store double %tmp80, double* %862, align 8
  %878 = bitcast i64 %867 to double
  %tmp81 = fmul double %_rtB__Integrator_el1178, %878
  %_rtB__Integrator_el1184 = load double, double* %863, align 1
  %879 = bitcast i64 %874 to double
  %tmp82 = fmul double %_rtB__Integrator_el1184, %879
  %tmp83 = fsub double %tmp81, %tmp82
  store double %tmp83, double* %864, align 8
  %_rtB_1186 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %880 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1186, i64 0, i32 12, i64 10
  %_rtB__Integrator_el1187 = load double, double* %880, align 1
  %tmp84 = fmul double %_rtB__Integrator_el1187, %877
  %881 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1186, i64 0, i32 12, i64 11
  %_rtB__Integrator_el1190 = load double, double* %881, align 1
  %tmp85 = fmul double %_rtB__Integrator_el1190, %878
  %tmp86 = fsub double %tmp84, %tmp85
  store double %tmp86, double* %865, align 8
  br label %false71

true78:                                           ; preds = %merge327
  %_rtB_2487 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %882 = sext i32 %i_2488 to i64
  %883 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2487, i64 0, i32 168, i64 %882
  %884 = bitcast double* %883 to i64*
  %_rtB__TmpSignalConversionAtTAQSigLogging_InsertedFor_From_at_outport_0Inport1_el2752 = load i64, i64* %884, align 1
  %_rtDW_2489 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %885 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2489, i64 0, i32 21, i64 %882
  %886 = bitcast double* %885 to i64*
  store i64 %_rtB__TmpSignalConversionAtTAQSigLogging_InsertedFor_From_at_outport_0Inport1_el2752, i64* %886, align 1
  %tmp441 = add i32 %i_2488, 1
  br label %merge327

true79:                                           ; preds = %false71
  %_rtB_1234 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %887 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1234, i64 0, i32 45, i64 0
  store double 0.000000e+00, double* %887, align 1
  %_rtB_1235 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %888 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1235, i64 0, i32 45, i64 1
  store double 0.000000e+00, double* %888, align 1
  %_rtB_1236 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %889 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1236, i64 0, i32 45, i64 2
  store double 0.000000e+00, double* %889, align 1
  br label %merge329

false80:                                          ; preds = %false71
  %890 = bitcast double* %807 to i64*
  %891 = bitcast double* %rtb_TriggerWave_ to i64*
  store i64 %812, i64* %891, align 8
  %892 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1192, i64 0, i32 23
  store [3 x double]* %892, [3 x double]** %lastU_, align 8
  %_rtDW__TimeStampA1200 = load double, double* %807, align 1
  %_rtDW__TimeStampB1202 = load double, double* %809, align 1
  %893 = fcmp olt double %_rtDW__TimeStampA1200, %_rtDW__TimeStampB1202
  %894 = bitcast double %_rtDW__TimeStampB1202 to i64
  %895 = bitcast i64 %812 to double
  br i1 %893, label %true81, label %false82

true81:                                           ; preds = %false80
  %896 = fcmp olt double %_rtDW__TimeStampB1202, %vm_ssGetTVar7_1193
  br i1 %896, label %true85, label %merge328

false82:                                          ; preds = %false80
  %897 = fcmp ult double %_rtDW__TimeStampA1200, %vm_ssGetTVar7_1193
  br i1 %897, label %merge328, label %true83

true83:                                           ; preds = %false82
  %898 = bitcast double* %809 to i64*
  store i64 %894, i64* %891, align 8
  %899 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1192, i64 0, i32 25
  store [3 x double]* %899, [3 x double]** %lastU_, align 8
  %900 = bitcast i64 %894 to double
  br label %merge328

true85:                                           ; preds = %true81
  %901 = bitcast double* %809 to i64*
  store i64 %894, i64* %891, align 8
  %902 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1192, i64 0, i32 25
  store [3 x double]* %902, [3 x double]** %lastU_, align 8
  %903 = bitcast i64 %894 to double
  br label %merge328

true87:                                           ; preds = %merge329
  %_rtB_1239 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %904 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1239, i64 0, i32 171, i64 0
  %_rtB__Gain_m_el = load double, double* %904, align 1
  %905 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 0
  %rtb_sincos_o2__el1240 = load double, double* %905, align 8
  %tmp94 = fsub double %_rtB__Gain_m_el, %rtb_sincos_o2__el1240
  %906 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Sum_ae_, i64 0, i64 0
  %rtb_Sum_ae__el1241 = load double, double* %906, align 8
  %tmp95 = fadd double %tmp94, %rtb_Sum_ae__el1241
  %907 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1239, i64 0, i32 45, i64 1
  %_rtB__Derivative_el = load double, double* %907, align 1
  %908 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Gain_j_, i64 0, i64 2
  %rtb_Gain_j__el1243 = load double, double* %908, align 8
  %tmp96 = fmul double %_rtB__Derivative_el, %rtb_Gain_j__el1243
  %909 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1239, i64 0, i32 45, i64 2
  %_rtB__Derivative_el1245 = load double, double* %909, align 1
  %910 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Gain_j_, i64 0, i64 1
  %rtb_Gain_j__el1246 = load double, double* %910, align 8
  %tmp97 = fmul double %_rtB__Derivative_el1245, %rtb_Gain_j__el1246
  %tmp98 = fsub double %tmp96, %tmp97
  %tmp99 = fadd double %tmp95, %tmp98
  store double %tmp99, double* %905, align 8
  %911 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1239, i64 0, i32 171, i64 1
  %_rtB__Gain_m_el1248 = load double, double* %911, align 1
  %912 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 1
  %rtb_sincos_o2__el1249 = load double, double* %912, align 8
  %tmp100 = fsub double %_rtB__Gain_m_el1248, %rtb_sincos_o2__el1249
  %913 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Sum_ae_, i64 0, i64 1
  %rtb_Sum_ae__el1250 = load double, double* %913, align 8
  %tmp101 = fadd double %tmp100, %rtb_Sum_ae__el1250
  %_rtB__Derivative_el1252 = load double, double* %909, align 1
  %914 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Gain_j_, i64 0, i64 0
  %rtb_Gain_j__el1253 = load double, double* %914, align 8
  %tmp102 = fmul double %_rtB__Derivative_el1252, %rtb_Gain_j__el1253
  %915 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1239, i64 0, i32 45, i64 0
  %_rtB__Derivative_el1255 = load double, double* %915, align 1
  %tmp103 = fmul double %_rtB__Derivative_el1255, %rtb_Gain_j__el1243
  %tmp104 = fsub double %tmp102, %tmp103
  %tmp105 = fadd double %tmp101, %tmp104
  store double %tmp105, double* %912, align 8
  %916 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1239, i64 0, i32 171, i64 2
  %_rtB__Gain_m_el1258 = load double, double* %916, align 1
  %917 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 2
  %rtb_sincos_o2__el1259 = load double, double* %917, align 8
  %tmp106 = fsub double %_rtB__Gain_m_el1258, %rtb_sincos_o2__el1259
  %918 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Sum_ae_, i64 0, i64 2
  %rtb_Sum_ae__el1260 = load double, double* %918, align 8
  %tmp107 = fadd double %tmp106, %rtb_Sum_ae__el1260
  %_rtB__Derivative_el1262 = load double, double* %915, align 1
  %tmp108 = fmul double %_rtB__Derivative_el1262, %rtb_Gain_j__el1246
  %_rtB__Derivative_el1265 = load double, double* %907, align 1
  %tmp109 = fmul double %_rtB__Derivative_el1265, %rtb_Gain_j__el1253
  %tmp110 = fsub double %tmp108, %tmp109
  %tmp111 = fadd double %tmp107, %tmp110
  store double %tmp111, double* %rtb_TriggerWave_, align 8
  %919 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1239, i64 0, i32 82
  %920 = bitcast double* %919 to i64*
  %_rtB__Divide62707 = load i64, i64* %920, align 1
  %921 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1239, i64 0, i32 47
  %922 = bitcast [3 x double]* %921 to i64*
  store i64 %_rtB__Divide62707, i64* %922, align 1
  %_rtB_1269 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %923 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1269, i64 0, i32 85
  %924 = bitcast double* %923 to i64*
  %_rtB__Gain12708 = load i64, i64* %924, align 1
  %925 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1269, i64 0, i32 47, i64 1
  %926 = bitcast double* %925 to i64*
  store i64 %_rtB__Gain12708, i64* %926, align 1
  %_rtB_1271 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %927 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1271, i64 0, i32 82
  %928 = bitcast double* %927 to i64*
  %_rtB__Divide612722709 = load i64, i64* %928, align 1
  %929 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1271, i64 0, i32 47, i64 2
  %930 = bitcast double* %929 to i64*
  store i64 %_rtB__Divide612722709, i64* %930, align 1
  %_rtB_1274 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %931 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1274, i64 0, i32 86
  %932 = bitcast double* %931 to i64*
  %_rtB__a22710 = load i64, i64* %932, align 1
  %933 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1274, i64 0, i32 48
  %934 = bitcast [3 x double]* %933 to i64*
  store i64 %_rtB__a22710, i64* %934, align 1
  %_rtB_1276 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %935 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1276, i64 0, i32 83
  %936 = bitcast double* %935 to i64*
  %_rtB__Divide72711 = load i64, i64* %936, align 1
  %937 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1276, i64 0, i32 48, i64 1
  %938 = bitcast double* %937 to i64*
  store i64 %_rtB__Divide72711, i64* %938, align 1
  %_rtB_1278 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %939 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1278, i64 0, i32 84
  %940 = bitcast double* %939 to i64*
  %_rtB__Divide82712 = load i64, i64* %940, align 1
  %941 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1278, i64 0, i32 48, i64 2
  %942 = bitcast double* %941 to i64*
  store i64 %_rtB__Divide82712, i64* %942, align 1
  %_rtB_1280 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %943 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1280, i64 0, i32 81
  %_rtB__Constant_i = load double, double* %943, align 1
  %_rtP_1281 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %944 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1281, i64 0, i32 155
  %_rtP__Switch_Threshold = load double, double* %944, align 1
  %945 = fcmp oge double %_rtB__Constant_i, %_rtP__Switch_Threshold
  %946 = zext i1 %945 to i8
  store i8 %946, i8* %resetSolver_, align 1
  br label %merge330

false88:                                          ; preds = %merge329, %false102
  %vm_ssIsSampleHitVar1_1345 = phi i32 [ 0, %merge329 ], [ %vm_ssIsSampleHitVar1_1345.pre, %false102 ]
  %_rtP_1341 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %947 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1341, i64 0, i32 162
  %_rtP__Gain_Gain_h = load double, double* %947, align 1
  %_rtB_1342 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %948 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1342, i64 0, i32 21, i64 1
  %_rtB__MultiportSwitch_c_el1343 = load double, double* %948, align 1
  %tmp112 = fmul double %_rtP__Gain_Gain_h, %_rtB__MultiportSwitch_c_el1343
  %949 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1342, i64 0, i32 53
  store double %tmp112, double* %949, align 1
  store i32 %vm_ssIsSampleHitVar1_1345, i32* %i_, align 4
  %950 = icmp eq i32 %vm_ssIsSampleHitVar1_1345, 0
  br i1 %950, label %false104, label %true103

true89:                                           ; preds = %merge330
  %tmp421 = add i32 %i_2485, 3
  %951 = sext i32 %tmp421 to i64
  %952 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2438, i64 0, i32 88, i64 %951
  %_rtB__ScalefactorsCrosscouplingerrors_el = load double, double* %952, align 1
  %rtb_sincos_o2__el2429 = load double, double* %912, align 8
  %tmp422 = fmul double %_rtB__ScalefactorsCrosscouplingerrors_el, %rtb_sincos_o2__el2429
  %953 = sext i32 %i_2485 to i64
  %954 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2438, i64 0, i32 88, i64 %953
  %_rtB__ScalefactorsCrosscouplingerrors_el2432 = load double, double* %954, align 1
  %rtb_sincos_o2__el2433 = load double, double* %905, align 8
  %tmp423 = fmul double %_rtB__ScalefactorsCrosscouplingerrors_el2432, %rtb_sincos_o2__el2433
  %tmp424 = fadd double %tmp422, %tmp423
  %tmp425 = add i32 %i_2485, 6
  %955 = sext i32 %tmp425 to i64
  %956 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2438, i64 0, i32 88, i64 %955
  %_rtB__ScalefactorsCrosscouplingerrors_el2436 = load double, double* %956, align 1
  %rtb_TriggerWave_2437 = load double, double* %rtb_TriggerWave_, align 8
  %tmp426 = fmul double %_rtB__ScalefactorsCrosscouplingerrors_el2436, %rtb_TriggerWave_2437
  %tmp427 = fadd double %tmp424, %tmp426
  %957 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2438, i64 0, i32 87, i64 %953
  %_rtB__Measurementbias_el = load double, double* %957, align 1
  %tmp428 = fadd double %tmp427, %_rtB__Measurementbias_el
  %958 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2438, i64 0, i32 46, i64 %953
  store double %tmp428, double* %958, align 1
  %959 = shl i32 %i_2485, 1
  store i32 %959, i32* %memOffset_, align 4
  %_rtB_2443 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %960 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2443, i64 0, i32 46, i64 %953
  %_rtB__Sum4_el = load double, double* %960, align 1
  %961 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2443, i64 0, i32 48, i64 1
  %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport3_el = load double, double* %961, align 1
  %_rtDW_2446 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %962 = sext i32 %959 to i64
  %963 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2446, i64 0, i32 6, i64 %962
  %_rtDW__DiscreteTransferFcn_states_el = load double, double* %963, align 1
  %tmp429 = fmul double %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport3_el, %_rtDW__DiscreteTransferFcn_states_el
  %tmp430 = fsub double %_rtB__Sum4_el, %tmp429
  %tmp431 = add i32 %959, 1
  %964 = sext i32 %tmp431 to i64
  %965 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2446, i64 0, i32 6, i64 %964
  %_rtDW__DiscreteTransferFcn_states_el2450 = load double, double* %965, align 1
  %966 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2443, i64 0, i32 48, i64 2
  %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport3_el2452 = load double, double* %966, align 1
  %tmp432 = fmul double %_rtDW__DiscreteTransferFcn_states_el2450, %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport3_el2452
  %tmp433 = fsub double %tmp430, %tmp432
  %967 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2446, i64 0, i32 26, i64 %953
  store double %tmp433, double* %967, align 1
  %_rtB_2455 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %968 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2455, i64 0, i32 47, i64 0
  %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport2_el = load double, double* %968, align 1
  %_rtDW_2456 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %969 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2456, i64 0, i32 26, i64 %953
  %_rtDW__DiscreteTransferFcn_tmp_el = load double, double* %969, align 1
  %tmp434 = fmul double %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport2_el, %_rtDW__DiscreteTransferFcn_tmp_el
  %970 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2455, i64 0, i32 47, i64 1
  %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport2_el2459 = load double, double* %970, align 1
  %971 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2456, i64 0, i32 6, i64 %962
  %_rtDW__DiscreteTransferFcn_states_el2462 = load double, double* %971, align 1
  %tmp435 = fmul double %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport2_el2459, %_rtDW__DiscreteTransferFcn_states_el2462
  %tmp436 = fadd double %tmp434, %tmp435
  %972 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2456, i64 0, i32 6, i64 %964
  %_rtDW__DiscreteTransferFcn_states_el2465 = load double, double* %972, align 1
  %973 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2455, i64 0, i32 47, i64 2
  %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport2_el2467 = load double, double* %973, align 1
  %tmp438 = fmul double %_rtDW__DiscreteTransferFcn_states_el2465, %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport2_el2467
  %tmp439 = fadd double %tmp436, %tmp438
  store double %tmp439, double* %rtb_u2_idx_2_, align 8
  %974 = and i8 %946, 1
  %975 = icmp eq i8 %974, 0
  %976 = bitcast double %tmp439 to i64
  br i1 %975, label %true303, label %false304

false90:                                          ; preds = %merge330
  %S_1283 = load i8*, i8** %S_, align 8
  %977 = call i32 @vm_ssIsSpecialSampleHit(i8* %S_1283, i32 2, i32 1, i32 0)
  store i32 %977, i32* %i_, align 4
  %978 = icmp eq i32 %977, 0
  br i1 %978, label %false92, label %true91

true91:                                           ; preds = %false90
  %979 = bitcast [3 x double]* %rtb_Sum_ae_ to i64*
  %rtb_Sum_ae__el12852733 = load i64, i64* %979, align 8
  %_rtDW_1286 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %980 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1286, i64 0, i32 27
  %981 = bitcast [3 x double]* %980 to i64*
  store i64 %rtb_Sum_ae__el12852733, i64* %981, align 1
  %982 = bitcast double* %913 to i64*
  %rtb_Sum_ae__el12872734 = load i64, i64* %982, align 8
  %_rtDW_1288 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %983 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1288, i64 0, i32 27, i64 1
  %984 = bitcast double* %983 to i64*
  store i64 %rtb_Sum_ae__el12872734, i64* %984, align 1
  %985 = bitcast double* %918 to i64*
  %rtb_Sum_ae__el12892735 = load i64, i64* %985, align 8
  %_rtDW_1290 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %986 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1290, i64 0, i32 27, i64 2
  %987 = bitcast double* %986 to i64*
  store i64 %rtb_Sum_ae__el12892735, i64* %987, align 1
  br label %false92

false92:                                          ; preds = %false90, %true91
  %_rtB_1291 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %988 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1291, i64 0, i32 91
  %989 = bitcast double* %988 to i64*
  %_rtB__Divide6_d2713 = load i64, i64* %989, align 1
  %990 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1291, i64 0, i32 50
  %991 = bitcast [3 x double]* %990 to i64*
  store i64 %_rtB__Divide6_d2713, i64* %991, align 1
  %_rtB_1293 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %992 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1293, i64 0, i32 94
  %993 = bitcast double* %992 to i64*
  %_rtB__Gain1_h2714 = load i64, i64* %993, align 1
  %994 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1293, i64 0, i32 50, i64 1
  %995 = bitcast double* %994 to i64*
  store i64 %_rtB__Gain1_h2714, i64* %995, align 1
  %_rtB_1295 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %996 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1295, i64 0, i32 91
  %997 = bitcast double* %996 to i64*
  %_rtB__Divide6_d12962715 = load i64, i64* %997, align 1
  %998 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1295, i64 0, i32 50, i64 2
  %999 = bitcast double* %998 to i64*
  store i64 %_rtB__Divide6_d12962715, i64* %999, align 1
  %_rtB_1298 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1000 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1298, i64 0, i32 95
  %1001 = bitcast double* %1000 to i64*
  %_rtB__a2_j2716 = load i64, i64* %1001, align 1
  %1002 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1298, i64 0, i32 51
  %1003 = bitcast [3 x double]* %1002 to i64*
  store i64 %_rtB__a2_j2716, i64* %1003, align 1
  %_rtB_1300 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1004 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1300, i64 0, i32 92
  %1005 = bitcast double* %1004 to i64*
  %_rtB__Divide7_c2717 = load i64, i64* %1005, align 1
  %1006 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1300, i64 0, i32 51, i64 1
  %1007 = bitcast double* %1006 to i64*
  store i64 %_rtB__Divide7_c2717, i64* %1007, align 1
  %_rtB_1302 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1008 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1302, i64 0, i32 93
  %1009 = bitcast double* %1008 to i64*
  %_rtB__Divide8_k2718 = load i64, i64* %1009, align 1
  %1010 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1302, i64 0, i32 51, i64 2
  %1011 = bitcast double* %1010 to i64*
  store i64 %_rtB__Divide8_k2718, i64* %1011, align 1
  %_rtB_1304 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1012 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1304, i64 0, i32 90
  %_rtB__Constant_d = load double, double* %1012, align 1
  %_rtP_1305 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1013 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1305, i64 0, i32 159
  %_rtP__Switch_Threshold_c = load double, double* %1013, align 1
  %1014 = fcmp oge double %_rtB__Constant_d, %_rtP__Switch_Threshold_c
  %1015 = zext i1 %1014 to i8
  store i8 %1015, i8* %resetSolver_, align 1
  br label %merge331

true93:                                           ; preds = %merge331
  %tmp398 = add i32 %i_2426, 3
  %1016 = sext i32 %tmp398 to i64
  %1017 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2378, i64 0, i32 97, i64 %1016
  %_rtB__ScalefactorsCrosscouplingerrors_d_el = load double, double* %1017, align 1
  %1018 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2378, i64 0, i32 12, i64 11
  %_rtB__Integrator_el2360 = load double, double* %1018, align 1
  %tmp399 = fmul double %_rtB__ScalefactorsCrosscouplingerrors_d_el, %_rtB__Integrator_el2360
  %1019 = sext i32 %i_2426 to i64
  %1020 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2378, i64 0, i32 97, i64 %1019
  %_rtB__ScalefactorsCrosscouplingerrors_d_el2363 = load double, double* %1020, align 1
  %1021 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2378, i64 0, i32 12, i64 10
  %_rtB__Integrator_el2365 = load double, double* %1021, align 1
  %tmp400 = fmul double %_rtB__ScalefactorsCrosscouplingerrors_d_el2363, %_rtB__Integrator_el2365
  %tmp401 = fadd double %tmp399, %tmp400
  %tmp402 = add i32 %i_2426, 6
  %1022 = sext i32 %tmp402 to i64
  %1023 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2378, i64 0, i32 97, i64 %1022
  %_rtB__ScalefactorsCrosscouplingerrors_d_el2368 = load double, double* %1023, align 1
  %1024 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2378, i64 0, i32 12, i64 12
  %_rtB__Integrator_el2370 = load double, double* %1024, align 1
  %tmp403 = fmul double %_rtB__ScalefactorsCrosscouplingerrors_d_el2368, %_rtB__Integrator_el2370
  %tmp404 = fadd double %tmp401, %tmp403
  %1025 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2378, i64 0, i32 96, i64 %1019
  %_rtB__Measurementbias_l_el = load double, double* %1025, align 1
  %tmp405 = fadd double %tmp404, %_rtB__Measurementbias_l_el
  %1026 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2378, i64 0, i32 171, i64 %1019
  %_rtB__Gain_m_el2375 = load double, double* %1026, align 1
  %tmp406 = fmul double %_rtB__Gain_m_el2375, 0x3FBA1ACFEA981811
  %1027 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2378, i64 0, i32 98, i64 %1019
  %_rtB__gsensitivebias_el = load double, double* %1027, align 1
  %tmp407 = fmul double %tmp406, %_rtB__gsensitivebias_el
  %tmp408 = fadd double %tmp405, %tmp407
  %1028 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2378, i64 0, i32 49, i64 %1019
  store double %tmp408, double* %1028, align 1
  %1029 = shl i32 %i_2426, 1
  store i32 %1029, i32* %memOffset_, align 4
  %_rtB_2381 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1030 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2381, i64 0, i32 49, i64 %1019
  %_rtB__Sum4_d_el = load double, double* %1030, align 1
  %1031 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2381, i64 0, i32 51, i64 1
  %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport3_b_el = load double, double* %1031, align 1
  %_rtDW_2384 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1032 = sext i32 %1029 to i64
  %1033 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2384, i64 0, i32 7, i64 %1032
  %_rtDW__DiscreteTransferFcn_states_a_el = load double, double* %1033, align 1
  %tmp409 = fmul double %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport3_b_el, %_rtDW__DiscreteTransferFcn_states_a_el
  %tmp410 = fsub double %_rtB__Sum4_d_el, %tmp409
  %tmp411 = add i32 %1029, 1
  %1034 = sext i32 %tmp411 to i64
  %1035 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2384, i64 0, i32 7, i64 %1034
  %_rtDW__DiscreteTransferFcn_states_a_el2388 = load double, double* %1035, align 1
  %1036 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2381, i64 0, i32 51, i64 2
  %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport3_b_el2390 = load double, double* %1036, align 1
  %tmp412 = fmul double %_rtDW__DiscreteTransferFcn_states_a_el2388, %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport3_b_el2390
  %tmp413 = fsub double %tmp410, %tmp412
  %1037 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2384, i64 0, i32 28, i64 %1019
  store double %tmp413, double* %1037, align 1
  %_rtB_2393 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1038 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2393, i64 0, i32 50, i64 0
  %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport2_i_el = load double, double* %1038, align 1
  %_rtDW_2394 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1039 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2394, i64 0, i32 28, i64 %1019
  %_rtDW__DiscreteTransferFcn_tmp_b_el = load double, double* %1039, align 1
  %tmp414 = fmul double %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport2_i_el, %_rtDW__DiscreteTransferFcn_tmp_b_el
  %1040 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2393, i64 0, i32 50, i64 1
  %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport2_i_el2397 = load double, double* %1040, align 1
  %1041 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2394, i64 0, i32 7, i64 %1032
  %_rtDW__DiscreteTransferFcn_states_a_el2400 = load double, double* %1041, align 1
  %tmp415 = fmul double %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport2_i_el2397, %_rtDW__DiscreteTransferFcn_states_a_el2400
  %tmp416 = fadd double %tmp414, %tmp415
  %1042 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2394, i64 0, i32 7, i64 %1034
  %_rtDW__DiscreteTransferFcn_states_a_el2403 = load double, double* %1042, align 1
  %1043 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2393, i64 0, i32 50, i64 2
  %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport2_i_el2405 = load double, double* %1043, align 1
  %tmp418 = fmul double %_rtDW__DiscreteTransferFcn_states_a_el2403, %_rtB__TmpSignalConversionAtDiscreteTransferFcnInport2_i_el2405
  %tmp419 = fadd double %tmp416, %tmp418
  store double %tmp419, double* %rtb_u2_idx_2_, align 8
  %1044 = and i8 %1015, 1
  %1045 = icmp eq i8 %1044, 0
  %1046 = bitcast double %tmp419 to i64
  br i1 %1045, label %true297, label %false298

false94:                                          ; preds = %merge331
  %S_1307 = load i8*, i8** %S_, align 8
  %1047 = call i32 @vm_ssIsSpecialSampleHit(i8* %S_1307, i32 2, i32 1, i32 0)
  store i32 %1047, i32* %i_, align 4
  %1048 = icmp eq i32 %1047, 0
  br i1 %1048, label %false96, label %true95

true95:                                           ; preds = %false94
  %1049 = bitcast [3 x double]* %rtb_Sum_ae_ to i64*
  %rtb_Sum_ae__el13092725 = load i64, i64* %1049, align 8
  %_rtDW_1310 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1050 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1310, i64 0, i32 29
  %1051 = bitcast [3 x double]* %1050 to i64*
  store i64 %rtb_Sum_ae__el13092725, i64* %1051, align 1
  %1052 = bitcast double* %913 to i64*
  %rtb_Sum_ae__el13112726 = load i64, i64* %1052, align 8
  %_rtDW_1312 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1053 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1312, i64 0, i32 29, i64 1
  %1054 = bitcast double* %1053 to i64*
  store i64 %rtb_Sum_ae__el13112726, i64* %1054, align 1
  %1055 = bitcast double* %918 to i64*
  %rtb_Sum_ae__el13132727 = load i64, i64* %1055, align 8
  %_rtDW_1314 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1056 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1314, i64 0, i32 29, i64 2
  %1057 = bitcast double* %1056 to i64*
  store i64 %rtb_Sum_ae__el13132727, i64* %1057, align 1
  br label %false96

false96:                                          ; preds = %false94, %true95
  %S_1315 = load i8*, i8** %S_, align 8
  %1058 = call i32 @vm_ssIsSpecialSampleHit(i8* %S_1315, i32 2, i32 1, i32 0)
  store i32 %1058, i32* %i_, align 4
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %false98, label %true97

true97:                                           ; preds = %false96
  %_rtB_1317 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1060 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1317, i64 0, i32 43
  %1061 = bitcast double* %1060 to i64*
  %_rtB__Integrator_b2724 = load i64, i64* %1061, align 1
  %_rtDW_1318 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1062 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1318, i64 0, i32 30
  %1063 = bitcast double* %1062 to i64*
  store i64 %_rtB__Integrator_b2724, i64* %1063, align 1
  br label %false98

false98:                                          ; preds = %false96, %true97
  %S_1319 = load i8*, i8** %S_, align 8
  %1064 = call i32 @vm_ssIsSpecialSampleHit(i8* %S_1319, i32 2, i32 1, i32 0)
  store i32 %1064, i32* %i_, align 4
  %1065 = icmp eq i32 %1064, 0
  br i1 %1065, label %false100, label %true99

true99:                                           ; preds = %false98
  %_rtB_1321 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1066 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1321, i64 0, i32 12, i64 0
  %1067 = bitcast double* %1066 to i64*
  %_rtB__Integrator_el13222721 = load i64, i64* %1067, align 1
  %_rtDW_1323 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1068 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1323, i64 0, i32 31
  %1069 = bitcast [3 x double]* %1068 to i64*
  store i64 %_rtB__Integrator_el13222721, i64* %1069, align 1
  %_rtB_1324 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1070 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1324, i64 0, i32 12, i64 1
  %1071 = bitcast double* %1070 to i64*
  %_rtB__Integrator_el13252722 = load i64, i64* %1071, align 1
  %_rtDW_1326 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1072 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1326, i64 0, i32 31, i64 1
  %1073 = bitcast double* %1072 to i64*
  store i64 %_rtB__Integrator_el13252722, i64* %1073, align 1
  %_rtB_1327 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1074 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1327, i64 0, i32 12, i64 2
  %1075 = bitcast double* %1074 to i64*
  %_rtB__Integrator_el13282723 = load i64, i64* %1075, align 1
  %_rtDW_1329 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1076 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1329, i64 0, i32 31, i64 2
  %1077 = bitcast double* %1076 to i64*
  store i64 %_rtB__Integrator_el13282723, i64* %1077, align 1
  br label %false100

false100:                                         ; preds = %false98, %true99
  %S_1330 = load i8*, i8** %S_, align 8
  %1078 = call i32 @vm_ssIsSpecialSampleHit(i8* %S_1330, i32 2, i32 1, i32 0)
  store i32 %1078, i32* %i_, align 4
  %1079 = icmp eq i32 %1078, 0
  br i1 %1079, label %false102, label %true101

true101:                                          ; preds = %false100
  %_rtB_1332 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1080 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1332, i64 0, i32 165
  %1081 = bitcast double* %1080 to i64*
  %_rtB__u_r2720 = load i64, i64* %1081, align 1
  %_rtDW_1333 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1082 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1333, i64 0, i32 32
  %1083 = bitcast double* %1082 to i64*
  store i64 %_rtB__u_r2720, i64* %1083, align 1
  br label %false102

false102:                                         ; preds = %false100, %true101
  %S_1334 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1334, i32 21, i32 157, i32 104)
  %S_1335 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1335, i32 21, i32 158, i32 104)
  %_rtB_1336 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1084 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1336, i64 0, i32 2, i32 0
  %1085 = bitcast double* %1084 to i64*
  %_rtB__AirData_d_Va13372719 = load i64, i64* %1085, align 1
  %1086 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1336, i64 0, i32 52
  %1087 = bitcast double* %1086 to i64*
  store i64 %_rtB__AirData_d_Va13372719, i64* %1087, align 1
  %S_1339 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1339, i32 21, i32 160, i32 104)
  %S_1340 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1340, i32 21, i32 161, i32 104)
  %vm_ssIsSampleHitVar1_1345.pre = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  br label %false88

true103:                                          ; preds = %false88
  %S_1347 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1347, i32 21, i32 163, i32 104)
  %vm_ssIsSampleHitVar1_1352.pre = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  br label %false104

false104:                                         ; preds = %false88, %true103
  %vm_ssIsSampleHitVar1_1352 = phi i32 [ 0, %false88 ], [ %vm_ssIsSampleHitVar1_1352.pre, %true103 ]
  %_rtP_1348 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1088 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1348, i64 0, i32 163
  %_rtP__Gain_Gain_m = load double, double* %1088, align 1
  %_rtB_1349 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1089 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1349, i64 0, i32 21, i64 2
  %_rtB__MultiportSwitch_c_el1350 = load double, double* %1089, align 1
  %tmp113 = fmul double %_rtP__Gain_Gain_m, %_rtB__MultiportSwitch_c_el1350
  %1090 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1349, i64 0, i32 54
  store double %tmp113, double* %1090, align 1
  store i32 %vm_ssIsSampleHitVar1_1352, i32* %i_, align 4
  %1091 = icmp eq i32 %vm_ssIsSampleHitVar1_1352, 0
  br i1 %1091, label %false106, label %true105

true105:                                          ; preds = %false104
  %S_1354 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1354, i32 21, i32 165, i32 104)
  %vm_ssIsSampleHitVar1_1359.pre = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  br label %false106

false106:                                         ; preds = %false104, %true105
  %vm_ssIsSampleHitVar1_1359 = phi i32 [ 0, %false104 ], [ %vm_ssIsSampleHitVar1_1359.pre, %true105 ]
  %_rtP_1355 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1092 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1355, i64 0, i32 164
  %_rtP__Gain_Gain_hu = load double, double* %1092, align 1
  %_rtB_1356 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1093 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1356, i64 0, i32 21, i64 0
  %_rtB__MultiportSwitch_c_el1357 = load double, double* %1093, align 1
  %tmp114 = fmul double %_rtP__Gain_Gain_hu, %_rtB__MultiportSwitch_c_el1357
  %1094 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1356, i64 0, i32 55
  store double %tmp114, double* %1094, align 1
  store i32 %vm_ssIsSampleHitVar1_1359, i32* %i_, align 4
  %1095 = icmp eq i32 %vm_ssIsSampleHitVar1_1359, 0
  br i1 %1095, label %false108, label %true107

true107:                                          ; preds = %false106
  %S_1361 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1361, i32 21, i32 167, i32 104)
  %vm_ssIsSampleHitVar1_1366.pre = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  br label %false108

false108:                                         ; preds = %false106, %true107
  %vm_ssIsSampleHitVar1_1366 = phi i32 [ 0, %false106 ], [ %vm_ssIsSampleHitVar1_1366.pre, %true107 ]
  %_rtP_1362 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1096 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1362, i64 0, i32 165
  %_rtP__p_DtoAlt_Gain = load double, double* %1096, align 1
  %_rtB_1363 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1097 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1363, i64 0, i32 12, i64 2
  %_rtB__Integrator_el1364 = load double, double* %1097, align 1
  %tmp115 = fmul double %_rtP__p_DtoAlt_Gain, %_rtB__Integrator_el1364
  %1098 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1363, i64 0, i32 56
  store double %tmp115, double* %1098, align 1
  store i32 %vm_ssIsSampleHitVar1_1366, i32* %i_, align 4
  %1099 = icmp eq i32 %vm_ssIsSampleHitVar1_1366, 0
  br i1 %1099, label %false110, label %true109

true109:                                          ; preds = %false108
  %S_1368 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1368, i32 21, i32 169, i32 104)
  %vm_ssIsSampleHitVar1_1373.pre = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  br label %false110

false110:                                         ; preds = %false108, %true109
  %vm_ssIsSampleHitVar1_1373 = phi i32 [ 0, %false108 ], [ %vm_ssIsSampleHitVar1_1373.pre, %true109 ]
  %_rtP_1369 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1100 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1369, i64 0, i32 166
  %_rtP__toPercent_Gain = load double, double* %1100, align 1
  %_rtB_1370 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1101 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1370, i64 0, i32 21, i64 3
  %_rtB__MultiportSwitch_c_el1371 = load double, double* %1101, align 1
  %tmp116 = fmul double %_rtP__toPercent_Gain, %_rtB__MultiportSwitch_c_el1371
  %1102 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1370, i64 0, i32 57
  store double %tmp116, double* %1102, align 1
  store i32 %vm_ssIsSampleHitVar1_1373, i32* %i_, align 4
  %1103 = icmp eq i32 %vm_ssIsSampleHitVar1_1373, 0
  br i1 %1103, label %false112, label %true111

true111:                                          ; preds = %false110
  %S_1375 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1375, i32 21, i32 171, i32 104)
  %vm_ssIsSampleHitVar1_1388.pre = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  br label %false112

false112:                                         ; preds = %false110, %true111
  %vm_ssIsSampleHitVar1_1388 = phi i32 [ 0, %false110 ], [ %vm_ssIsSampleHitVar1_1388.pre, %true111 ]
  %_rtP_1376 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1104 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1376, i64 0, i32 168
  %_rtP__Gain_Gain_k = load double, double* %1104, align 1
  %_rtB_1377 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1105 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1377, i64 0, i32 158
  %_rtB__phi1378 = load double, double* %1105, align 1
  %tmp117 = fmul double %_rtP__Gain_Gain_k, %_rtB__phi1378
  %1106 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1377, i64 0, i32 58
  store double %tmp117, double* %1106, align 1
  %_rtP_1380 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1107 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1380, i64 0, i32 169
  %_rtP__Gain_Gain_c = load double, double* %1107, align 1
  %_rtB_1381 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1108 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1381, i64 0, i32 159
  %_rtB__theta1382 = load double, double* %1108, align 1
  %tmp118 = fmul double %_rtP__Gain_Gain_c, %_rtB__theta1382
  %1109 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1381, i64 0, i32 59
  store double %tmp118, double* %1109, align 1
  %_rtP_1384 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1110 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1384, i64 0, i32 170
  %_rtP__Gain_Gain_e = load double, double* %1110, align 1
  %_rtB_1385 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1111 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1385, i64 0, i32 160
  %_rtB__psi1386 = load double, double* %1111, align 1
  %tmp119 = fmul double %_rtP__Gain_Gain_e, %_rtB__psi1386
  %1112 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1385, i64 0, i32 60
  store double %tmp119, double* %1112, align 1
  store i32 %vm_ssIsSampleHitVar1_1388, i32* %i_, align 4
  %1113 = icmp eq i32 %vm_ssIsSampleHitVar1_1388, 0
  br i1 %1113, label %false114, label %true113

true113:                                          ; preds = %false112
  %S_1390 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1390, i32 21, i32 176, i32 104)
  %S_1391 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1391, i32 21, i32 177, i32 104)
  %S_1392 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1392, i32 21, i32 178, i32 104)
  %S_1393 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1393, i32 21, i32 179, i32 104)
  %S_1394 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1394, i32 21, i32 180, i32 104)
  %_rtB_1395 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1114 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1395, i64 0, i32 2, i32 0
  %1115 = bitcast double* %1114 to i64*
  %_rtB__AirData_d_Va13962684 = load i64, i64* %1115, align 1
  %1116 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1395, i64 0, i32 61
  %1117 = bitcast double* %1116 to i64*
  store i64 %_rtB__AirData_d_Va13962684, i64* %1117, align 1
  %S_1398 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1398, i32 21, i32 182, i32 104)
  %_rtB_1399 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1118 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1399, i64 0, i32 24, i64 0
  %1119 = bitcast double* %1118 to i64*
  %_rtB__elevontoelevatoraileron_el14002685 = load i64, i64* %1119, align 1
  %1120 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1399, i64 0, i32 169
  %1121 = bitcast [4 x double]* %1120 to i64*
  store i64 %_rtB__elevontoelevatoraileron_el14002685, i64* %1121, align 1
  %_rtB_1402 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1122 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1402, i64 0, i32 24, i64 1
  %1123 = bitcast double* %1122 to i64*
  %_rtB__elevontoelevatoraileron_el14032686 = load i64, i64* %1123, align 1
  %1124 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1402, i64 0, i32 169, i64 1
  %1125 = bitcast double* %1124 to i64*
  store i64 %_rtB__elevontoelevatoraileron_el14032686, i64* %1125, align 1
  %_rtB_1405 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1126 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1405, i64 0, i32 21, i64 2
  %1127 = bitcast double* %1126 to i64*
  %_rtB__MultiportSwitch_c_el14062687 = load i64, i64* %1127, align 1
  %1128 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1405, i64 0, i32 169, i64 2
  %1129 = bitcast double* %1128 to i64*
  store i64 %_rtB__MultiportSwitch_c_el14062687, i64* %1129, align 1
  %_rtB_1408 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1130 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1408, i64 0, i32 25
  %1131 = bitcast double* %1130 to i64*
  %_rtB__Saturation_c14092688 = load i64, i64* %1131, align 1
  %1132 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1408, i64 0, i32 169, i64 3
  %1133 = bitcast double* %1132 to i64*
  store i64 %_rtB__Saturation_c14092688, i64* %1133, align 1
  %S_1411 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1411, i32 21, i32 184, i32 104)
  %S_1412 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1412, i32 21, i32 185, i32 104)
  %S_1413 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1413, i32 21, i32 186, i32 104)
  %S_1414 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1414, i32 21, i32 187, i32 104)
  %S_1415 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1415, i32 21, i32 188, i32 104)
  %1134 = bitcast double* %rtb_C_L_delta_e_ to i64*
  %rtb_C_L_delta_e_14162689 = load i64, i64* %1134, align 8
  %_rtB_1417 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1135 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1417, i64 0, i32 170
  %1136 = bitcast [9 x double]* %1135 to i64*
  store i64 %rtb_C_L_delta_e_14162689, i64* %1136, align 1
  %1137 = bitcast double* %rtb_C_D_delta_e_ to i64*
  %rtb_C_D_delta_e_14182690 = load i64, i64* %1137, align 8
  %_rtB_1419 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1138 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1419, i64 0, i32 170, i64 1
  %1139 = bitcast double* %1138 to i64*
  store i64 %rtb_C_D_delta_e_14182690, i64* %1139, align 1
  %1140 = bitcast double* %rtb_C_m_delta_e_ to i64*
  %rtb_C_m_delta_e_14202691 = load i64, i64* %1140, align 8
  %_rtB_1421 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1141 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1421, i64 0, i32 170, i64 2
  %1142 = bitcast double* %1141 to i64*
  store i64 %rtb_C_m_delta_e_14202691, i64* %1142, align 1
  %1143 = bitcast double* %rtb_C_Y_delta_a_ to i64*
  %rtb_C_Y_delta_a_14222692 = load i64, i64* %1143, align 8
  %_rtB_1423 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1144 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1423, i64 0, i32 170, i64 3
  %1145 = bitcast double* %1144 to i64*
  store i64 %rtb_C_Y_delta_a_14222692, i64* %1145, align 1
  %1146 = bitcast double* %rtb_C_Y_delta_r_ to i64*
  %rtb_C_Y_delta_r_14242693 = load i64, i64* %1146, align 8
  %_rtB_1425 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1147 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1425, i64 0, i32 170, i64 4
  %1148 = bitcast double* %1147 to i64*
  store i64 %rtb_C_Y_delta_r_14242693, i64* %1148, align 1
  %1149 = bitcast double* %rtb_C_l_delta_a_ to i64*
  %rtb_C_l_delta_a_14262694 = load i64, i64* %1149, align 8
  %_rtB_1427 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1150 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1427, i64 0, i32 170, i64 5
  %1151 = bitcast double* %1150 to i64*
  store i64 %rtb_C_l_delta_a_14262694, i64* %1151, align 1
  %1152 = bitcast double* %rtb_C_l_delta_r_ to i64*
  %rtb_C_l_delta_r_14282695 = load i64, i64* %1152, align 8
  %_rtB_1429 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1153 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1429, i64 0, i32 170, i64 6
  %1154 = bitcast double* %1153 to i64*
  store i64 %rtb_C_l_delta_r_14282695, i64* %1154, align 1
  %1155 = bitcast double* %rtb_C_n_delta_a_ to i64*
  %rtb_C_n_delta_a_14302696 = load i64, i64* %1155, align 8
  %_rtB_1431 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1156 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1431, i64 0, i32 170, i64 7
  %1157 = bitcast double* %1156 to i64*
  store i64 %rtb_C_n_delta_a_14302696, i64* %1157, align 1
  %1158 = bitcast double* %rtb_C_n_delta_r_ to i64*
  %rtb_C_n_delta_r_14322697 = load i64, i64* %1158, align 8
  %_rtB_1433 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1159 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1433, i64 0, i32 170, i64 8
  %1160 = bitcast double* %1159 to i64*
  store i64 %rtb_C_n_delta_r_14322697, i64* %1160, align 1
  %S_1434 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1434, i32 21, i32 190, i32 104)
  %S_1435 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1435, i32 21, i32 191, i32 104)
  %S_1436 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1436, i32 21, i32 192, i32 104)
  %S_1437 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1437, i32 21, i32 193, i32 104)
  %S_1438 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1438, i32 21, i32 194, i32 104)
  %S_1439 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1439, i32 21, i32 195, i32 104)
  %S_1440 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1440, i32 21, i32 196, i32 104)
  %S_1441 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1441, i32 21, i32 197, i32 104)
  %S_1442 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1442, i32 21, i32 198, i32 104)
  %S_1443 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1443, i32 21, i32 199, i32 104)
  %S_1444 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1444, i32 21, i32 200, i32 104)
  %S_1445 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1445, i32 21, i32 201, i32 104)
  %S_1446 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1446, i32 21, i32 202, i32 104)
  %S_1447 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1447, i32 21, i32 203, i32 104)
  %S_1448 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1448, i32 21, i32 204, i32 104)
  %S_1449 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1449, i32 21, i32 205, i32 104)
  %_rtP_1450 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1161 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1450, i64 0, i32 171
  %_rtP__Gain_Gain_g = load double, double* %1161, align 1
  %_rtB_1451 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1162 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1451, i64 0, i32 2, i32 1
  %_rtB__AirData_d_alpha = load double, double* %1162, align 1
  %tmp120 = fmul double %_rtP__Gain_Gain_g, %_rtB__AirData_d_alpha
  %1163 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1451, i64 0, i32 62
  store double %tmp120, double* %1163, align 1
  %S_1453 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1453, i32 21, i32 207, i32 104)
  %_rtP_1454 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1164 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1454, i64 0, i32 172
  %_rtP__Gain_Gain_m5 = load double, double* %1164, align 1
  %_rtB_1455 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1165 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1455, i64 0, i32 2, i32 2
  %_rtB__AirData_d_beta = load double, double* %1165, align 1
  %tmp121 = fmul double %_rtP__Gain_Gain_m5, %_rtB__AirData_d_beta
  %1166 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1455, i64 0, i32 63
  store double %tmp121, double* %1166, align 1
  %S_1457 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1457, i32 21, i32 209, i32 104)
  %S_1458 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1458, i32 21, i32 210, i32 104)
  %S_1459 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1459, i32 21, i32 211, i32 104)
  %S_1460 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1460, i32 21, i32 212, i32 104)
  %S_1461 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1461, i32 21, i32 213, i32 104)
  %S_1462 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1462, i32 21, i32 214, i32 104)
  %_rtB_1463 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1167 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1463, i64 0, i32 2, i32 2
  %_rtB__AirData_d_beta1464 = load double, double* %1167, align 1
  %_rtP_1465 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1168 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1465, i64 0, i32 173
  %_rtP__Saturation1_UpperSat_o = load double, double* %1168, align 1
  %1169 = fcmp ogt double %_rtB__AirData_d_beta1464, %_rtP__Saturation1_UpperSat_o
  %1170 = bitcast double %_rtB__AirData_d_beta1464 to i64
  %1171 = bitcast double %_rtP__Saturation1_UpperSat_o to i64
  br i1 %1169, label %true115, label %false116

false114:                                         ; preds = %false112, %merge335
  %_rtP_1516 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1172 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1516, i64 0, i32 183
  %_rtP__down2h_Gain = load double, double* %1172, align 1
  %_rtB_1517 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1173 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1517, i64 0, i32 12, i64 2
  %_rtB__Integrator_el1518 = load double, double* %1173, align 1
  %tmp122 = fmul double %_rtP__down2h_Gain, %_rtB__Integrator_el1518
  %tmp123 = fmul double %tmp122, 0x400A3F28FCA3F28F
  store double %tmp123, double* %rtb_C_L_delta_e_, align 8
  %1174 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1516, i64 0, i32 184
  %_rtP__LimitFunction10ftto1000ft_UpperSat = load double, double* %1174, align 1
  %1175 = fcmp ogt double %tmp123, %_rtP__LimitFunction10ftto1000ft_UpperSat
  %1176 = bitcast double %tmp123 to i64
  %1177 = bitcast double %_rtP__LimitFunction10ftto1000ft_UpperSat to i64
  br i1 %1175, label %true123, label %false124

true115:                                          ; preds = %true113
  %1178 = bitcast double* %1168 to i64*
  %1179 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1463, i64 0, i32 64
  %1180 = bitcast double* %1179 to i64*
  store i64 %1171, i64* %1180, align 1
  br label %merge333

false116:                                         ; preds = %true113
  %1181 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1465, i64 0, i32 174
  %_rtP__Saturation1_LowerSat_b = load double, double* %1181, align 1
  %1182 = fcmp olt double %_rtB__AirData_d_beta1464, %_rtP__Saturation1_LowerSat_b
  %1183 = bitcast double %_rtP__Saturation1_LowerSat_b to i64
  br i1 %1182, label %true117, label %false118

true117:                                          ; preds = %false116
  %1184 = bitcast double* %1181 to i64*
  %1185 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1463, i64 0, i32 64
  %1186 = bitcast double* %1185 to i64*
  store i64 %1183, i64* %1186, align 1
  br label %merge333

false118:                                         ; preds = %false116
  %1187 = bitcast double* %1167 to i64*
  %1188 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1463, i64 0, i32 64
  %1189 = bitcast double* %1188 to i64*
  store i64 %1170, i64* %1189, align 1
  br label %merge333

true119:                                          ; preds = %merge333
  %1190 = bitcast double* %1886 to i64*
  %1191 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1479, i64 0, i32 65
  %1192 = bitcast double* %1191 to i64*
  store i64 %1889, i64* %1192, align 1
  br label %merge335

false120:                                         ; preds = %merge333
  %1193 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1481, i64 0, i32 176
  %_rtP__Saturation_LowerSat_j = load double, double* %1193, align 1
  %1194 = fcmp olt double %_rtB__AirData_d_alpha1480, %_rtP__Saturation_LowerSat_j
  %1195 = bitcast double %_rtP__Saturation_LowerSat_j to i64
  br i1 %1194, label %true121, label %false122

true121:                                          ; preds = %false120
  %1196 = bitcast double* %1193 to i64*
  %1197 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1479, i64 0, i32 65
  %1198 = bitcast double* %1197 to i64*
  store i64 %1195, i64* %1198, align 1
  br label %merge335

false122:                                         ; preds = %false120
  %1199 = bitcast double* %1885 to i64*
  %1200 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1479, i64 0, i32 65
  %1201 = bitcast double* %1200 to i64*
  store i64 %1888, i64* %1201, align 1
  br label %merge335

true123:                                          ; preds = %false114
  %1202 = bitcast double* %1174 to i64*
  %1203 = bitcast double* %rtb_C_Y_delta_a_ to i64*
  store i64 %1177, i64* %1203, align 8
  %1204 = bitcast i64 %1177 to double
  br label %merge337

false124:                                         ; preds = %false114
  %1205 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1516, i64 0, i32 185
  %_rtP__LimitFunction10ftto1000ft_LowerSat = load double, double* %1205, align 1
  %1206 = fcmp olt double %tmp123, %_rtP__LimitFunction10ftto1000ft_LowerSat
  %1207 = bitcast double %_rtP__LimitFunction10ftto1000ft_LowerSat to i64
  br i1 %1206, label %true125, label %false126

true125:                                          ; preds = %false124
  %1208 = bitcast double* %1205 to i64*
  %1209 = bitcast double* %rtb_C_Y_delta_a_ to i64*
  store i64 %1207, i64* %1209, align 8
  %1210 = bitcast i64 %1207 to double
  br label %merge337

false126:                                         ; preds = %false124
  %1211 = bitcast double* %rtb_C_L_delta_e_ to i64*
  %1212 = bitcast double* %rtb_C_Y_delta_a_ to i64*
  store i64 %1176, i64* %1212, align 8
  %1213 = bitcast i64 %1176 to double
  br label %merge337

true127:                                          ; preds = %merge337
  %_rtB_1548 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1214 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1548, i64 0, i32 115, i64 0
  %_rtB__Divide_el = load double, double* %1214, align 1
  %_rtDW_1549 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1215 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1549, i64 0, i32 33, i64 0
  %_rtDW__NextOutput_el = load double, double* %1215, align 1
  %tmp126 = fmul double %_rtB__Divide_el, %_rtDW__NextOutput_el
  %1216 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1548, i64 0, i32 66, i64 0
  store double %tmp126, double* %1216, align 1
  %_rtB_1551 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1217 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1551, i64 0, i32 115, i64 1
  %_rtB__Divide_el1552 = load double, double* %1217, align 1
  %_rtDW_1553 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1218 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1553, i64 0, i32 33, i64 1
  %_rtDW__NextOutput_el1554 = load double, double* %1218, align 1
  %tmp127 = fmul double %_rtB__Divide_el1552, %_rtDW__NextOutput_el1554
  %1219 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1551, i64 0, i32 66, i64 1
  store double %tmp127, double* %1219, align 1
  %_rtB_1556 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1220 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1556, i64 0, i32 115, i64 2
  %_rtB__Divide_el1557 = load double, double* %1220, align 1
  %_rtDW_1558 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1221 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1558, i64 0, i32 33, i64 2
  %_rtDW__NextOutput_el1559 = load double, double* %1221, align 1
  %tmp128 = fmul double %_rtB__Divide_el1557, %_rtDW__NextOutput_el1559
  %1222 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1556, i64 0, i32 66, i64 2
  store double %tmp128, double* %1222, align 1
  %_rtB_1561 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1223 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1561, i64 0, i32 115, i64 3
  %_rtB__Divide_el1562 = load double, double* %1223, align 1
  %_rtDW_1563 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1224 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1563, i64 0, i32 33, i64 3
  %_rtDW__NextOutput_el1564 = load double, double* %1224, align 1
  %tmp129 = fmul double %_rtB__Divide_el1562, %_rtDW__NextOutput_el1564
  %1225 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1561, i64 0, i32 66, i64 3
  store double %tmp129, double* %1225, align 1
  %vm_ssIsMajorTimeStepVar5_1566 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1226 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_1566, 0
  br i1 %1226, label %false128, label %true129

false128:                                         ; preds = %false132, %true133, %false138, %true131, %true127, %merge337
  %_rtDW_1587 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1227 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1587, i64 0, i32 146
  %_rtDW__Hpgw_MODE1588 = load i8, i8* %1227, align 1
  %1228 = and i8 %_rtDW__Hpgw_MODE1588, 1
  %1229 = icmp eq i8 %1228, 0
  br i1 %1229, label %false140, label %true139

true129:                                          ; preds = %true127
  %_rtB_1567 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1230 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1567, i64 0, i32 107
  %_rtB__Constant1_b = load double, double* %1230, align 1
  %1231 = fcmp ogt double %_rtB__Constant1_b, 0.000000e+00
  %_rtDW_1576 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1232 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1576, i64 0, i32 146
  %_rtDW__Hpgw_MODE1577 = load i8, i8* %1232, align 1
  %1233 = and i8 %_rtDW__Hpgw_MODE1577, 1
  %1234 = icmp eq i8 %1233, 0
  br i1 %1231, label %true131, label %false132

true131:                                          ; preds = %true129
  br i1 %1234, label %true135, label %false128

false132:                                         ; preds = %true129
  br i1 %1234, label %false128, label %true133

true133:                                          ; preds = %false132
  %S_1569 = load i8*, i8** %S_, align 8
  call void @vm_ssSetBlockStateForSolverChangedAtMajorStep(i8* %S_1569)
  %_rtP_1570 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1235 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1570, i64 0, i32 2
  %1236 = bitcast double* %1235 to i64*
  %_rtP__pgw_Y02678 = load i64, i64* %1236, align 1
  %_rtB_1571 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1237 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1571, i64 0, i32 142
  %1238 = bitcast [2 x double]* %1237 to i64*
  store i64 %_rtP__pgw_Y02678, i64* %1238, align 1
  %_rtP_1572 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1239 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1572, i64 0, i32 2
  %1240 = bitcast double* %1239 to i64*
  %_rtP__pgw_Y015732679 = load i64, i64* %1240, align 1
  %_rtB_1574 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1241 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1574, i64 0, i32 142, i64 1
  %1242 = bitcast double* %1241 to i64*
  store i64 %_rtP__pgw_Y015732679, i64* %1242, align 1
  %_rtDW_1575 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1243 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1575, i64 0, i32 146
  store i8 0, i8* %1243, align 1
  br label %false128

true135:                                          ; preds = %true131
  %vm_ssGetTaskTimeVar8_1578 = load double, double* %vm_ssGetTaskTimeVar8_, align 8
  %vm_ssGetTStartVar9_1579 = load double, double* %vm_ssGetTStartVar9_, align 8
  %1244 = fcmp une double %vm_ssGetTaskTimeVar8_1578, %vm_ssGetTStartVar9_1579
  br i1 %1244, label %true137, label %false138

true137:                                          ; preds = %true135
  %S_1580 = load i8*, i8** %S_, align 8
  call void @vm_ssSetBlockStateForSolverChangedAtMajorStep(i8* %S_1580)
  %_rtDW_1582.pre = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  br label %false138

false138:                                         ; preds = %true137, %true135
  %_rtDW_1582 = phi %DW_X8_T.44* [ %_rtDW_1582.pre, %true137 ], [ %_rtDW_1576, %true135 ]
  %_rtP_1581 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1245 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1581, i64 0, i32 5
  %1246 = bitcast double* %1245 to i64*
  %_rtP__UnitDelay_InitialCondition2680 = load i64, i64* %1246, align 1
  %1247 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1582, i64 0, i32 15
  %1248 = bitcast [2 x double]* %1247 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition2680, i64* %1248, align 1
  %_rtP_1583 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1249 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1583, i64 0, i32 5
  %1250 = bitcast double* %1249 to i64*
  %_rtP__UnitDelay_InitialCondition15842681 = load i64, i64* %1250, align 1
  %_rtDW_1585 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1251 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1585, i64 0, i32 15, i64 1
  %1252 = bitcast double* %1251 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition15842681, i64* %1252, align 1
  %_rtDW_1586 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1253 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1586, i64 0, i32 146
  store i8 1, i8* %1253, align 1
  br label %false128

true139:                                          ; preds = %false128
  %rtb_TriggerWave_1589 = load double, double* %rtb_TriggerWave_, align 8
  %_rtB_1590 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1254 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1590, i64 0, i32 111
  %_rtB__UnitConversion_d = load double, double* %1254, align 1
  %tmp130 = fmul double %rtb_TriggerWave_1589, %_rtB__UnitConversion_d
  store double %tmp130, double* %rtb_C_m_delta_e_, align 8
  %1255 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1590, i64 0, i32 145
  %_rtB__Constant2_ml = load double, double* %1255, align 1
  %1256 = call double @muDoubleScalarSqrt(double %tmp130)
  %tmp131 = fdiv double %_rtB__Constant2_ml, %1256
  store double %tmp131, double* %rtb_C_l_delta_a_, align 8
  %1257 = bitcast double* %rtb_C_m_delta_e_ to i64*
  %rtb_C_m_delta_e_15932673 = load i64, i64* %1257, align 8
  %1258 = bitcast [2 x double]* %frac_ to i64*
  store i64 %rtb_C_m_delta_e_15932673, i64* %1258, align 8
  %rtb_C_Y_delta_r_1594 = load double, double* %rtb_C_Y_delta_r_, align 8
  %_rtB_1595 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1259 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1595, i64 0, i32 111
  %_rtB__UnitConversion_d1596 = load double, double* %1259, align 1
  %tmp132 = fmul double %rtb_C_Y_delta_r_1594, %_rtB__UnitConversion_d1596
  store double %tmp132, double* %rtb_C_m_delta_e_, align 8
  %1260 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1595, i64 0, i32 145
  %_rtB__Constant2_ml1598 = load double, double* %1260, align 1
  %1261 = call double @muDoubleScalarSqrt(double %tmp132)
  %tmp133 = fdiv double %_rtB__Constant2_ml1598, %1261
  store double %tmp133, double* %rtb_C_l_delta_r_, align 8
  %frac__el = load double, double* %1908, align 8
  %_rtB_1600 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1262 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1600, i64 0, i32 111
  %_rtB__UnitConversion_d1601 = load double, double* %1262, align 1
  %tmp134 = fmul double %frac__el, %_rtB__UnitConversion_d1601
  store double %tmp134, double* %rtb_C_n_delta_a_, align 8
  %1263 = fcmp olt double %tmp134, 0.000000e+00
  %1264 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1600, i64 0, i32 146
  %_rtB__Constant3_j = load double, double* %1264, align 1
  %1265 = call double @muDoubleScalarFloor(double %_rtB__Constant3_j)
  %1266 = fcmp ogt double %_rtB__Constant3_j, %1265
  %1267 = and i1 %1263, %1266
  br i1 %1267, label %true141, label %false142

false140:                                         ; preds = %true147, %merge340, %false128
  %vm_ssIsSampleHitVar1_1665 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_1665, i32* %i_, align 4
  %1268 = icmp eq i32 %vm_ssIsSampleHitVar1_1665, 0
  br i1 %1268, label %false150, label %true149

true141:                                          ; preds = %true139
  %tmp135 = fsub double -0.000000e+00, %tmp134
  %_rtB_1610 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1269 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1610, i64 0, i32 146
  %_rtB__Constant3_j1611 = load double, double* %1269, align 1
  %1270 = call double @muDoubleScalarPower(double %tmp135, double %_rtB__Constant3_j1611)
  %tmp136 = fsub double -0.000000e+00, %1270
  br label %merge339

false142:                                         ; preds = %true139
  %_rtB_1607 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1271 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1607, i64 0, i32 146
  %_rtB__Constant3_j1608 = load double, double* %1271, align 1
  %1272 = call double @muDoubleScalarPower(double %tmp134, double %_rtB__Constant3_j1608)
  br label %merge339

true143:                                          ; preds = %merge339
  %_rtDW_1626 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1273 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1626, i64 0, i32 15, i64 0
  %1274 = bitcast double* %1273 to i64*
  %_rtDW__UnitDelay_DSTATE_d_el2675 = load i64, i64* %1274, align 1
  %1275 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1617, i64 0, i32 141
  %1276 = bitcast [2 x double]* %1275 to i64*
  store i64 %_rtDW__UnitDelay_DSTATE_d_el2675, i64* %1276, align 1
  %_rtDW_1628 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1277 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1628, i64 0, i32 15, i64 1
  %1278 = bitcast double* %1277 to i64*
  %_rtDW__UnitDelay_DSTATE_d_el16292676 = load i64, i64* %1278, align 1
  %_rtB_1630 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1279 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1630, i64 0, i32 141, i64 1
  %1280 = bitcast double* %1279 to i64*
  store i64 %_rtDW__UnitDelay_DSTATE_d_el16292676, i64* %1280, align 1
  %_rtB_1632.pre = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  br label %false144

false144:                                         ; preds = %merge339, %true143
  %_rtB_1632 = phi %B_X8_T.43* [ %_rtB_1617, %merge339 ], [ %_rtB_1632.pre, %true143 ]
  %1281 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1632, i64 0, i32 141, i64 0
  %_rtB__UnitDelay_l_el = load double, double* %1281, align 1
  %tmp145 = fmul double %tmp144, %_rtB__UnitDelay_l_el
  %tmp146 = fadd double %tmp145, %tmp141
  %1282 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1632, i64 0, i32 142, i64 0
  store double %tmp146, double* %1282, align 1
  %1283 = fcmp olt double %tmp142, 0.000000e+00
  %_rtB_1636 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1284 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1636, i64 0, i32 146
  %_rtB__Constant3_j1637 = load double, double* %1284, align 1
  %1285 = call double @muDoubleScalarFloor(double %_rtB__Constant3_j1637)
  %1286 = fcmp ogt double %_rtB__Constant3_j1637, %1285
  %1287 = and i1 %1283, %1286
  br i1 %1287, label %true145, label %false146

true145:                                          ; preds = %false144
  %tmp147 = fsub double -0.000000e+00, %tmp142
  %_rtB_1644 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1288 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1644, i64 0, i32 146
  %_rtB__Constant3_j1645 = load double, double* %1288, align 1
  %1289 = call double @muDoubleScalarPower(double %tmp147, double %_rtB__Constant3_j1645)
  %tmp148 = fsub double -0.000000e+00, %1289
  br label %merge340

false146:                                         ; preds = %false144
  %_rtB_1641 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1290 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1641, i64 0, i32 146
  %_rtB__Constant3_j1642 = load double, double* %1290, align 1
  %1291 = call double @muDoubleScalarPower(double %tmp142, double %_rtB__Constant3_j1642)
  br label %merge340

true147:                                          ; preds = %merge340
  %_rtDW_1664 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1292 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1664, i64 0, i32 140
  call void @vm_srUpdateBC(i8* %1292)
  br label %false140

true149:                                          ; preds = %false140
  %_rtB_1667 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1293 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1667, i64 0, i32 2, i32 0
  %_rtB__AirData_d_Va1668 = load double, double* %1293, align 1
  %tmp158 = fmul double %_rtB__AirData_d_Va1668, 0x400A3F28FCA3F28F
  %1294 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1667, i64 0, i32 67
  store double %tmp158, double* %1294, align 1
  %vm_ssIsMajorTimeStepVar5_1670 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1295 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_1670, 0
  br i1 %1295, label %false150, label %true151

false150:                                         ; preds = %false154, %true155, %false160, %true153, %true149, %false140
  %_rtDW_1691 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1296 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1691, i64 0, i32 141
  %_rtDW__Hwgwz_MODE1692 = load i8, i8* %1296, align 1
  %1297 = and i8 %_rtDW__Hwgwz_MODE1692, 1
  %1298 = icmp eq i8 %1297, 0
  br i1 %1298, label %false162, label %true161

true151:                                          ; preds = %true149
  %_rtB_1671 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1299 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1671, i64 0, i32 112
  %_rtB__Constant3_h = load double, double* %1299, align 1
  %1300 = fcmp ogt double %_rtB__Constant3_h, 0.000000e+00
  %_rtDW_1680 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1301 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1680, i64 0, i32 141
  %_rtDW__Hwgwz_MODE1681 = load i8, i8* %1301, align 1
  %1302 = and i8 %_rtDW__Hwgwz_MODE1681, 1
  %1303 = icmp eq i8 %1302, 0
  br i1 %1300, label %true153, label %false154

true153:                                          ; preds = %true151
  br i1 %1303, label %true157, label %false150

false154:                                         ; preds = %true151
  br i1 %1303, label %false150, label %true155

true155:                                          ; preds = %false154
  %S_1673 = load i8*, i8** %S_, align 8
  call void @vm_ssSetBlockStateForSolverChangedAtMajorStep(i8* %S_1673)
  %_rtP_1674 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1304 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1674, i64 0, i32 32
  %1305 = bitcast double* %1304 to i64*
  %_rtP__wgw_Y02669 = load i64, i64* %1305, align 1
  %_rtB_1675 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1306 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1675, i64 0, i32 123
  %1307 = bitcast [2 x double]* %1306 to i64*
  store i64 %_rtP__wgw_Y02669, i64* %1307, align 1
  %_rtP_1676 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1308 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1676, i64 0, i32 32
  %1309 = bitcast double* %1308 to i64*
  %_rtP__wgw_Y016772670 = load i64, i64* %1309, align 1
  %_rtB_1678 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1310 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1678, i64 0, i32 123, i64 1
  %1311 = bitcast double* %1310 to i64*
  store i64 %_rtP__wgw_Y016772670, i64* %1311, align 1
  %_rtDW_1679 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1312 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1679, i64 0, i32 141
  store i8 0, i8* %1312, align 1
  br label %false150

true157:                                          ; preds = %true153
  %vm_ssGetTaskTimeVar8_1682 = load double, double* %vm_ssGetTaskTimeVar8_, align 8
  %vm_ssGetTStartVar9_1683 = load double, double* %vm_ssGetTStartVar9_, align 8
  %1313 = fcmp une double %vm_ssGetTaskTimeVar8_1682, %vm_ssGetTStartVar9_1683
  br i1 %1313, label %true159, label %false160

true159:                                          ; preds = %true157
  %S_1684 = load i8*, i8** %S_, align 8
  call void @vm_ssSetBlockStateForSolverChangedAtMajorStep(i8* %S_1684)
  %_rtDW_1686.pre = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  br label %false160

false160:                                         ; preds = %true159, %true157
  %_rtDW_1686 = phi %DW_X8_T.44* [ %_rtDW_1686.pre, %true159 ], [ %_rtDW_1680, %true157 ]
  %_rtP_1685 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1314 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1685, i64 0, i32 35
  %1315 = bitcast double* %1314 to i64*
  %_rtP__UnitDelay_InitialCondition_g2671 = load i64, i64* %1315, align 1
  %1316 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1686, i64 0, i32 8
  %1317 = bitcast [2 x double]* %1316 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_g2671, i64* %1317, align 1
  %_rtP_1687 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1318 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1687, i64 0, i32 35
  %1319 = bitcast double* %1318 to i64*
  %_rtP__UnitDelay_InitialCondition_g16882672 = load i64, i64* %1319, align 1
  %_rtDW_1689 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1320 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1689, i64 0, i32 8, i64 1
  %1321 = bitcast double* %1320 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_g16882672, i64* %1321, align 1
  %_rtDW_1690 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1322 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1690, i64 0, i32 141
  store i8 1, i8* %1322, align 1
  br label %false150

true161:                                          ; preds = %false150
  %_rtB_1693 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1323 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1693, i64 0, i32 67
  %_rtB__UnitConversion = load double, double* %1323, align 1
  %rtb_TriggerWave_1694 = load double, double* %rtb_TriggerWave_, align 8
  %tmp159 = fdiv double %_rtB__UnitConversion, %rtb_TriggerWave_1694
  store double %tmp159, double* %rtb_TriggerWave_, align 8
  %_rtB__UnitConversion1696 = load double, double* %1323, align 1
  %rtb_C_Y_delta_r_1697 = load double, double* %rtb_C_Y_delta_r_, align 8
  %tmp160 = fdiv double %_rtB__UnitConversion1696, %rtb_C_Y_delta_r_1697
  store double %tmp160, double* %rtb_u2_idx_2_, align 8
  %_rtP_1698 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1324 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1698, i64 0, i32 33
  %_rtP__u_Gain_m = load double, double* %1324, align 1
  %tmp161 = fmul double %_rtP__u_Gain_m, %tmp159
  %1325 = call double @muDoubleScalarSqrt(double %tmp161)
  %_rtB_1700 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1326 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1700, i64 0, i32 66, i64 2
  %_rtB__Product_n_el1701 = load double, double* %1326, align 1
  %tmp162 = fmul double %1325, %_rtB__Product_n_el1701
  %1327 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1700, i64 0, i32 110
  %_rtB__sigma_wg1703 = load double, double* %1327, align 1
  %tmp163 = fmul double %tmp162, %_rtB__sigma_wg1703
  store double %tmp163, double* %1908, align 8
  %1328 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1700, i64 0, i32 124
  %_rtB__Constant_a = load double, double* %1328, align 1
  %_rtP_1705 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1329 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1705, i64 0, i32 34
  %_rtP__dt_Gain_g = load double, double* %1329, align 1
  %rtb_TriggerWave_1706 = load double, double* %rtb_TriggerWave_, align 8
  %tmp164 = fmul double %_rtP__dt_Gain_g, %rtb_TriggerWave_1706
  %tmp165 = fsub double %_rtB__Constant_a, %tmp164
  store double %tmp165, double* %rtb_TriggerWave_, align 8
  %vm_ssIsSampleHitVar1_1707 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_1707, i32* %i_, align 4
  %1330 = icmp eq i32 %vm_ssIsSampleHitVar1_1707, 0
  br i1 %1330, label %false164, label %true163

false162:                                         ; preds = %true165, %false164, %false150
  %vm_ssIsSampleHitVar1_1734 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_1734, i32* %i_, align 4
  %1331 = icmp eq i32 %vm_ssIsSampleHitVar1_1734, 0
  %vm_ssIsMajorTimeStepVar5_1736 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1332 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_1736, 0
  %or.cond = or i1 %1331, %1332
  br i1 %or.cond, label %false168, label %true169

true163:                                          ; preds = %true161
  %_rtDW_1709 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1333 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1709, i64 0, i32 8, i64 0
  %1334 = bitcast double* %1333 to i64*
  %_rtDW__UnitDelay_DSTATE_c_el2667 = load i64, i64* %1334, align 1
  %1335 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1700, i64 0, i32 122
  %1336 = bitcast [2 x double]* %1335 to i64*
  store i64 %_rtDW__UnitDelay_DSTATE_c_el2667, i64* %1336, align 1
  %_rtDW_1711 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1337 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1711, i64 0, i32 8, i64 1
  %1338 = bitcast double* %1337 to i64*
  %_rtDW__UnitDelay_DSTATE_c_el17122668 = load i64, i64* %1338, align 1
  %_rtB_1713 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1339 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1713, i64 0, i32 122, i64 1
  %1340 = bitcast double* %1339 to i64*
  store i64 %_rtDW__UnitDelay_DSTATE_c_el17122668, i64* %1340, align 1
  %rtb_TriggerWave_1714.pre = load double, double* %rtb_TriggerWave_, align 8
  %_rtB_1715.pre = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %frac__el1716.pre = load double, double* %1908, align 8
  br label %false164

false164:                                         ; preds = %true161, %true163
  %frac__el1716 = phi double [ %tmp163, %true161 ], [ %frac__el1716.pre, %true163 ]
  %_rtB_1717 = phi %B_X8_T.43* [ %_rtB_1700, %true161 ], [ %_rtB_1715.pre, %true163 ]
  %rtb_TriggerWave_1714 = phi double [ %tmp165, %true161 ], [ %rtb_TriggerWave_1714.pre, %true163 ]
  %1341 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1717, i64 0, i32 122, i64 0
  %_rtB__UnitDelay_el = load double, double* %1341, align 1
  %tmp166 = fmul double %rtb_TriggerWave_1714, %_rtB__UnitDelay_el
  %tmp167 = fadd double %tmp166, %frac__el1716
  %1342 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1717, i64 0, i32 123, i64 0
  store double %tmp167, double* %1342, align 1
  %_rtB_1718 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1343 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1718, i64 0, i32 124
  %_rtB__Constant_a1719 = load double, double* %1343, align 1
  %_rtP_1720 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1344 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1720, i64 0, i32 34
  %_rtP__dt_Gain_g1721 = load double, double* %1344, align 1
  %rtb_u2_idx_2_1722 = load double, double* %rtb_u2_idx_2_, align 8
  %tmp168 = fmul double %_rtP__dt_Gain_g1721, %rtb_u2_idx_2_1722
  %tmp169 = fsub double %_rtB__Constant_a1719, %tmp168
  %1345 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1718, i64 0, i32 122, i64 1
  %_rtB__UnitDelay_el1724 = load double, double* %1345, align 1
  %tmp170 = fmul double %tmp169, %_rtB__UnitDelay_el1724
  %1346 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1720, i64 0, i32 33
  %_rtP__u_Gain_m1726 = load double, double* %1346, align 1
  %tmp171 = fmul double %_rtP__u_Gain_m1726, %rtb_u2_idx_2_1722
  %1347 = call double @muDoubleScalarSqrt(double %tmp171)
  %_rtB_1728 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1348 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1728, i64 0, i32 66, i64 2
  %_rtB__Product_n_el1729 = load double, double* %1348, align 1
  %tmp172 = fmul double %1347, %_rtB__Product_n_el1729
  %rtb_C_D_delta_e_1730 = load double, double* %rtb_C_D_delta_e_, align 8
  %tmp173 = fmul double %tmp172, %rtb_C_D_delta_e_1730
  %tmp174 = fadd double %tmp170, %tmp173
  %1349 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1728, i64 0, i32 123, i64 1
  store double %tmp174, double* %1349, align 1
  %vm_ssIsMajorTimeStepVar5_1732 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1350 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_1732, 0
  br i1 %1350, label %false162, label %true165

true165:                                          ; preds = %false164
  %_rtDW_1733 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1351 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1733, i64 0, i32 135
  call void @vm_srUpdateBC(i8* %1351)
  br label %false162

false168:                                         ; preds = %false172, %true173, %false178, %true171, %false162
  %_rtDW_1762 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1352 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1762, i64 0, i32 145
  %_rtDW__Hqgw_MODE1763 = load i8, i8* %1352, align 1
  %1353 = and i8 %_rtDW__Hqgw_MODE1763, 1
  %1354 = icmp eq i8 %1353, 0
  br i1 %1354, label %false180, label %true179

true169:                                          ; preds = %false162
  %_rtB_1737 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1355 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1737, i64 0, i32 108
  %_rtB__Constant2_l = load double, double* %1355, align 1
  %1356 = fcmp ogt double %_rtB__Constant2_l, 0.000000e+00
  %_rtDW_1746 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1357 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1746, i64 0, i32 145
  %_rtDW__Hqgw_MODE1747 = load i8, i8* %1357, align 1
  %1358 = and i8 %_rtDW__Hqgw_MODE1747, 1
  %1359 = icmp eq i8 %1358, 0
  br i1 %1356, label %true171, label %false172

true171:                                          ; preds = %true169
  br i1 %1359, label %true175, label %false168

false172:                                         ; preds = %true169
  br i1 %1359, label %false168, label %true173

true173:                                          ; preds = %false172
  %S_1739 = load i8*, i8** %S_, align 8
  call void @vm_ssSetBlockStateForSolverChangedAtMajorStep(i8* %S_1739)
  %_rtP_1740 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1360 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1740, i64 0, i32 10
  %1361 = bitcast double* %1360 to i64*
  %_rtP__qgw_Y02661 = load i64, i64* %1361, align 1
  %_rtB_1741 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1362 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1741, i64 0, i32 138
  %1363 = bitcast [2 x double]* %1362 to i64*
  store i64 %_rtP__qgw_Y02661, i64* %1363, align 1
  %_rtP_1742 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1364 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1742, i64 0, i32 10
  %1365 = bitcast double* %1364 to i64*
  %_rtP__qgw_Y017432662 = load i64, i64* %1365, align 1
  %_rtB_1744 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1366 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1744, i64 0, i32 138, i64 1
  %1367 = bitcast double* %1366 to i64*
  store i64 %_rtP__qgw_Y017432662, i64* %1367, align 1
  %_rtDW_1745 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1368 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1745, i64 0, i32 145
  store i8 0, i8* %1368, align 1
  br label %false168

true175:                                          ; preds = %true171
  %vm_ssGetTaskTimeVar8_1748 = load double, double* %vm_ssGetTaskTimeVar8_, align 8
  %vm_ssGetTStartVar9_1749 = load double, double* %vm_ssGetTStartVar9_, align 8
  %1369 = fcmp une double %vm_ssGetTaskTimeVar8_1748, %vm_ssGetTStartVar9_1749
  br i1 %1369, label %true177, label %false178

true177:                                          ; preds = %true175
  %S_1750 = load i8*, i8** %S_, align 8
  call void @vm_ssSetBlockStateForSolverChangedAtMajorStep(i8* %S_1750)
  %_rtDW_1752.pre = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  br label %false178

false178:                                         ; preds = %true177, %true175
  %_rtDW_1752 = phi %DW_X8_T.44* [ %_rtDW_1752.pre, %true177 ], [ %_rtDW_1746, %true175 ]
  %_rtP_1751 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1370 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1751, i64 0, i32 12
  %1371 = bitcast double* %1370 to i64*
  %_rtP__UnitDelay_InitialCondition_o2663 = load i64, i64* %1371, align 1
  %1372 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1752, i64 0, i32 13
  %1373 = bitcast [2 x double]* %1372 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_o2663, i64* %1373, align 1
  %_rtP_1753 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1374 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1753, i64 0, i32 13
  %1375 = bitcast double* %1374 to i64*
  %_rtP__UnitDelay1_InitialCondition2664 = load i64, i64* %1375, align 1
  %_rtDW_1754 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1376 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1754, i64 0, i32 14
  %1377 = bitcast [2 x double]* %1376 to i64*
  store i64 %_rtP__UnitDelay1_InitialCondition2664, i64* %1377, align 1
  %_rtP_1755 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1378 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1755, i64 0, i32 12
  %1379 = bitcast double* %1378 to i64*
  %_rtP__UnitDelay_InitialCondition_o17562665 = load i64, i64* %1379, align 1
  %_rtDW_1757 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1380 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1757, i64 0, i32 13, i64 1
  %1381 = bitcast double* %1380 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_o17562665, i64* %1381, align 1
  %_rtP_1758 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1382 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1758, i64 0, i32 13
  %1383 = bitcast double* %1382 to i64*
  %_rtP__UnitDelay1_InitialCondition17592666 = load i64, i64* %1383, align 1
  %_rtDW_1760 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1384 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1760, i64 0, i32 14, i64 1
  %1385 = bitcast double* %1384 to i64*
  store i64 %_rtP__UnitDelay1_InitialCondition17592666, i64* %1385, align 1
  %_rtDW_1761 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1386 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1761, i64 0, i32 145
  store i8 1, i8* %1386, align 1
  br label %false168

true179:                                          ; preds = %false168
  %vm_ssIsSampleHitVar1_1764 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_1764, i32* %i_, align 4
  %1387 = icmp eq i32 %vm_ssIsSampleHitVar1_1764, 0
  br i1 %1387, label %false182, label %true181

false180:                                         ; preds = %true183, %false182, %false168
  %rtb_C_L_delta_e_1800 = load double, double* %rtb_C_L_delta_e_, align 8
  %_rtP_1801 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1388 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1801, i64 0, i32 192
  %_rtP__LimitHeighth1000ft_UpperSat = load double, double* %1388, align 1
  %1389 = fcmp ogt double %rtb_C_L_delta_e_1800, %_rtP__LimitHeighth1000ft_UpperSat
  %1390 = bitcast double %rtb_C_L_delta_e_1800 to i64
  %1391 = bitcast double %_rtP__LimitHeighth1000ft_UpperSat to i64
  br i1 %1389, label %true185, label %false186

true181:                                          ; preds = %true179
  %_rtB_1766 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1392 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1766, i64 0, i32 139
  %_rtB__Constant_o = load double, double* %1392, align 1
  %1393 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1766, i64 0, i32 67
  %_rtB__UnitConversion1768 = load double, double* %1393, align 1
  %1394 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1766, i64 0, i32 140
  %_rtB__dt1_k = load double, double* %1394, align 1
  %tmp175 = fdiv double %_rtB__UnitConversion1768, %_rtB__dt1_k
  %_rtP_1770 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1395 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1770, i64 0, i32 11
  %_rtP__dt_Gain_f = load double, double* %1395, align 1
  %tmp176 = fmul double %tmp175, %_rtP__dt_Gain_f
  %tmp177 = fsub double %_rtB__Constant_o, %tmp176
  store double %tmp177, double* %rtb_C_m_delta_e_, align 8
  %1396 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1762, i64 0, i32 13, i64 0
  %_rtDW__UnitDelay_DSTATE_cq_el = load double, double* %1396, align 1
  %tmp178 = fmul double %tmp177, %_rtDW__UnitDelay_DSTATE_cq_el
  %1397 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1766, i64 0, i32 136, i64 0
  store double %tmp178, double* %1397, align 1
  %_rtDW_1774 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1398 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1774, i64 0, i32 14, i64 0
  %1399 = bitcast double* %1398 to i64*
  %_rtDW__UnitDelay1_DSTATE_b_el2659 = load i64, i64* %1399, align 1
  %_rtB_1775 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1400 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1775, i64 0, i32 137
  %1401 = bitcast [2 x double]* %1400 to i64*
  store i64 %_rtDW__UnitDelay1_DSTATE_b_el2659, i64* %1401, align 1
  %rtb_C_m_delta_e_1776 = load double, double* %rtb_C_m_delta_e_, align 8
  %_rtDW_1777 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1402 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1777, i64 0, i32 13, i64 1
  %_rtDW__UnitDelay_DSTATE_cq_el1778 = load double, double* %1402, align 1
  %tmp179 = fmul double %rtb_C_m_delta_e_1776, %_rtDW__UnitDelay_DSTATE_cq_el1778
  %_rtB_1779 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1403 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1779, i64 0, i32 136, i64 1
  store double %tmp179, double* %1403, align 1
  %_rtDW_1780 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1404 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1780, i64 0, i32 14, i64 1
  %1405 = bitcast double* %1404 to i64*
  %_rtDW__UnitDelay1_DSTATE_b_el17812660 = load i64, i64* %1405, align 1
  %_rtB_1782 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1406 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1782, i64 0, i32 137, i64 1
  %1407 = bitcast double* %1406 to i64*
  store i64 %_rtDW__UnitDelay1_DSTATE_b_el17812660, i64* %1407, align 1
  br label %false182

false182:                                         ; preds = %true179, %true181
  %_rtB_1783 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1408 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1783, i64 0, i32 136, i64 0
  %_rtB__LugV2_l_el = load double, double* %1408, align 1
  %1409 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1783, i64 0, i32 123, i64 0
  %_rtB__Sum_a_el = load double, double* %1409, align 1
  %1410 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1783, i64 0, i32 137, i64 0
  %_rtB__UnitDelay1_i_el = load double, double* %1410, align 1
  %tmp180 = fsub double %_rtB__Sum_a_el, %_rtB__UnitDelay1_i_el
  %1411 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1783, i64 0, i32 140
  %_rtB__dt1_k1787 = load double, double* %1411, align 1
  %tmp181 = fdiv double %tmp180, %_rtB__dt1_k1787
  %tmp182 = fsub double %_rtB__LugV2_l_el, %tmp181
  %1412 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1783, i64 0, i32 138, i64 0
  store double %tmp182, double* %1412, align 1
  %_rtB_1789 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1413 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1789, i64 0, i32 136, i64 1
  %_rtB__LugV2_l_el1790 = load double, double* %1413, align 1
  %1414 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1789, i64 0, i32 123, i64 1
  %_rtB__Sum_a_el1792 = load double, double* %1414, align 1
  %1415 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1789, i64 0, i32 137, i64 1
  %_rtB__UnitDelay1_i_el1794 = load double, double* %1415, align 1
  %tmp183 = fsub double %_rtB__Sum_a_el1792, %_rtB__UnitDelay1_i_el1794
  %1416 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1789, i64 0, i32 140
  %_rtB__dt1_k1796 = load double, double* %1416, align 1
  %tmp184 = fdiv double %tmp183, %_rtB__dt1_k1796
  %tmp185 = fsub double %_rtB__LugV2_l_el1790, %tmp184
  %1417 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1789, i64 0, i32 138, i64 1
  store double %tmp185, double* %1417, align 1
  %vm_ssIsMajorTimeStepVar5_1798 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1418 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_1798, 0
  br i1 %1418, label %false180, label %true183

true183:                                          ; preds = %false182
  %_rtDW_1799 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1419 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1799, i64 0, i32 139
  call void @vm_srUpdateBC(i8* %1419)
  br label %false180

true185:                                          ; preds = %false180
  %1420 = bitcast double* %1388 to i64*
  %1421 = bitcast double* %rtb_C_m_delta_e_ to i64*
  store i64 %1391, i64* %1421, align 8
  br label %merge344

false186:                                         ; preds = %false180
  %1422 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1801, i64 0, i32 193
  %_rtP__LimitHeighth1000ft_LowerSat = load double, double* %1422, align 1
  %1423 = fcmp olt double %rtb_C_L_delta_e_1800, %_rtP__LimitHeighth1000ft_LowerSat
  %1424 = bitcast double %_rtP__LimitHeighth1000ft_LowerSat to i64
  br i1 %1423, label %true187, label %false188

true187:                                          ; preds = %false186
  %1425 = bitcast double* %1422 to i64*
  %1426 = bitcast double* %rtb_C_m_delta_e_ to i64*
  store i64 %1424, i64* %1426, align 8
  br label %merge344

false188:                                         ; preds = %false186
  %1427 = bitcast double* %rtb_C_L_delta_e_ to i64*
  %1428 = bitcast double* %rtb_C_m_delta_e_ to i64*
  store i64 %1390, i64* %1428, align 8
  br label %merge344

true189:                                          ; preds = %merge344
  %tmp188 = fsub double -0.000000e+00, %tmp187
  %1429 = call double @muDoubleScalarPower(double %tmp188, double 4.000000e-01)
  %tmp189 = fsub double -0.000000e+00, %1429
  br label %merge345

false190:                                         ; preds = %merge344
  %1430 = call double @muDoubleScalarPower(double %tmp187, double 4.000000e-01)
  br label %merge345

true191:                                          ; preds = %merge345
  %tmp194 = fsub double -0.000000e+00, %tmp193
  %1431 = call double @muDoubleScalarPower(double %tmp194, double 1.200000e+00)
  %tmp195 = fsub double -0.000000e+00, %1431
  br label %merge346

false192:                                         ; preds = %merge345
  %1432 = call double @muDoubleScalarPower(double %tmp193, double 1.200000e+00)
  br label %merge346

false194:                                         ; preds = %false198, %true199, %false204, %true197, %merge346
  %_rtDW_1852 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1433 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1852, i64 0, i32 142
  %_rtDW__Hvgwz_MODE1853 = load i8, i8* %1433, align 1
  %1434 = and i8 %_rtDW__Hvgwz_MODE1853, 1
  %1435 = icmp eq i8 %1434, 0
  br i1 %1435, label %false206, label %true205

true195:                                          ; preds = %merge346
  %1436 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1826, i64 0, i32 112
  %_rtB__Constant3_h1832 = load double, double* %1436, align 1
  %1437 = fcmp ogt double %_rtB__Constant3_h1832, 0.000000e+00
  %_rtDW_1841 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1438 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1841, i64 0, i32 142
  %_rtDW__Hvgwz_MODE1842 = load i8, i8* %1438, align 1
  %1439 = and i8 %_rtDW__Hvgwz_MODE1842, 1
  %1440 = icmp eq i8 %1439, 0
  br i1 %1437, label %true197, label %false198

true197:                                          ; preds = %true195
  br i1 %1440, label %true201, label %false194

false198:                                         ; preds = %true195
  br i1 %1440, label %false194, label %true199

true199:                                          ; preds = %false198
  %S_1834 = load i8*, i8** %S_, align 8
  call void @vm_ssSetBlockStateForSolverChangedAtMajorStep(i8* %S_1834)
  %_rtP_1835 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1441 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1835, i64 0, i32 27
  %1442 = bitcast double* %1441 to i64*
  %_rtP__vgw_Y02651 = load i64, i64* %1442, align 1
  %_rtB_1836 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1443 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1836, i64 0, i32 126
  %1444 = bitcast [2 x double]* %1443 to i64*
  store i64 %_rtP__vgw_Y02651, i64* %1444, align 1
  %_rtP_1837 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1445 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1837, i64 0, i32 27
  %1446 = bitcast double* %1445 to i64*
  %_rtP__vgw_Y018382652 = load i64, i64* %1446, align 1
  %_rtB_1839 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1447 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1839, i64 0, i32 126, i64 1
  %1448 = bitcast double* %1447 to i64*
  store i64 %_rtP__vgw_Y018382652, i64* %1448, align 1
  %_rtDW_1840 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1449 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1840, i64 0, i32 142
  store i8 0, i8* %1449, align 1
  br label %false194

true201:                                          ; preds = %true197
  %vm_ssGetTaskTimeVar8_1843 = load double, double* %vm_ssGetTaskTimeVar8_, align 8
  %vm_ssGetTStartVar9_1844 = load double, double* %vm_ssGetTStartVar9_, align 8
  %1450 = fcmp une double %vm_ssGetTaskTimeVar8_1843, %vm_ssGetTStartVar9_1844
  br i1 %1450, label %true203, label %false204

true203:                                          ; preds = %true201
  %S_1845 = load i8*, i8** %S_, align 8
  call void @vm_ssSetBlockStateForSolverChangedAtMajorStep(i8* %S_1845)
  %_rtP_1846.pre = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %_rtDW_1847.pre = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  br label %false204

false204:                                         ; preds = %true203, %true201
  %_rtDW_1847 = phi %DW_X8_T.44* [ %_rtDW_1847.pre, %true203 ], [ %_rtDW_1841, %true201 ]
  %_rtP_1846 = phi %P_X8_T.48* [ %_rtP_1846.pre, %true203 ], [ %_rtP_1822, %true201 ]
  %1451 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1846, i64 0, i32 30
  %1452 = bitcast double* %1451 to i64*
  %_rtP__UnitDelay_InitialCondition_l2653 = load i64, i64* %1452, align 1
  %1453 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1847, i64 0, i32 9
  %1454 = bitcast [2 x double]* %1453 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_l2653, i64* %1454, align 1
  %_rtP_1848 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1455 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1848, i64 0, i32 30
  %1456 = bitcast double* %1455 to i64*
  %_rtP__UnitDelay_InitialCondition_l18492654 = load i64, i64* %1456, align 1
  %_rtDW_1850 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1457 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1850, i64 0, i32 9, i64 1
  %1458 = bitcast double* %1457 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_l18492654, i64* %1458, align 1
  %_rtDW_1851 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1459 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1851, i64 0, i32 142
  store i8 1, i8* %1459, align 1
  br label %false194

true205:                                          ; preds = %false194
  %_rtB_1854 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1460 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1854, i64 0, i32 67
  %_rtB__UnitConversion1855 = load double, double* %1460, align 1
  %rtb_TriggerWave_1856 = load double, double* %rtb_TriggerWave_, align 8
  %tmp199 = fdiv double %_rtB__UnitConversion1855, %rtb_TriggerWave_1856
  store double %tmp199, double* %rtb_TriggerWave_, align 8
  %_rtB__UnitConversion1858 = load double, double* %1460, align 1
  %rtb_C_Y_delta_r_1859 = load double, double* %rtb_C_Y_delta_r_, align 8
  %tmp200 = fdiv double %_rtB__UnitConversion1858, %rtb_C_Y_delta_r_1859
  store double %tmp200, double* %rtb_u2_idx_2_, align 8
  %_rtP_1860 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1461 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1860, i64 0, i32 28
  %_rtP__u_Gain_ee = load double, double* %1461, align 1
  %tmp201 = fmul double %_rtP__u_Gain_ee, %tmp199
  %1462 = call double @muDoubleScalarSqrt(double %tmp201)
  %_rtB_1862 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1463 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1862, i64 0, i32 66, i64 1
  %_rtB__Product_n_el1863 = load double, double* %1463, align 1
  %tmp202 = fmul double %1462, %_rtB__Product_n_el1863
  %rtb_C_m_delta_e_1864 = load double, double* %rtb_C_m_delta_e_, align 8
  %tmp203 = fmul double %tmp202, %rtb_C_m_delta_e_1864
  store double %tmp203, double* %1908, align 8
  %1464 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1862, i64 0, i32 127
  %_rtB__Constant_k = load double, double* %1464, align 1
  %_rtP_1866 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1465 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1866, i64 0, i32 29
  %_rtP__dt_Gain_fh = load double, double* %1465, align 1
  %rtb_TriggerWave_1867 = load double, double* %rtb_TriggerWave_, align 8
  %tmp204 = fmul double %_rtP__dt_Gain_fh, %rtb_TriggerWave_1867
  %tmp205 = fsub double %_rtB__Constant_k, %tmp204
  store double %tmp205, double* %rtb_TriggerWave_, align 8
  %vm_ssIsSampleHitVar1_1868 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_1868, i32* %i_, align 4
  %1466 = icmp eq i32 %vm_ssIsSampleHitVar1_1868, 0
  br i1 %1466, label %false208, label %true207

false206:                                         ; preds = %true209, %false208, %false194
  %vm_ssIsSampleHitVar1_1895 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_1895, i32* %i_, align 4
  %1467 = icmp eq i32 %vm_ssIsSampleHitVar1_1895, 0
  %vm_ssIsMajorTimeStepVar5_1897 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1468 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_1897, 0
  %or.cond2915 = or i1 %1467, %1468
  br i1 %or.cond2915, label %false212, label %true213

true207:                                          ; preds = %true205
  %_rtDW_1870 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1469 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1870, i64 0, i32 9, i64 0
  %1470 = bitcast double* %1469 to i64*
  %_rtDW__UnitDelay_DSTATE_k_el2649 = load i64, i64* %1470, align 1
  %1471 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1862, i64 0, i32 125
  %1472 = bitcast [2 x double]* %1471 to i64*
  store i64 %_rtDW__UnitDelay_DSTATE_k_el2649, i64* %1472, align 1
  %_rtDW_1872 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1473 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1872, i64 0, i32 9, i64 1
  %1474 = bitcast double* %1473 to i64*
  %_rtDW__UnitDelay_DSTATE_k_el18732650 = load i64, i64* %1474, align 1
  %_rtB_1874 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1475 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1874, i64 0, i32 125, i64 1
  %1476 = bitcast double* %1475 to i64*
  store i64 %_rtDW__UnitDelay_DSTATE_k_el18732650, i64* %1476, align 1
  %rtb_TriggerWave_1875.pre = load double, double* %rtb_TriggerWave_, align 8
  %_rtB_1876.pre = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %frac__el1877.pre = load double, double* %1908, align 8
  br label %false208

false208:                                         ; preds = %true205, %true207
  %frac__el1877 = phi double [ %tmp203, %true205 ], [ %frac__el1877.pre, %true207 ]
  %_rtB_1878 = phi %B_X8_T.43* [ %_rtB_1862, %true205 ], [ %_rtB_1876.pre, %true207 ]
  %rtb_TriggerWave_1875 = phi double [ %tmp205, %true205 ], [ %rtb_TriggerWave_1875.pre, %true207 ]
  %1477 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1878, i64 0, i32 125, i64 0
  %_rtB__UnitDelay_c_el = load double, double* %1477, align 1
  %tmp206 = fmul double %rtb_TriggerWave_1875, %_rtB__UnitDelay_c_el
  %tmp207 = fadd double %tmp206, %frac__el1877
  %1478 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1878, i64 0, i32 126, i64 0
  store double %tmp207, double* %1478, align 1
  %_rtB_1879 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1479 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1879, i64 0, i32 127
  %_rtB__Constant_k1880 = load double, double* %1479, align 1
  %_rtP_1881 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1480 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1881, i64 0, i32 29
  %_rtP__dt_Gain_fh1882 = load double, double* %1480, align 1
  %rtb_u2_idx_2_1883 = load double, double* %rtb_u2_idx_2_, align 8
  %tmp208 = fmul double %_rtP__dt_Gain_fh1882, %rtb_u2_idx_2_1883
  %tmp209 = fsub double %_rtB__Constant_k1880, %tmp208
  %1481 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1879, i64 0, i32 125, i64 1
  %_rtB__UnitDelay_c_el1885 = load double, double* %1481, align 1
  %tmp210 = fmul double %tmp209, %_rtB__UnitDelay_c_el1885
  %1482 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1881, i64 0, i32 28
  %_rtP__u_Gain_ee1887 = load double, double* %1482, align 1
  %tmp211 = fmul double %_rtP__u_Gain_ee1887, %rtb_u2_idx_2_1883
  %1483 = call double @muDoubleScalarSqrt(double %tmp211)
  %_rtB_1889 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1484 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1889, i64 0, i32 66, i64 1
  %_rtB__Product_n_el1890 = load double, double* %1484, align 1
  %tmp212 = fmul double %1483, %_rtB__Product_n_el1890
  %rtb_C_D_delta_e_1891 = load double, double* %rtb_C_D_delta_e_, align 8
  %tmp213 = fmul double %tmp212, %rtb_C_D_delta_e_1891
  %tmp214 = fadd double %tmp210, %tmp213
  %1485 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1889, i64 0, i32 126, i64 1
  store double %tmp214, double* %1485, align 1
  %vm_ssIsMajorTimeStepVar5_1893 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1486 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_1893, 0
  br i1 %1486, label %false206, label %true209

true209:                                          ; preds = %false208
  %_rtDW_1894 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1487 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1894, i64 0, i32 136
  call void @vm_srUpdateBC(i8* %1487)
  br label %false206

false212:                                         ; preds = %false216, %true217, %false222, %true215, %false206
  %_rtDW_1923 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1488 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1923, i64 0, i32 144
  %_rtDW__Hrgw_MODE1924 = load i8, i8* %1488, align 1
  %1489 = and i8 %_rtDW__Hrgw_MODE1924, 1
  %1490 = icmp eq i8 %1489, 0
  br i1 %1490, label %false224, label %true223

true213:                                          ; preds = %false206
  %_rtB_1898 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1491 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1898, i64 0, i32 109
  %_rtB__Constant3 = load double, double* %1491, align 1
  %1492 = fcmp ogt double %_rtB__Constant3, 0.000000e+00
  %_rtDW_1907 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1493 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1907, i64 0, i32 144
  %_rtDW__Hrgw_MODE1908 = load i8, i8* %1493, align 1
  %1494 = and i8 %_rtDW__Hrgw_MODE1908, 1
  %1495 = icmp eq i8 %1494, 0
  br i1 %1492, label %true215, label %false216

true215:                                          ; preds = %true213
  br i1 %1495, label %true219, label %false212

false216:                                         ; preds = %true213
  br i1 %1495, label %false212, label %true217

true217:                                          ; preds = %false216
  %S_1900 = load i8*, i8** %S_, align 8
  call void @vm_ssSetBlockStateForSolverChangedAtMajorStep(i8* %S_1900)
  %_rtP_1901 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1496 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1901, i64 0, i32 16
  %1497 = bitcast double* %1496 to i64*
  %_rtP__rgw_Y02643 = load i64, i64* %1497, align 1
  %_rtB_1902 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1498 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1902, i64 0, i32 133
  %1499 = bitcast [2 x double]* %1498 to i64*
  store i64 %_rtP__rgw_Y02643, i64* %1499, align 1
  %_rtP_1903 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1500 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1903, i64 0, i32 16
  %1501 = bitcast double* %1500 to i64*
  %_rtP__rgw_Y019042644 = load i64, i64* %1501, align 1
  %_rtB_1905 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1502 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1905, i64 0, i32 133, i64 1
  %1503 = bitcast double* %1502 to i64*
  store i64 %_rtP__rgw_Y019042644, i64* %1503, align 1
  %_rtDW_1906 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1504 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1906, i64 0, i32 144
  store i8 0, i8* %1504, align 1
  br label %false212

true219:                                          ; preds = %true215
  %vm_ssGetTaskTimeVar8_1909 = load double, double* %vm_ssGetTaskTimeVar8_, align 8
  %vm_ssGetTStartVar9_1910 = load double, double* %vm_ssGetTStartVar9_, align 8
  %1505 = fcmp une double %vm_ssGetTaskTimeVar8_1909, %vm_ssGetTStartVar9_1910
  br i1 %1505, label %true221, label %false222

true221:                                          ; preds = %true219
  %S_1911 = load i8*, i8** %S_, align 8
  call void @vm_ssSetBlockStateForSolverChangedAtMajorStep(i8* %S_1911)
  %_rtDW_1913.pre = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  br label %false222

false222:                                         ; preds = %true221, %true219
  %_rtDW_1913 = phi %DW_X8_T.44* [ %_rtDW_1913.pre, %true221 ], [ %_rtDW_1907, %true219 ]
  %_rtP_1912 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1506 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1912, i64 0, i32 18
  %1507 = bitcast double* %1506 to i64*
  %_rtP__UnitDelay_InitialCondition_p2645 = load i64, i64* %1507, align 1
  %1508 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1913, i64 0, i32 11
  %1509 = bitcast [2 x double]* %1508 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_p2645, i64* %1509, align 1
  %_rtP_1914 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1510 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1914, i64 0, i32 19
  %1511 = bitcast double* %1510 to i64*
  %_rtP__UnitDelay1_InitialCondition_n2646 = load i64, i64* %1511, align 1
  %_rtDW_1915 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1512 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1915, i64 0, i32 12
  %1513 = bitcast [2 x double]* %1512 to i64*
  store i64 %_rtP__UnitDelay1_InitialCondition_n2646, i64* %1513, align 1
  %_rtP_1916 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1514 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1916, i64 0, i32 18
  %1515 = bitcast double* %1514 to i64*
  %_rtP__UnitDelay_InitialCondition_p19172647 = load i64, i64* %1515, align 1
  %_rtDW_1918 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1516 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1918, i64 0, i32 11, i64 1
  %1517 = bitcast double* %1516 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_p19172647, i64* %1517, align 1
  %_rtP_1919 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1518 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1919, i64 0, i32 19
  %1519 = bitcast double* %1518 to i64*
  %_rtP__UnitDelay1_InitialCondition_n19202648 = load i64, i64* %1519, align 1
  %_rtDW_1921 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1520 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1921, i64 0, i32 12, i64 1
  %1521 = bitcast double* %1520 to i64*
  store i64 %_rtP__UnitDelay1_InitialCondition_n19202648, i64* %1521, align 1
  %_rtDW_1922 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1522 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1922, i64 0, i32 144
  store i8 1, i8* %1522, align 1
  br label %false212

true223:                                          ; preds = %false212
  %vm_ssIsSampleHitVar1_1925 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_1925, i32* %i_, align 4
  %1523 = icmp eq i32 %vm_ssIsSampleHitVar1_1925, 0
  br i1 %1523, label %false226, label %true225

false224:                                         ; preds = %true227, %false226, %false212
  %vm_ssIsSampleHitVar1_1961 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_1961, i32* %i_, align 4
  %1524 = icmp eq i32 %vm_ssIsSampleHitVar1_1961, 0
  %vm_ssIsMajorTimeStepVar5_1963 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1525 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_1963, 0
  %or.cond2917 = or i1 %1524, %1525
  br i1 %or.cond2917, label %false230, label %true231

true225:                                          ; preds = %true223
  %_rtB_1927 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1526 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1927, i64 0, i32 134
  %_rtB__Constant_c = load double, double* %1526, align 1
  %1527 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1927, i64 0, i32 67
  %_rtB__UnitConversion1929 = load double, double* %1527, align 1
  %1528 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1927, i64 0, i32 135
  %_rtB__dt1 = load double, double* %1528, align 1
  %tmp215 = fdiv double %_rtB__UnitConversion1929, %_rtB__dt1
  %_rtP_1931 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1529 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1931, i64 0, i32 17
  %_rtP__dt_Gain_i = load double, double* %1529, align 1
  %tmp216 = fmul double %tmp215, %_rtP__dt_Gain_i
  %tmp217 = fsub double %_rtB__Constant_c, %tmp216
  store double %tmp217, double* %rtb_C_Y_delta_r_, align 8
  %1530 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1923, i64 0, i32 11, i64 0
  %_rtDW__UnitDelay_DSTATE_a_el = load double, double* %1530, align 1
  %tmp218 = fmul double %tmp217, %_rtDW__UnitDelay_DSTATE_a_el
  %1531 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1927, i64 0, i32 131, i64 0
  store double %tmp218, double* %1531, align 1
  %_rtDW_1935 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1532 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1935, i64 0, i32 12, i64 0
  %1533 = bitcast double* %1532 to i64*
  %_rtDW__UnitDelay1_DSTATE_l_el2641 = load i64, i64* %1533, align 1
  %_rtB_1936 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1534 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1936, i64 0, i32 132
  %1535 = bitcast [2 x double]* %1534 to i64*
  store i64 %_rtDW__UnitDelay1_DSTATE_l_el2641, i64* %1535, align 1
  %rtb_C_Y_delta_r_1937 = load double, double* %rtb_C_Y_delta_r_, align 8
  %_rtDW_1938 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1536 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1938, i64 0, i32 11, i64 1
  %_rtDW__UnitDelay_DSTATE_a_el1939 = load double, double* %1536, align 1
  %tmp219 = fmul double %rtb_C_Y_delta_r_1937, %_rtDW__UnitDelay_DSTATE_a_el1939
  %_rtB_1940 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1537 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1940, i64 0, i32 131, i64 1
  store double %tmp219, double* %1537, align 1
  %_rtDW_1941 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1538 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1941, i64 0, i32 12, i64 1
  %1539 = bitcast double* %1538 to i64*
  %_rtDW__UnitDelay1_DSTATE_l_el19422642 = load i64, i64* %1539, align 1
  %_rtB_1943 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1540 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1943, i64 0, i32 132, i64 1
  %1541 = bitcast double* %1540 to i64*
  store i64 %_rtDW__UnitDelay1_DSTATE_l_el19422642, i64* %1541, align 1
  br label %false226

false226:                                         ; preds = %true223, %true225
  %_rtB_1944 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1542 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1944, i64 0, i32 126, i64 0
  %_rtB__Sum_g_el = load double, double* %1542, align 1
  %1543 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1944, i64 0, i32 132, i64 0
  %_rtB__UnitDelay1_el = load double, double* %1543, align 1
  %tmp220 = fsub double %_rtB__Sum_g_el, %_rtB__UnitDelay1_el
  %1544 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1944, i64 0, i32 135
  %_rtB__dt11947 = load double, double* %1544, align 1
  %tmp221 = fdiv double %tmp220, %_rtB__dt11947
  %1545 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1944, i64 0, i32 131, i64 0
  %_rtB__LugV2_el = load double, double* %1545, align 1
  %tmp222 = fadd double %tmp221, %_rtB__LugV2_el
  %1546 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1944, i64 0, i32 133, i64 0
  store double %tmp222, double* %1546, align 1
  %_rtB_1950 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1547 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1950, i64 0, i32 126, i64 1
  %_rtB__Sum_g_el1951 = load double, double* %1547, align 1
  %1548 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1950, i64 0, i32 132, i64 1
  %_rtB__UnitDelay1_el1953 = load double, double* %1548, align 1
  %tmp223 = fsub double %_rtB__Sum_g_el1951, %_rtB__UnitDelay1_el1953
  %1549 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1950, i64 0, i32 135
  %_rtB__dt11955 = load double, double* %1549, align 1
  %tmp224 = fdiv double %tmp223, %_rtB__dt11955
  %1550 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1950, i64 0, i32 131, i64 1
  %_rtB__LugV2_el1957 = load double, double* %1550, align 1
  %tmp225 = fadd double %tmp224, %_rtB__LugV2_el1957
  %1551 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1950, i64 0, i32 133, i64 1
  store double %tmp225, double* %1551, align 1
  %vm_ssIsMajorTimeStepVar5_1959 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1552 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_1959, 0
  br i1 %1552, label %false224, label %true227

true227:                                          ; preds = %false226
  %_rtDW_1960 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1553 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1960, i64 0, i32 138
  call void @vm_srUpdateBC(i8* %1553)
  br label %false224

false230:                                         ; preds = %false234, %true235, %false240, %true233, %false224
  %_rtDW_1985 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1554 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1985, i64 0, i32 143
  %_rtDW__Hugwz_MODE1986 = load i8, i8* %1554, align 1
  %1555 = and i8 %_rtDW__Hugwz_MODE1986, 1
  %1556 = icmp eq i8 %1555, 0
  br i1 %1556, label %false242, label %true241

true231:                                          ; preds = %false224
  %_rtB_1964 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1557 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1964, i64 0, i32 112
  %_rtB__Constant3_h1965 = load double, double* %1557, align 1
  %1558 = fcmp ogt double %_rtB__Constant3_h1965, 0.000000e+00
  %_rtDW_1974 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1559 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1974, i64 0, i32 143
  %_rtDW__Hugwz_MODE1975 = load i8, i8* %1559, align 1
  %1560 = and i8 %_rtDW__Hugwz_MODE1975, 1
  %1561 = icmp eq i8 %1560, 0
  br i1 %1558, label %true233, label %false234

true233:                                          ; preds = %true231
  br i1 %1561, label %true237, label %false230

false234:                                         ; preds = %true231
  br i1 %1561, label %false230, label %true235

true235:                                          ; preds = %false234
  %S_1967 = load i8*, i8** %S_, align 8
  call void @vm_ssSetBlockStateForSolverChangedAtMajorStep(i8* %S_1967)
  %_rtP_1968 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1562 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1968, i64 0, i32 22
  %1563 = bitcast double* %1562 to i64*
  %_rtP__ugw_Y02637 = load i64, i64* %1563, align 1
  %_rtB_1969 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1564 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1969, i64 0, i32 129
  %1565 = bitcast [2 x double]* %1564 to i64*
  store i64 %_rtP__ugw_Y02637, i64* %1565, align 1
  %_rtP_1970 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1566 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1970, i64 0, i32 22
  %1567 = bitcast double* %1566 to i64*
  %_rtP__ugw_Y019712638 = load i64, i64* %1567, align 1
  %_rtB_1972 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1568 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1972, i64 0, i32 129, i64 1
  %1569 = bitcast double* %1568 to i64*
  store i64 %_rtP__ugw_Y019712638, i64* %1569, align 1
  %_rtDW_1973 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1570 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1973, i64 0, i32 143
  store i8 0, i8* %1570, align 1
  br label %false230

true237:                                          ; preds = %true233
  %vm_ssGetTaskTimeVar8_1976 = load double, double* %vm_ssGetTaskTimeVar8_, align 8
  %vm_ssGetTStartVar9_1977 = load double, double* %vm_ssGetTStartVar9_, align 8
  %1571 = fcmp une double %vm_ssGetTaskTimeVar8_1976, %vm_ssGetTStartVar9_1977
  br i1 %1571, label %true239, label %false240

true239:                                          ; preds = %true237
  %S_1978 = load i8*, i8** %S_, align 8
  call void @vm_ssSetBlockStateForSolverChangedAtMajorStep(i8* %S_1978)
  %_rtDW_1980.pre = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  br label %false240

false240:                                         ; preds = %true239, %true237
  %_rtDW_1980 = phi %DW_X8_T.44* [ %_rtDW_1980.pre, %true239 ], [ %_rtDW_1974, %true237 ]
  %_rtP_1979 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1572 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1979, i64 0, i32 25
  %1573 = bitcast double* %1572 to i64*
  %_rtP__UnitDelay_InitialCondition_e2639 = load i64, i64* %1573, align 1
  %1574 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1980, i64 0, i32 10
  %1575 = bitcast [2 x double]* %1574 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_e2639, i64* %1575, align 1
  %_rtP_1981 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1576 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1981, i64 0, i32 25
  %1577 = bitcast double* %1576 to i64*
  %_rtP__UnitDelay_InitialCondition_e19822640 = load i64, i64* %1577, align 1
  %_rtDW_1983 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1578 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1983, i64 0, i32 10, i64 1
  %1579 = bitcast double* %1578 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_e19822640, i64* %1579, align 1
  %_rtDW_1984 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1580 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1984, i64 0, i32 143
  store i8 1, i8* %1580, align 1
  br label %false230

true241:                                          ; preds = %false230
  %_rtB_1987 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1581 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1987, i64 0, i32 67
  %_rtB__UnitConversion1988 = load double, double* %1581, align 1
  %tmp226 = fdiv double %_rtB__UnitConversion1988, %tmp196
  store double %tmp226, double* %rtb_TriggerWave_, align 8
  %_rtB__UnitConversion1991 = load double, double* %1581, align 1
  %1582 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1987, i64 0, i32 113
  %_rtB__UnitConversion_j1993 = load double, double* %1582, align 1
  %tmp227 = fdiv double %_rtB__UnitConversion1991, %_rtB__UnitConversion_j1993
  store double %tmp227, double* %rtb_C_Y_delta_r_, align 8
  %_rtP_1994 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1583 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1994, i64 0, i32 23
  %_rtP__u_Gain_e = load double, double* %1583, align 1
  %tmp228 = fmul double %_rtP__u_Gain_e, %tmp226
  %1584 = call double @muDoubleScalarSqrt(double %tmp228)
  %_rtB_1996 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1585 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1996, i64 0, i32 66, i64 0
  %_rtB__Product_n_el1997 = load double, double* %1585, align 1
  %tmp229 = fmul double %1584, %_rtB__Product_n_el1997
  %rtb_C_m_delta_e_1998 = load double, double* %rtb_C_m_delta_e_, align 8
  %tmp230 = fmul double %tmp229, %rtb_C_m_delta_e_1998
  store double %tmp230, double* %1908, align 8
  %1586 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1996, i64 0, i32 130
  %_rtB__Constant_i5 = load double, double* %1586, align 1
  %_rtP_2000 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1587 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2000, i64 0, i32 24
  %_rtP__dt_Gain_fn = load double, double* %1587, align 1
  %rtb_TriggerWave_2001 = load double, double* %rtb_TriggerWave_, align 8
  %tmp231 = fmul double %_rtP__dt_Gain_fn, %rtb_TriggerWave_2001
  %tmp232 = fsub double %_rtB__Constant_i5, %tmp231
  store double %tmp232, double* %rtb_TriggerWave_, align 8
  %vm_ssIsSampleHitVar1_2002 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_2002, i32* %i_, align 4
  %1588 = icmp eq i32 %vm_ssIsSampleHitVar1_2002, 0
  br i1 %1588, label %false244, label %true243

false242:                                         ; preds = %true245, %false244, %false230
  %_rtB_2029 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1589 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2029, i64 0, i32 13
  %_rtB__Product2030 = load double, double* %1589, align 1
  %tmp242 = fmul double %_rtB__Product2030, %_rtB__Product2030
  %1590 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2029, i64 0, i32 14
  %_rtB__Product12034 = load double, double* %1590, align 1
  %tmp243 = fmul double %_rtB__Product12034, %_rtB__Product12034
  %tmp244 = fadd double %tmp242, %tmp243
  %1591 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2029, i64 0, i32 15
  %_rtB__Product22038 = load double, double* %1591, align 1
  %tmp245 = fmul double %_rtB__Product22038, %_rtB__Product22038
  %tmp246 = fadd double %tmp244, %tmp245
  %1592 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2029, i64 0, i32 16
  %_rtB__Product32042 = load double, double* %1592, align 1
  %tmp247 = fmul double %_rtB__Product32042, %_rtB__Product32042
  %tmp248 = fadd double %tmp246, %tmp247
  %1593 = call double @muDoubleScalarSqrt(double %tmp248)
  store double %1593, double* %rtb_C_Y_delta_r_, align 8
  %_rtB_2045 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1594 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2045, i64 0, i32 13
  %_rtB__Product2046 = load double, double* %1594, align 1
  %tmp249 = fdiv double %_rtB__Product2046, %1593
  store double %tmp249, double* %rtb_C_D_delta_e_, align 8
  %1595 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2045, i64 0, i32 14
  %_rtB__Product12049 = load double, double* %1595, align 1
  %tmp250 = fdiv double %_rtB__Product12049, %1593
  store double %tmp250, double* %rtb_C_m_delta_e_, align 8
  %1596 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2045, i64 0, i32 15
  %_rtB__Product22052 = load double, double* %1596, align 1
  %tmp251 = fdiv double %_rtB__Product22052, %1593
  store double %tmp251, double* %rtb_C_Y_delta_a_, align 8
  %1597 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2045, i64 0, i32 16
  %_rtB__Product32055 = load double, double* %1597, align 1
  %tmp252 = fdiv double %_rtB__Product32055, %1593
  store double %tmp252, double* %rtb_C_Y_delta_r_, align 8
  %tmp253 = fmul double %tmp249, %tmp249
  %tmp254 = fmul double %tmp250, %tmp250
  %tmp255 = fadd double %tmp253, %tmp254
  %tmp256 = fmul double %tmp251, %tmp251
  %tmp257 = fsub double %tmp255, %tmp256
  %tmp258 = fmul double %tmp252, %tmp252
  %tmp259 = fsub double %tmp257, %tmp258
  %1598 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 0
  store double %tmp259, double* %1598, align 8
  %tmp260 = fmul double %tmp250, %tmp251
  %tmp261 = fmul double %tmp252, %tmp249
  %tmp262 = fsub double %tmp260, %tmp261
  %_rtP_2069 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1599 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2069, i64 0, i32 195
  %_rtP__Gain_Gain_mq = load double, double* %1599, align 1
  %tmp263 = fmul double %tmp262, %_rtP__Gain_Gain_mq
  %1600 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 1
  store double %tmp263, double* %1600, align 8
  %tmp264 = fmul double %tmp249, %tmp251
  %tmp265 = fmul double %tmp250, %tmp252
  %tmp266 = fadd double %tmp264, %tmp265
  %1601 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2069, i64 0, i32 196
  %_rtP__Gain_Gain_fk = load double, double* %1601, align 1
  %tmp267 = fmul double %tmp266, %_rtP__Gain_Gain_fk
  %1602 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 2
  store double %tmp267, double* %1602, align 8
  %tmp270 = fadd double %tmp261, %tmp260
  %1603 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2069, i64 0, i32 197
  %_rtP__Gain_Gain_cm = load double, double* %1603, align 1
  %tmp271 = fmul double %tmp270, %_rtP__Gain_Gain_cm
  %1604 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 3
  store double %tmp271, double* %1604, align 8
  %tmp274 = fsub double %tmp253, %tmp254
  %tmp276 = fadd double %tmp274, %tmp256
  %tmp278 = fsub double %tmp276, %tmp258
  %1605 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 4
  store double %tmp278, double* %1605, align 8
  %tmp279 = fmul double %tmp252, %tmp251
  %tmp280 = fmul double %tmp249, %tmp250
  %tmp281 = fsub double %tmp279, %tmp280
  %1606 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2069, i64 0, i32 198
  %_rtP__Gain_Gain_l = load double, double* %1606, align 1
  %tmp282 = fmul double %tmp281, %_rtP__Gain_Gain_l
  %1607 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 5
  store double %tmp282, double* %1607, align 8
  %tmp285 = fsub double %tmp265, %tmp264
  %1608 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2069, i64 0, i32 199
  %_rtP__Gain_Gain_o = load double, double* %1608, align 1
  %tmp286 = fmul double %tmp285, %_rtP__Gain_Gain_o
  %1609 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 6
  store double %tmp286, double* %1609, align 8
  %tmp289 = fadd double %tmp280, %tmp279
  %1610 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2069, i64 0, i32 200
  %_rtP__Gain_Gain_jh = load double, double* %1610, align 1
  %tmp290 = fmul double %tmp289, %_rtP__Gain_Gain_jh
  %1611 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 7
  store double %tmp290, double* %1611, align 8
  %tmp295 = fsub double %tmp274, %tmp256
  %tmp297 = fadd double %tmp295, %tmp258
  %1612 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 8
  store double %tmp297, double* %1612, align 8
  %vm_ssIsMajorTimeStepVar5_2111 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1613 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_2111, 0
  br i1 %1613, label %false248, label %true247

true243:                                          ; preds = %true241
  %_rtDW_2004 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1614 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2004, i64 0, i32 10, i64 0
  %1615 = bitcast double* %1614 to i64*
  %_rtDW__UnitDelay_DSTATE_j_el2635 = load i64, i64* %1615, align 1
  %1616 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1996, i64 0, i32 128
  %1617 = bitcast [2 x double]* %1616 to i64*
  store i64 %_rtDW__UnitDelay_DSTATE_j_el2635, i64* %1617, align 1
  %_rtDW_2006 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1618 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2006, i64 0, i32 10, i64 1
  %1619 = bitcast double* %1618 to i64*
  %_rtDW__UnitDelay_DSTATE_j_el20072636 = load i64, i64* %1619, align 1
  %_rtB_2008 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1620 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2008, i64 0, i32 128, i64 1
  %1621 = bitcast double* %1620 to i64*
  store i64 %_rtDW__UnitDelay_DSTATE_j_el20072636, i64* %1621, align 1
  %rtb_TriggerWave_2009.pre = load double, double* %rtb_TriggerWave_, align 8
  %_rtB_2010.pre = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %frac__el2011.pre = load double, double* %1908, align 8
  br label %false244

false244:                                         ; preds = %true241, %true243
  %frac__el2011 = phi double [ %tmp230, %true241 ], [ %frac__el2011.pre, %true243 ]
  %_rtB_2012 = phi %B_X8_T.43* [ %_rtB_1996, %true241 ], [ %_rtB_2010.pre, %true243 ]
  %rtb_TriggerWave_2009 = phi double [ %tmp232, %true241 ], [ %rtb_TriggerWave_2009.pre, %true243 ]
  %1622 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2012, i64 0, i32 128, i64 0
  %_rtB__UnitDelay_m_el = load double, double* %1622, align 1
  %tmp233 = fmul double %rtb_TriggerWave_2009, %_rtB__UnitDelay_m_el
  %tmp234 = fadd double %tmp233, %frac__el2011
  %1623 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2012, i64 0, i32 129, i64 0
  store double %tmp234, double* %1623, align 1
  %_rtB_2013 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1624 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2013, i64 0, i32 130
  %_rtB__Constant_i52014 = load double, double* %1624, align 1
  %_rtP_2015 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1625 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2015, i64 0, i32 24
  %_rtP__dt_Gain_fn2016 = load double, double* %1625, align 1
  %rtb_C_Y_delta_r_2017 = load double, double* %rtb_C_Y_delta_r_, align 8
  %tmp235 = fmul double %_rtP__dt_Gain_fn2016, %rtb_C_Y_delta_r_2017
  %tmp236 = fsub double %_rtB__Constant_i52014, %tmp235
  %1626 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2013, i64 0, i32 128, i64 1
  %_rtB__UnitDelay_m_el2019 = load double, double* %1626, align 1
  %tmp237 = fmul double %tmp236, %_rtB__UnitDelay_m_el2019
  %1627 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2015, i64 0, i32 23
  %_rtP__u_Gain_e2021 = load double, double* %1627, align 1
  %tmp238 = fmul double %_rtP__u_Gain_e2021, %rtb_C_Y_delta_r_2017
  %1628 = call double @muDoubleScalarSqrt(double %tmp238)
  %_rtB_2023 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1629 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2023, i64 0, i32 66, i64 0
  %_rtB__Product_n_el2024 = load double, double* %1629, align 1
  %tmp239 = fmul double %1628, %_rtB__Product_n_el2024
  %rtb_C_D_delta_e_2025 = load double, double* %rtb_C_D_delta_e_, align 8
  %tmp240 = fmul double %tmp239, %rtb_C_D_delta_e_2025
  %tmp241 = fadd double %tmp237, %tmp240
  %1630 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2023, i64 0, i32 129, i64 1
  store double %tmp241, double* %1630, align 1
  %vm_ssIsMajorTimeStepVar5_2027 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1631 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_2027, 0
  br i1 %1631, label %false242, label %true245

true245:                                          ; preds = %false244
  %_rtDW_2028 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1632 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2028, i64 0, i32 137
  call void @vm_srUpdateBC(i8* %1632)
  br label %false242

true247:                                          ; preds = %false242
  %rtb_C_L_delta_e_2113 = load double, double* %rtb_C_L_delta_e_, align 8
  %1633 = fcmp ugt double %rtb_C_L_delta_e_2113, 1.000000e+03
  %1634 = fcmp ult double %rtb_C_L_delta_e_2113, 2.000000e+03
  %. = select i1 %1634, i8 2, i8 1
  %storemerge2634 = select i1 %1633, i8 %., i8 0
  store i8 %storemerge2634, i8* %rtAction_, align 1
  %_rtDW_2116 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1635 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2116, i64 0, i32 127
  store i8 %storemerge2634, i8* %1635, align 1
  br label %merge352

false248:                                         ; preds = %false242
  %_rtDW_2112 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1636 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2112, i64 0, i32 127
  %_rtDW__ifHeightMaxlowaltitudeelseifHeightMinisotropicaltitude_ActiveSubsystem = load i8, i8* %1636, align 1
  store i8 %_rtDW__ifHeightMaxlowaltitudeelseifHeightMinisotropicaltitude_ActiveSubsystem, i8* %rtAction_, align 1
  br label %merge352

case253:                                          ; preds = %merge352
  %_rtB_2118 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1637 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2118, i64 0, i32 133, i64 0
  %1638 = bitcast double* %1637 to i64*
  %_rtB__Sum1_el2631 = load i64, i64* %1638, align 1
  %1639 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 2
  %1640 = bitcast double* %1639 to i64*
  store i64 %_rtB__Sum1_el2631, i64* %1640, align 8
  %1641 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2118, i64 0, i32 106
  %_rtB__UnitConversion_e = load double, double* %1641, align 1
  call void @muDoubleScalarSinCos(double %_rtB__UnitConversion_e, double* nonnull %rtb_C_D_delta_e_, double* nonnull %rtb_C_m_delta_e_)
  %_rtB_2120 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1642 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2120, i64 0, i32 142, i64 0
  %_rtB__Sum_l_el = load double, double* %1642, align 1
  %rtb_C_m_delta_e_2121 = load double, double* %rtb_C_m_delta_e_, align 8
  %tmp298 = fmul double %_rtB__Sum_l_el, %rtb_C_m_delta_e_2121
  %rtb_C_D_delta_e_2122 = load double, double* %rtb_C_D_delta_e_, align 8
  %1643 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2120, i64 0, i32 138, i64 0
  %_rtB__Sum1_g_el = load double, double* %1643, align 1
  %tmp299 = fmul double %rtb_C_D_delta_e_2122, %_rtB__Sum1_g_el
  %tmp300 = fsub double %tmp298, %tmp299
  %1644 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 0
  store double %tmp300, double* %1644, align 8
  %_rtB__Sum1_g_el2125 = load double, double* %1643, align 1
  %tmp301 = fmul double %_rtB__Sum1_g_el2125, %rtb_C_m_delta_e_2121
  %_rtB__Sum_l_el2129 = load double, double* %1642, align 1
  %tmp302 = fmul double %rtb_C_D_delta_e_2122, %_rtB__Sum_l_el2129
  %tmp303 = fadd double %tmp301, %tmp302
  %1645 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 1
  store double %tmp303, double* %1645, align 8
  br label %merge353

case254:                                          ; preds = %merge352
  %_rtP_2158 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1646 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2158, i64 0, i32 37
  %_rtP__Gain_Gain = load double, double* %1646, align 1
  %_rtB_2159 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1647 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2159, i64 0, i32 142, i64 1
  %_rtB__Sum_l_el2160 = load double, double* %1647, align 1
  %tmp313 = fmul double %_rtP__Gain_Gain, %_rtB__Sum_l_el2160
  %1648 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2159, i64 0, i32 68, i64 0
  store double %tmp313, double* %1648, align 1
  %_rtP_2162 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1649 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2162, i64 0, i32 37
  %_rtP__Gain_Gain2163 = load double, double* %1649, align 1
  %_rtB_2164 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1650 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2164, i64 0, i32 138, i64 1
  %_rtB__Sum1_g_el2165 = load double, double* %1650, align 1
  %tmp314 = fmul double %_rtP__Gain_Gain2163, %_rtB__Sum1_g_el2165
  %1651 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2164, i64 0, i32 68, i64 1
  store double %tmp314, double* %1651, align 1
  %_rtP_2167 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1652 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2167, i64 0, i32 37
  %_rtP__Gain_Gain2168 = load double, double* %1652, align 1
  %_rtB_2169 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1653 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2169, i64 0, i32 133, i64 1
  %_rtB__Sum1_el2170 = load double, double* %1653, align 1
  %tmp315 = fmul double %_rtP__Gain_Gain2168, %_rtB__Sum1_el2170
  %1654 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2169, i64 0, i32 68, i64 2
  store double %tmp315, double* %1654, align 1
  %vm_ssIsMajorTimeStepVar5_2172 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1655 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_2172, 0
  br i1 %1655, label %default256, label %true261

case255:                                          ; preds = %merge352
  %_rtB_2174 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1656 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2174, i64 0, i32 106
  %_rtB__UnitConversion_e2175 = load double, double* %1656, align 1
  call void @muDoubleScalarSinCos(double %_rtB__UnitConversion_e2175, double* nonnull %rtb_C_D_delta_e_, double* nonnull %rtb_C_m_delta_e_)
  %_rtB_2176 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1657 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2176, i64 0, i32 142, i64 0
  %_rtB__Sum_l_el2177 = load double, double* %1657, align 1
  %rtb_C_m_delta_e_2178 = load double, double* %rtb_C_m_delta_e_, align 8
  %tmp316 = fmul double %_rtB__Sum_l_el2177, %rtb_C_m_delta_e_2178
  %rtb_C_D_delta_e_2179 = load double, double* %rtb_C_D_delta_e_, align 8
  %1658 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2176, i64 0, i32 138, i64 0
  %_rtB__Sum1_g_el2181 = load double, double* %1658, align 1
  %tmp317 = fmul double %rtb_C_D_delta_e_2179, %_rtB__Sum1_g_el2181
  %tmp318 = fsub double %tmp316, %tmp317
  %1659 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 0
  store double %tmp318, double* %1659, align 8
  %_rtB__Sum1_g_el2183 = load double, double* %1658, align 1
  %tmp319 = fmul double %_rtB__Sum1_g_el2183, %rtb_C_m_delta_e_2178
  %_rtB__Sum_l_el2187 = load double, double* %1657, align 1
  %tmp320 = fmul double %rtb_C_D_delta_e_2179, %_rtB__Sum_l_el2187
  %tmp321 = fadd double %tmp319, %tmp320
  %1660 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 1
  store double %tmp321, double* %1660, align 8
  br label %merge354

default256:                                       ; preds = %true265, %false264, %true261, %case254, %true259, %false258, %merge352
  %vm_ssIsMajorTimeStepVar5_2216 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1661 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_2216, 0
  br i1 %1661, label %false268, label %true267

true257:                                          ; preds = %merge353
  %_rtB_2133 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1662 = sext i32 %i_2157 to i64
  %1663 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2133, i64 0, i32 68, i64 %1662
  store double 0.000000e+00, double* %1663, align 1
  %1664 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 %1662
  %rtb_VectorConcatenate_f__el = load double, double* %1664, align 8
  %rtb_sincos_o2__el2136 = load double, double* %1644, align 8
  %tmp304 = fmul double %rtb_VectorConcatenate_f__el, %rtb_sincos_o2__el2136
  %_rtB_2137 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1665 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2137, i64 0, i32 68, i64 %1662
  %_rtB__Merge_el = load double, double* %1665, align 1
  %tmp305 = fadd double %tmp304, %_rtB__Merge_el
  store double %tmp305, double* %1665, align 1
  %tmp306 = add i32 %i_2157, 3
  %1666 = sext i32 %tmp306 to i64
  %1667 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 %1666
  %rtb_VectorConcatenate_f__el2142 = load double, double* %1667, align 8
  %rtb_sincos_o2__el2143 = load double, double* %1645, align 8
  %tmp307 = fmul double %rtb_VectorConcatenate_f__el2142, %rtb_sincos_o2__el2143
  %_rtB_2144 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1668 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2144, i64 0, i32 68, i64 %1662
  %_rtB__Merge_el2146 = load double, double* %1668, align 1
  %tmp308 = fadd double %tmp307, %_rtB__Merge_el2146
  store double %tmp308, double* %1668, align 1
  %tmp309 = add i32 %i_2157, 6
  %1669 = sext i32 %tmp309 to i64
  %1670 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 %1669
  %rtb_VectorConcatenate_f__el2150 = load double, double* %1670, align 8
  %rtb_sincos_o2__el2151 = load double, double* %1639, align 8
  %tmp310 = fmul double %rtb_VectorConcatenate_f__el2150, %rtb_sincos_o2__el2151
  %_rtB_2152 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1671 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2152, i64 0, i32 68, i64 %1662
  %_rtB__Merge_el2154 = load double, double* %1671, align 1
  %tmp311 = fadd double %tmp310, %_rtB__Merge_el2154
  store double %tmp311, double* %1671, align 1
  %tmp312 = add i32 %i_2157, 1
  br label %merge353

false258:                                         ; preds = %merge353
  %vm_ssIsMajorTimeStepVar5_2131 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1672 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_2131, 0
  br i1 %1672, label %default256, label %true259

true259:                                          ; preds = %false258
  %_rtDW_2132 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1673 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2132, i64 0, i32 134
  call void @vm_srUpdateBC(i8* %1673)
  br label %default256

true261:                                          ; preds = %case254
  %_rtDW_2173 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1674 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2173, i64 0, i32 133
  call void @vm_srUpdateBC(i8* %1674)
  br label %default256

true263:                                          ; preds = %merge354
  %tmp390 = add i32 %i_2355, 6
  %1675 = sext i32 %tmp390 to i64
  %1676 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 %1675
  %rtb_VectorConcatenate_f__el2346 = load double, double* %1676, align 8
  %1677 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2176, i64 0, i32 133, i64 0
  %_rtB__Sum1_el2348 = load double, double* %1677, align 1
  %tmp391 = fmul double %rtb_VectorConcatenate_f__el2346, %_rtB__Sum1_el2348
  %tmp392 = add i32 %i_2355, 3
  %1678 = sext i32 %tmp392 to i64
  %1679 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 %1678
  %rtb_VectorConcatenate_f__el2350 = load double, double* %1679, align 8
  %tmp393 = fmul double %rtb_VectorConcatenate_f__el2350, %tmp321
  %1680 = sext i32 %i_2355 to i64
  %1681 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 %1680
  %rtb_VectorConcatenate_f__el2353 = load double, double* %1681, align 8
  %tmp394 = fmul double %rtb_VectorConcatenate_f__el2353, %tmp318
  %tmp395 = fadd double %tmp393, %tmp394
  %tmp396 = fadd double %tmp391, %tmp395
  %1682 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Gain_j_, i64 0, i64 %1680
  store double %tmp396, double* %1682, align 8
  %tmp397 = add i32 %i_2355, 1
  br label %merge354

false264:                                         ; preds = %merge354
  %rtb_C_L_delta_e_2189 = load double, double* %rtb_C_L_delta_e_, align 8
  %1683 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2176, i64 0, i32 120
  %_rtB__max_height_low_j = load double, double* %1683, align 1
  %tmp322 = fsub double %rtb_C_L_delta_e_2189, %_rtB__max_height_low_j
  store double %tmp322, double* %rtb_C_D_delta_e_, align 8
  %1684 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2176, i64 0, i32 142, i64 1
  %_rtB__Sum_l_el2192 = load double, double* %1684, align 1
  %1685 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Gain_j_, i64 0, i64 0
  %rtb_Gain_j__el2193 = load double, double* %1685, align 8
  %tmp323 = fsub double %_rtB__Sum_l_el2192, %rtb_Gain_j__el2193
  %tmp324 = fmul double %tmp322, %tmp323
  %1686 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2176, i64 0, i32 121
  %_rtB__Sum_o = load double, double* %1686, align 1
  %tmp325 = fdiv double %tmp324, %_rtB__Sum_o
  %tmp326 = fadd double %tmp325, %rtb_Gain_j__el2193
  %1687 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2176, i64 0, i32 68, i64 0
  store double %tmp326, double* %1687, align 1
  %_rtB_2198 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1688 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2198, i64 0, i32 138, i64 1
  %_rtB__Sum1_g_el2199 = load double, double* %1688, align 1
  %1689 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Gain_j_, i64 0, i64 1
  %rtb_Gain_j__el2200 = load double, double* %1689, align 8
  %tmp327 = fsub double %_rtB__Sum1_g_el2199, %rtb_Gain_j__el2200
  %rtb_C_D_delta_e_2201 = load double, double* %rtb_C_D_delta_e_, align 8
  %tmp328 = fmul double %tmp327, %rtb_C_D_delta_e_2201
  %1690 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2198, i64 0, i32 121
  %_rtB__Sum_o2203 = load double, double* %1690, align 1
  %tmp329 = fdiv double %tmp328, %_rtB__Sum_o2203
  %tmp330 = fadd double %tmp329, %rtb_Gain_j__el2200
  %1691 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2198, i64 0, i32 68, i64 1
  store double %tmp330, double* %1691, align 1
  %_rtB_2206 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1692 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2206, i64 0, i32 133, i64 1
  %_rtB__Sum1_el2207 = load double, double* %1692, align 1
  %1693 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Gain_j_, i64 0, i64 2
  %rtb_Gain_j__el2208 = load double, double* %1693, align 8
  %tmp331 = fsub double %_rtB__Sum1_el2207, %rtb_Gain_j__el2208
  %rtb_C_D_delta_e_2209 = load double, double* %rtb_C_D_delta_e_, align 8
  %tmp332 = fmul double %tmp331, %rtb_C_D_delta_e_2209
  %1694 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2206, i64 0, i32 121
  %_rtB__Sum_o2211 = load double, double* %1694, align 1
  %tmp333 = fdiv double %tmp332, %_rtB__Sum_o2211
  %tmp334 = fadd double %tmp333, %rtb_Gain_j__el2208
  %1695 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2206, i64 0, i32 68, i64 2
  store double %tmp334, double* %1695, align 1
  %vm_ssIsMajorTimeStepVar5_2214 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1696 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_2214, 0
  br i1 %1696, label %default256, label %true265

true265:                                          ; preds = %false264
  %_rtDW_2215 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1697 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2215, i64 0, i32 132
  call void @vm_srUpdateBC(i8* %1697)
  br label %default256

true267:                                          ; preds = %default256
  %rtb_C_L_delta_e_2218 = load double, double* %rtb_C_L_delta_e_, align 8
  %1698 = fcmp ugt double %rtb_C_L_delta_e_2218, 1.000000e+03
  %1699 = fcmp ult double %rtb_C_L_delta_e_2218, 2.000000e+03
  %.2910 = select i1 %1699, i8 2, i8 1
  %storemerge2629 = select i1 %1698, i8 %.2910, i8 0
  store i8 %storemerge2629, i8* %rtAction_, align 1
  %_rtDW_2221 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1700 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2221, i64 0, i32 128
  store i8 %storemerge2629, i8* %1700, align 1
  br label %merge357

false268:                                         ; preds = %default256
  %_rtDW_2217 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1701 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2217, i64 0, i32 128
  %_rtDW__ifHeightMaxlowaltitudeelseifHeightMinisotropicaltitude_ActiveSubsystem_h = load i8, i8* %1701, align 1
  store i8 %_rtDW__ifHeightMaxlowaltitudeelseifHeightMinisotropicaltitude_ActiveSubsystem_h, i8* %rtAction_, align 1
  br label %merge357

case273:                                          ; preds = %merge357
  %_rtB_2223 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1702 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2223, i64 0, i32 123, i64 0
  %1703 = bitcast double* %1702 to i64*
  %_rtB__Sum_a_el22242626 = load i64, i64* %1703, align 1
  %1704 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 2
  %1705 = bitcast double* %1704 to i64*
  store i64 %_rtB__Sum_a_el22242626, i64* %1705, align 8
  %1706 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2223, i64 0, i32 106
  %_rtB__UnitConversion_e2226 = load double, double* %1706, align 1
  call void @muDoubleScalarSinCos(double %_rtB__UnitConversion_e2226, double* nonnull %rtb_C_L_delta_e_, double* nonnull %rtb_C_D_delta_e_)
  %_rtB_2227 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1707 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2227, i64 0, i32 129, i64 0
  %_rtB__Sum_mc_el = load double, double* %1707, align 1
  %rtb_C_D_delta_e_2228 = load double, double* %rtb_C_D_delta_e_, align 8
  %tmp335 = fmul double %_rtB__Sum_mc_el, %rtb_C_D_delta_e_2228
  %rtb_C_L_delta_e_2229 = load double, double* %rtb_C_L_delta_e_, align 8
  %1708 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2227, i64 0, i32 126, i64 0
  %_rtB__Sum_g_el2231 = load double, double* %1708, align 1
  %tmp336 = fmul double %rtb_C_L_delta_e_2229, %_rtB__Sum_g_el2231
  %tmp337 = fsub double %tmp335, %tmp336
  %1709 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 0
  store double %tmp337, double* %1709, align 8
  %_rtB__Sum_g_el2233 = load double, double* %1708, align 1
  %tmp338 = fmul double %_rtB__Sum_g_el2233, %rtb_C_D_delta_e_2228
  %_rtB__Sum_mc_el2237 = load double, double* %1707, align 1
  %tmp339 = fmul double %rtb_C_L_delta_e_2229, %_rtB__Sum_mc_el2237
  %tmp340 = fadd double %tmp338, %tmp339
  %1710 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 1
  store double %tmp340, double* %1710, align 8
  br label %merge358

case274:                                          ; preds = %merge357
  %_rtP_2252 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1711 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2252, i64 0, i32 40
  %_rtP__Gain_Gain_d = load double, double* %1711, align 1
  %_rtB_2253 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1712 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2253, i64 0, i32 129, i64 1
  %_rtB__Sum_mc_el2254 = load double, double* %1712, align 1
  %tmp349 = fmul double %_rtP__Gain_Gain_d, %_rtB__Sum_mc_el2254
  %1713 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Merge_, i64 0, i64 0
  store double %tmp349, double* %1713, align 8
  %1714 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2253, i64 0, i32 126, i64 1
  %_rtB__Sum_g_el2258 = load double, double* %1714, align 1
  %tmp350 = fmul double %_rtP__Gain_Gain_d, %_rtB__Sum_g_el2258
  %1715 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Merge_, i64 0, i64 1
  store double %tmp350, double* %1715, align 8
  %1716 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2253, i64 0, i32 123, i64 1
  %_rtB__Sum_a_el2262 = load double, double* %1716, align 1
  %tmp351 = fmul double %_rtP__Gain_Gain_d, %_rtB__Sum_a_el2262
  %1717 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Merge_, i64 0, i64 2
  store double %tmp351, double* %1717, align 8
  %vm_ssIsMajorTimeStepVar5_2263 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1718 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_2263, 0
  br i1 %1718, label %merge360, label %true281

case275:                                          ; preds = %merge357
  %_rtB_2265 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1719 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2265, i64 0, i32 106
  %_rtB__UnitConversion_e2266 = load double, double* %1719, align 1
  call void @muDoubleScalarSinCos(double %_rtB__UnitConversion_e2266, double* nonnull %rtb_C_D_delta_e_, double* nonnull %rtb_C_m_delta_e_)
  %_rtB_2267 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1720 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2267, i64 0, i32 129, i64 0
  %_rtB__Sum_mc_el2268 = load double, double* %1720, align 1
  %rtb_C_m_delta_e_2269 = load double, double* %rtb_C_m_delta_e_, align 8
  %tmp352 = fmul double %_rtB__Sum_mc_el2268, %rtb_C_m_delta_e_2269
  %rtb_C_D_delta_e_2270 = load double, double* %rtb_C_D_delta_e_, align 8
  %1721 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2267, i64 0, i32 126, i64 0
  %_rtB__Sum_g_el2272 = load double, double* %1721, align 1
  %tmp353 = fmul double %rtb_C_D_delta_e_2270, %_rtB__Sum_g_el2272
  %tmp354 = fsub double %tmp352, %tmp353
  %1722 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Merge_, i64 0, i64 0
  store double %tmp354, double* %1722, align 8
  %tmp355 = fmul double %_rtB__Sum_g_el2272, %rtb_C_m_delta_e_2269
  %tmp356 = fmul double %rtb_C_D_delta_e_2270, %_rtB__Sum_mc_el2268
  %tmp357 = fadd double %tmp355, %tmp356
  %1723 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Merge_, i64 0, i64 1
  store double %tmp357, double* %1723, align 8
  br label %merge359

true277:                                          ; preds = %merge358
  %tmp341 = add i32 %i_2250, 6
  %1724 = sext i32 %tmp341 to i64
  %1725 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 %1724
  %rtb_VectorConcatenate_f__el2242 = load double, double* %1725, align 8
  %rtb_sincos_o2__el2243 = load double, double* %1704, align 8
  %tmp342 = fmul double %rtb_VectorConcatenate_f__el2242, %rtb_sincos_o2__el2243
  %tmp343 = add i32 %i_2250, 3
  %1726 = sext i32 %tmp343 to i64
  %1727 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 %1726
  %rtb_VectorConcatenate_f__el2245 = load double, double* %1727, align 8
  %tmp344 = fmul double %rtb_VectorConcatenate_f__el2245, %tmp340
  %1728 = sext i32 %i_2250 to i64
  %1729 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 %1728
  %rtb_VectorConcatenate_f__el2248 = load double, double* %1729, align 8
  %tmp345 = fmul double %rtb_VectorConcatenate_f__el2248, %tmp337
  %tmp346 = fadd double %tmp344, %tmp345
  %tmp347 = fadd double %tmp342, %tmp346
  %1730 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Merge_, i64 0, i64 %1728
  store double %tmp347, double* %1730, align 8
  %tmp348 = add i32 %i_2250, 1
  br label %merge358

false278:                                         ; preds = %merge358
  %vm_ssIsMajorTimeStepVar5_2239 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1731 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_2239, 0
  br i1 %1731, label %merge360, label %true279

true279:                                          ; preds = %false278
  %_rtDW_2240 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1732 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2240, i64 0, i32 131
  call void @vm_srUpdateBC(i8* %1732)
  br label %merge360

true281:                                          ; preds = %case274
  %_rtDW_2264 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1733 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2264, i64 0, i32 130
  call void @vm_srUpdateBC(i8* %1733)
  br label %merge360

true283:                                          ; preds = %merge359
  %tmp382 = add i32 %i_2343, 6
  %1734 = sext i32 %tmp382 to i64
  %1735 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 %1734
  %rtb_VectorConcatenate_f__el2334 = load double, double* %1735, align 8
  %1736 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2267, i64 0, i32 123, i64 0
  %_rtB__Sum_a_el2336 = load double, double* %1736, align 1
  %tmp383 = fmul double %rtb_VectorConcatenate_f__el2334, %_rtB__Sum_a_el2336
  %tmp384 = add i32 %i_2343, 3
  %1737 = sext i32 %tmp384 to i64
  %1738 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 %1737
  %rtb_VectorConcatenate_f__el2338 = load double, double* %1738, align 8
  %tmp385 = fmul double %rtb_VectorConcatenate_f__el2338, %tmp357
  %1739 = sext i32 %i_2343 to i64
  %1740 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 %1739
  %rtb_VectorConcatenate_f__el2341 = load double, double* %1740, align 8
  %tmp386 = fmul double %rtb_VectorConcatenate_f__el2341, %tmp354
  %tmp387 = fadd double %tmp385, %tmp386
  %tmp388 = fadd double %tmp383, %tmp387
  %1741 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 %1739
  store double %tmp388, double* %1741, align 8
  %tmp389 = add i32 %i_2343, 1
  br label %merge359

false284:                                         ; preds = %merge359
  %rtb_C_L_delta_e_2280 = load double, double* %rtb_C_L_delta_e_, align 8
  %1742 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2267, i64 0, i32 118
  %_rtB__max_height_low = load double, double* %1742, align 1
  %tmp358 = fsub double %rtb_C_L_delta_e_2280, %_rtB__max_height_low
  store double %tmp358, double* %rtb_C_L_delta_e_, align 8
  %1743 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2267, i64 0, i32 129, i64 1
  %_rtB__Sum_mc_el2283 = load double, double* %1743, align 1
  %1744 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 0
  %rtb_sincos_o2__el2284 = load double, double* %1744, align 8
  %tmp359 = fsub double %_rtB__Sum_mc_el2283, %rtb_sincos_o2__el2284
  %tmp360 = fmul double %tmp358, %tmp359
  %1745 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2267, i64 0, i32 119
  %_rtB__Sum_m = load double, double* %1745, align 1
  %tmp361 = fdiv double %tmp360, %_rtB__Sum_m
  %tmp362 = fadd double %tmp361, %rtb_sincos_o2__el2284
  store double %tmp362, double* %1722, align 8
  %1746 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2267, i64 0, i32 126, i64 1
  %_rtB__Sum_g_el2289 = load double, double* %1746, align 1
  %1747 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 1
  %rtb_sincos_o2__el2290 = load double, double* %1747, align 8
  %tmp363 = fsub double %_rtB__Sum_g_el2289, %rtb_sincos_o2__el2290
  %tmp364 = fmul double %tmp363, %tmp358
  %tmp365 = fdiv double %tmp364, %_rtB__Sum_m
  %tmp366 = fadd double %tmp365, %rtb_sincos_o2__el2290
  store double %tmp366, double* %1723, align 8
  %1748 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2267, i64 0, i32 123, i64 1
  %_rtB__Sum_a_el2296 = load double, double* %1748, align 1
  %1749 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 2
  %rtb_sincos_o2__el2297 = load double, double* %1749, align 8
  %tmp367 = fsub double %_rtB__Sum_a_el2296, %rtb_sincos_o2__el2297
  %tmp368 = fmul double %tmp367, %tmp358
  %tmp369 = fdiv double %tmp368, %_rtB__Sum_m
  %tmp370 = fadd double %tmp369, %rtb_sincos_o2__el2297
  %1750 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Merge_, i64 0, i64 2
  store double %tmp370, double* %1750, align 8
  %vm_ssIsMajorTimeStepVar5_2302 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1751 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_2302, 0
  br i1 %1751, label %merge360, label %true285

true285:                                          ; preds = %false284
  %_rtDW_2303 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1752 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_2303, i64 0, i32 129
  call void @vm_srUpdateBC(i8* %1752)
  br label %merge360

true287:                                          ; preds = %merge360
  %_rtP_2317 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1753 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2317, i64 0, i32 201
  %_rtP__gainshearwind3_Gain = load double, double* %1753, align 1
  %tmp371 = add i32 %i_2331, 6
  %1754 = sext i32 %tmp371 to i64
  %1755 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 %1754
  %rtb_VectorConcatenate_f__el2319 = load double, double* %1755, align 8
  %_rtB_2320 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1756 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2320, i64 0, i32 116, i64 2
  %_rtB__Product1_k_el = load double, double* %1756, align 1
  %tmp372 = fmul double %rtb_VectorConcatenate_f__el2319, %_rtB__Product1_k_el
  %tmp373 = add i32 %i_2331, 3
  %1757 = sext i32 %tmp373 to i64
  %1758 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 %1757
  %rtb_VectorConcatenate_f__el2322 = load double, double* %1758, align 8
  %1759 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2320, i64 0, i32 116, i64 1
  %_rtB__Product1_k_el2324 = load double, double* %1759, align 1
  %tmp374 = fmul double %rtb_VectorConcatenate_f__el2322, %_rtB__Product1_k_el2324
  %1760 = sext i32 %i_2331 to i64
  %1761 = getelementptr inbounds [9 x double], [9 x double]* %rtb_VectorConcatenate_f_, i64 0, i64 %1760
  %rtb_VectorConcatenate_f__el2326 = load double, double* %1761, align 8
  %1762 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2320, i64 0, i32 116, i64 0
  %_rtB__Product1_k_el2328 = load double, double* %1762, align 1
  %tmp375 = fmul double %rtb_VectorConcatenate_f__el2326, %_rtB__Product1_k_el2328
  %tmp376 = fadd double %tmp374, %tmp375
  %tmp377 = fadd double %tmp372, %tmp376
  %tmp378 = fmul double %_rtP__gainshearwind3_Gain, %tmp377
  %1763 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Merge_, i64 0, i64 %1760
  %rtb_Merge__el = load double, double* %1763, align 8
  %tmp379 = fmul double %rtb_Merge__el, 3.048000e-01
  %tmp380 = fadd double %tmp379, %tmp378
  %1764 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2320, i64 0, i32 69, i64 %1760
  store double %tmp380, double* %1764, align 1
  %tmp381 = add i32 %i_2331, 1
  br label %merge360

false288:                                         ; preds = %merge360
  %vm_ssIsSampleHitVar1_2305 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_2305, i32* %i_, align 4
  %1765 = icmp eq i32 %vm_ssIsSampleHitVar1_2305, 0
  br i1 %1765, label %false290, label %true289

true289:                                          ; preds = %false288
  %S_2307 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_2307, i32 21, i32 366, i32 104)
  br label %false290

false290:                                         ; preds = %false288, %true289
  %vm_ssIsSampleHitVar2_2308.pre = load i32, i32* %vm_ssIsSampleHitVar2_, align 4
  br label %false

true291:                                          ; preds = %false
  %S_2310 = load i8*, i8** %S_, align 8
  call void @Outputs1(i8* %S_2310)
  br label %false292

false292:                                         ; preds = %false, %true291
  %vm_ssIsSampleHitVar3_2311 = load i32, i32* %vm_ssIsSampleHitVar3_, align 4
  store i32 %vm_ssIsSampleHitVar3_2311, i32* %i_, align 4
  %1766 = icmp eq i32 %vm_ssIsSampleHitVar3_2311, 0
  br i1 %1766, label %false294, label %true293

true293:                                          ; preds = %false292
  %S_2313 = load i8*, i8** %S_, align 8
  call void @Outputs2(i8* %S_2313)
  br label %false294

false294:                                         ; preds = %false292, %true293
  %vm_ssIsSampleHitVar4_2314 = load i32, i32* %vm_ssIsSampleHitVar4_, align 4
  store i32 %vm_ssIsSampleHitVar4_2314, i32* %i_, align 4
  %1767 = icmp eq i32 %vm_ssIsSampleHitVar4_2314, 0
  br i1 %1767, label %false296, label %true295

true295:                                          ; preds = %false294
  %S_2316 = load i8*, i8** %S_, align 8
  call void @Outputs3(i8* %S_2316)
  br label %false296

false296:                                         ; preds = %false294, %true295
  ret void

true297:                                          ; preds = %true93
  %1768 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2393, i64 0, i32 49, i64 %1019
  %1769 = bitcast double* %1768 to i64*
  %_rtB__Sum4_d_el24092732 = load i64, i64* %1769, align 1
  %1770 = bitcast double* %rtb_u2_idx_2_ to i64*
  store i64 %_rtB__Sum4_d_el24092732, i64* %1770, align 8
  %1771 = bitcast i64 %_rtB__Sum4_d_el24092732 to double
  br label %false298

false298:                                         ; preds = %true297, %true93
  %rtb_u2_idx_2_24162728 = phi i64 [ %_rtB__Sum4_d_el24092732, %true297 ], [ %1046, %true93 ]
  %rtb_u2_idx_2_2413 = phi double [ %1771, %true297 ], [ %tmp419, %true93 ]
  %_rtP_2411 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1772 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2411, i64 0, i32 160, i64 %1019
  %_rtP__Saturation_UpperSat_nx_el = load double, double* %1772, align 1
  %1773 = fcmp ogt double %rtb_u2_idx_2_2413, %_rtP__Saturation_UpperSat_nx_el
  %1774 = bitcast double %_rtP__Saturation_UpperSat_nx_el to i64
  br i1 %1773, label %true299, label %false300

true299:                                          ; preds = %false298
  %1775 = bitcast double* %1772 to i64*
  %1776 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Sum_ae_, i64 0, i64 %1019
  %1777 = bitcast double* %1776 to i64*
  store i64 %1774, i64* %1777, align 8
  br label %merge362

false300:                                         ; preds = %false298
  %1778 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2411, i64 0, i32 161, i64 %1019
  %_rtP__Saturation_LowerSat_e_el = load double, double* %1778, align 1
  %1779 = fcmp olt double %rtb_u2_idx_2_2413, %_rtP__Saturation_LowerSat_e_el
  %1780 = bitcast double %_rtP__Saturation_LowerSat_e_el to i64
  br i1 %1779, label %true301, label %false302

true301:                                          ; preds = %false300
  %1781 = bitcast double* %1778 to i64*
  %1782 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Sum_ae_, i64 0, i64 %1019
  %1783 = bitcast double* %1782 to i64*
  store i64 %1780, i64* %1783, align 8
  br label %merge362

false302:                                         ; preds = %false300
  %1784 = bitcast double* %rtb_u2_idx_2_ to i64*
  %1785 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Sum_ae_, i64 0, i64 %1019
  %1786 = bitcast double* %1785 to i64*
  store i64 %rtb_u2_idx_2_24162728, i64* %1786, align 8
  br label %merge362

true303:                                          ; preds = %true89
  %1787 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_2455, i64 0, i32 46, i64 %953
  %1788 = bitcast double* %1787 to i64*
  %_rtB__Sum4_el24712740 = load i64, i64* %1788, align 1
  %1789 = bitcast double* %rtb_u2_idx_2_ to i64*
  store i64 %_rtB__Sum4_el24712740, i64* %1789, align 8
  %1790 = bitcast i64 %_rtB__Sum4_el24712740 to double
  br label %false304

false304:                                         ; preds = %true303, %true89
  %rtb_u2_idx_2_248427362866 = phi i64 [ %_rtB__Sum4_el24712740, %true303 ], [ %976, %true89 ]
  %rtb_u2_idx_2_2475 = phi double [ %1790, %true303 ], [ %tmp439, %true89 ]
  %_rtP_2473 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1791 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2473, i64 0, i32 156, i64 %953
  %_rtP__Saturation_UpperSat_n_el = load double, double* %1791, align 1
  %1792 = fcmp ogt double %rtb_u2_idx_2_2475, %_rtP__Saturation_UpperSat_n_el
  %1793 = bitcast double %_rtP__Saturation_UpperSat_n_el to i64
  br i1 %1792, label %true305, label %false306

true305:                                          ; preds = %false304
  %1794 = bitcast double* %1791 to i64*
  %1795 = bitcast double* %rtb_u2_idx_2_ to i64*
  store i64 %1793, i64* %1795, align 8
  br label %merge363

false306:                                         ; preds = %false304
  %1796 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_2473, i64 0, i32 157, i64 %953
  %_rtP__Saturation_LowerSat_b_el = load double, double* %1796, align 1
  %1797 = fcmp olt double %rtb_u2_idx_2_2475, %_rtP__Saturation_LowerSat_b_el
  %1798 = bitcast double %_rtP__Saturation_LowerSat_b_el to i64
  br i1 %1797, label %true307, label %false306.false308_crit_edge

false306.false308_crit_edge:                      ; preds = %false306
  %.pre2909 = bitcast double* %rtb_u2_idx_2_ to i64*
  br label %merge363

true307:                                          ; preds = %false306
  %1799 = bitcast double* %1796 to i64*
  %1800 = bitcast double* %rtb_u2_idx_2_ to i64*
  store i64 %1798, i64* %1800, align 8
  br label %merge363

merge:                                            ; preds = %true3, %false4
  %_rtDW__clockTickCounter390 = load i32, i32* %29, align 1
  %1801 = sitofp i32 %_rtDW__clockTickCounter390 to double
  %1802 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_385, i64 0, i32 45
  %_rtP__PulseGenerator_Period = load double, double* %1802, align 1
  %tmp0 = fadd double %_rtP__PulseGenerator_Period, -1.000000e+00
  %1803 = fcmp ult double %1801, %tmp0
  br i1 %1803, label %false6, label %true5

merge309:                                         ; preds = %true5, %false6
  %_rtB_396 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1804 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_396, i64 0, i32 5
  %_rtB__PhysicsModel = load double, double* %1804, align 1
  %1805 = fcmp oeq double %_rtB__PhysicsModel, 0.000000e+00
  %rtb_TriggerWave_397 = load double, double* %rtb_TriggerWave_, align 8
  %1806 = fcmp oeq double %rtb_TriggerWave_397, 0.000000e+00
  %1807 = and i1 %1805, %1806
  %1808 = zext i1 %1807 to i8
  %1809 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_396, i64 0, i32 175
  store i8 %1808, i8* %1809, align 1
  %_rtP_399 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1810 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_399, i64 0, i32 51
  %_rtP__Gain1_Gain_d = load double, double* %1810, align 1
  %1811 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_399, i64 0, i32 50
  %_rtP__Pitch_GroundMode_Value = load double, double* %1811, align 1
  %tmp2 = fmul double %_rtP__Gain1_Gain_d, %_rtP__Pitch_GroundMode_Value
  %1812 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_399, i64 0, i32 54
  %_rtP__u2_Gain = load double, double* %1812, align 1
  %tmp3 = fmul double %tmp2, %_rtP__u2_Gain
  store double %tmp3, double* %rtb_TriggerWave_, align 8
  %1813 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_399, i64 0, i32 53
  %_rtP__Gain1_Gain_b = load double, double* %1813, align 1
  %1814 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_399, i64 0, i32 52
  %_rtP__HDG_GroundMode_Value = load double, double* %1814, align 1
  %tmp4 = fmul double %_rtP__Gain1_Gain_b, %_rtP__HDG_GroundMode_Value
  %_rtP__u2_Gain405 = load double, double* %1812, align 1
  %tmp5 = fmul double %tmp4, %_rtP__u2_Gain405
  store double %tmp5, double* %rtb_u2_idx_2_, align 8
  %_rtP__u2_Gain407 = load double, double* %1812, align 1
  %1815 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_399, i64 0, i32 49
  %_rtP__Gain1_Gain = load double, double* %1815, align 1
  %1816 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_399, i64 0, i32 48
  %_rtP__Roll_GroundMode_Value = load double, double* %1816, align 1
  %tmp6 = fmul double %_rtP__Gain1_Gain, %_rtP__Roll_GroundMode_Value
  %tmp7 = fmul double %_rtP__u2_Gain407, %tmp6
  %1817 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 0
  call void @muDoubleScalarSinCos(double %tmp7, double* nonnull %rtb_u2_idx_0_, double* %1817)
  %rtb_TriggerWave_410 = load double, double* %rtb_TriggerWave_, align 8
  %1818 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 1
  call void @muDoubleScalarSinCos(double %rtb_TriggerWave_410, double* nonnull %rtb_TriggerWave_, double* %1818)
  %rtb_u2_idx_2_411 = load double, double* %rtb_u2_idx_2_, align 8
  %1819 = getelementptr inbounds [3 x double], [3 x double]* %rtb_sincos_o2_, i64 0, i64 2
  call void @muDoubleScalarSinCos(double %rtb_u2_idx_2_411, double* nonnull %rtb_u2_, double* %1819)
  %rtb_sincos_o2__el = load double, double* %1817, align 8
  %rtb_sincos_o2__el412 = load double, double* %1818, align 8
  %tmp8 = fmul double %rtb_sincos_o2__el, %rtb_sincos_o2__el412
  %rtb_sincos_o2__el413 = load double, double* %1819, align 8
  %tmp9 = fmul double %tmp8, %rtb_sincos_o2__el413
  %rtb_u2_idx_0_414 = load double, double* %rtb_u2_idx_0_, align 8
  %rtb_TriggerWave_415 = load double, double* %rtb_TriggerWave_, align 8
  %tmp10 = fmul double %rtb_u2_idx_0_414, %rtb_TriggerWave_415
  %rtb_u2_416 = load double, double* %rtb_u2_, align 8
  %tmp11 = fmul double %tmp10, %rtb_u2_416
  %tmp12 = fsub double %tmp9, %tmp11
  %_rtB_417 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1820 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_417, i64 0, i32 6
  store double %tmp12, double* %1820, align 1
  %rtb_sincos_o2__el418 = load double, double* %1817, align 8
  %rtb_TriggerWave_419 = load double, double* %rtb_TriggerWave_, align 8
  %tmp13 = fmul double %rtb_sincos_o2__el418, %rtb_TriggerWave_419
  %rtb_u2_420 = load double, double* %rtb_u2_, align 8
  %tmp14 = fmul double %tmp13, %rtb_u2_420
  %rtb_u2_idx_0_421 = load double, double* %rtb_u2_idx_0_, align 8
  %rtb_sincos_o2__el422 = load double, double* %1818, align 8
  %tmp15 = fmul double %rtb_u2_idx_0_421, %rtb_sincos_o2__el422
  %rtb_sincos_o2__el423 = load double, double* %1819, align 8
  %tmp16 = fmul double %tmp15, %rtb_sincos_o2__el423
  %tmp17 = fadd double %tmp14, %tmp16
  %_rtB_424 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1821 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_424, i64 0, i32 7
  store double %tmp17, double* %1821, align 1
  %rtb_sincos_o2__el425 = load double, double* %1817, align 8
  %rtb_TriggerWave_426 = load double, double* %rtb_TriggerWave_, align 8
  %tmp18 = fmul double %rtb_sincos_o2__el425, %rtb_TriggerWave_426
  %rtb_sincos_o2__el427 = load double, double* %1819, align 8
  %tmp19 = fmul double %tmp18, %rtb_sincos_o2__el427
  %rtb_u2_idx_0_428 = load double, double* %rtb_u2_idx_0_, align 8
  %rtb_sincos_o2__el429 = load double, double* %1818, align 8
  %tmp20 = fmul double %rtb_u2_idx_0_428, %rtb_sincos_o2__el429
  %rtb_u2_430 = load double, double* %rtb_u2_, align 8
  %tmp21 = fmul double %tmp20, %rtb_u2_430
  %tmp22 = fsub double %tmp19, %tmp21
  %_rtB_431 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1822 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_431, i64 0, i32 8
  store double %tmp22, double* %1822, align 1
  %rtb_sincos_o2__el432 = load double, double* %1817, align 8
  %rtb_sincos_o2__el433 = load double, double* %1818, align 8
  %tmp23 = fmul double %rtb_sincos_o2__el432, %rtb_sincos_o2__el433
  %rtb_u2_434 = load double, double* %rtb_u2_, align 8
  %tmp24 = fmul double %tmp23, %rtb_u2_434
  %rtb_u2_idx_0_435 = load double, double* %rtb_u2_idx_0_, align 8
  %rtb_TriggerWave_436 = load double, double* %rtb_TriggerWave_, align 8
  %tmp25 = fmul double %rtb_u2_idx_0_435, %rtb_TriggerWave_436
  %rtb_sincos_o2__el437 = load double, double* %1819, align 8
  %tmp26 = fmul double %tmp25, %rtb_sincos_o2__el437
  %tmp27 = fadd double %tmp24, %tmp26
  %_rtB_438 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1823 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_438, i64 0, i32 9
  store double %tmp27, double* %1823, align 1
  %_rtB_439 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1824 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_439, i64 0, i32 5
  %_rtB__PhysicsModel440 = load double, double* %1824, align 1
  %1825 = fptosi double %_rtB__PhysicsModel440 to i32
  %1826 = icmp eq i32 %1825, 0
  br i1 %1826, label %merge311, label %merge310

merge310:                                         ; preds = %merge309, %true9
  %i_446 = phi i32 [ %tmp28, %true9 ], [ 0, %merge309 ]
  store i32 %i_446, i32* %i_, align 4
  %1827 = icmp slt i32 %i_446, 6
  br i1 %1827, label %true9, label %false10

merge311:                                         ; preds = %merge309, %true11
  %i_2542 = phi i32 [ %tmp458, %true11 ], [ 0, %merge309 ]
  store i32 %i_2542, i32* %i_, align 4
  %1828 = icmp slt i32 %i_2542, 6
  br i1 %1828, label %true11, label %false10

merge312:                                         ; preds = %true12, %false2
  %i_2537 = phi i32 [ %tmp457, %true12 ], [ 0, %false2 ]
  store i32 %i_2537, i32* %i_, align 4
  %1829 = icmp slt i32 %i_2537, 6
  br i1 %1829, label %true12, label %false13

merge313:                                         ; preds = %false21, %true24
  %i_2529 = phi i32 [ %tmp455, %true24 ], [ 0, %false21 ]
  store i32 %i_2529, i32* %i_, align 4
  %1830 = icmp slt i32 %i_2529, 6
  br i1 %1830, label %true24, label %false23

merge314:                                         ; preds = %true25, %false26
  store i32 %vm_ssIsSampleHitVar1_589, i32* %i_, align 4
  br i1 %233, label %false28, label %true27

merge315:                                         ; preds = %case32, %case31, %case, %default
  %_rtP_655 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1831 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_655, i64 0, i32 62, i64 0
  %_rtP__elevatorailerontoelevon_Gain_el = load double, double* %1831, align 1
  %_rtB_656 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1832 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_656, i64 0, i32 21, i64 0
  %_rtB__MultiportSwitch_c_el = load double, double* %1832, align 1
  %tmp43 = fmul double %_rtP__elevatorailerontoelevon_Gain_el, %_rtB__MultiportSwitch_c_el
  %1833 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_655, i64 0, i32 62, i64 2
  %_rtP__elevatorailerontoelevon_Gain_el658 = load double, double* %1833, align 1
  %1834 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_656, i64 0, i32 21, i64 1
  %_rtB__MultiportSwitch_c_el660 = load double, double* %1834, align 1
  %tmp44 = fmul double %_rtP__elevatorailerontoelevon_Gain_el658, %_rtB__MultiportSwitch_c_el660
  %tmp45 = fadd double %tmp43, %tmp44
  store double %tmp45, double* %rtb_TriggerWave_, align 8
  %1835 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_655, i64 0, i32 62, i64 1
  %_rtP__elevatorailerontoelevon_Gain_el662 = load double, double* %1835, align 1
  %_rtB__MultiportSwitch_c_el664 = load double, double* %1832, align 1
  %tmp46 = fmul double %_rtP__elevatorailerontoelevon_Gain_el662, %_rtB__MultiportSwitch_c_el664
  %1836 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_655, i64 0, i32 62, i64 3
  %_rtP__elevatorailerontoelevon_Gain_el666 = load double, double* %1836, align 1
  %_rtB__MultiportSwitch_c_el668 = load double, double* %1834, align 1
  %tmp47 = fmul double %_rtP__elevatorailerontoelevon_Gain_el666, %_rtB__MultiportSwitch_c_el668
  %tmp48 = fadd double %tmp46, %tmp47
  store double %tmp48, double* %rtb_u2_idx_2_, align 8
  %1837 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_655, i64 0, i32 63
  %_rtP__Saturation_UpperSat = load double, double* %1837, align 1
  %1838 = fcmp ogt double %tmp45, %_rtP__Saturation_UpperSat
  %1839 = bitcast double %tmp45 to i64
  %1840 = bitcast double %_rtP__Saturation_UpperSat to i64
  br i1 %1838, label %true33, label %false34

merge317:                                         ; preds = %false36, %true35, %true33
  %rtb_u2_idx_2_681 = load double, double* %rtb_u2_idx_2_, align 8
  %_rtP_682 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1841 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_682, i64 0, i32 65
  %_rtP__Saturation1_UpperSat = load double, double* %1841, align 1
  %1842 = fcmp ogt double %rtb_u2_idx_2_681, %_rtP__Saturation1_UpperSat
  %1843 = bitcast double %rtb_u2_idx_2_681 to i64
  %1844 = bitcast double %_rtP__Saturation1_UpperSat to i64
  br i1 %1842, label %true37, label %false38

merge319:                                         ; preds = %false40, %true39, %true37
  %_rtP_693 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1845 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_693, i64 0, i32 67
  %_rtP__Gain_Gain_f = load double, double* %1845, align 1
  %_rtB_694 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1846 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_694, i64 0, i32 22
  %_rtB__Saturation = load double, double* %1846, align 1
  %tmp49 = fmul double %_rtP__Gain_Gain_f, %_rtB__Saturation
  store double %tmp49, double* %rtb_TriggerWave_, align 8
  %_rtP__Gain_Gain_f696 = load double, double* %1845, align 1
  %1847 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_694, i64 0, i32 23
  %_rtB__Saturation1 = load double, double* %1847, align 1
  %tmp50 = fmul double %_rtP__Gain_Gain_f696, %_rtB__Saturation1
  store double %tmp50, double* %rtb_u2_idx_2_, align 8
  %1848 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_693, i64 0, i32 68
  %_rtP__Saturation_UpperSat_a = load double, double* %1848, align 1
  %1849 = fcmp ogt double %tmp49, %_rtP__Saturation_UpperSat_a
  %1850 = bitcast double %_rtP__Saturation_UpperSat_a to i64
  br i1 %1849, label %true41, label %false42

merge320:                                         ; preds = %false42, %true43, %true41
  %_rtP__Saturation_UpperSat_a708 = load double, double* %1848, align 1
  %1851 = fcmp ogt double %tmp50, %_rtP__Saturation_UpperSat_a708
  %1852 = bitcast double %_rtP__Saturation_UpperSat_a708 to i64
  br i1 %1851, label %true45, label %false46

merge321:                                         ; preds = %false46, %true47, %true45
  %1853 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_694, i64 0, i32 24, i64 0
  store double 0.000000e+00, double* %1853, align 1
  %_rtP_717 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1854 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_717, i64 0, i32 70, i64 0
  %_rtP__elevontoelevatoraileron_Gain_el = load double, double* %1854, align 1
  %rtb_TriggerWave_718 = load double, double* %rtb_TriggerWave_, align 8
  %tmp51 = fmul double %_rtP__elevontoelevatoraileron_Gain_el, %rtb_TriggerWave_718
  %_rtB_719 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1855 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_719, i64 0, i32 24, i64 0
  %_rtB__elevontoelevatoraileron_el = load double, double* %1855, align 1
  %tmp52 = fadd double %tmp51, %_rtB__elevontoelevatoraileron_el
  store double %tmp52, double* %1855, align 1
  %_rtP_721 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1856 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_721, i64 0, i32 70, i64 2
  %_rtP__elevontoelevatoraileron_Gain_el722 = load double, double* %1856, align 1
  %rtb_u2_idx_2_723 = load double, double* %rtb_u2_idx_2_, align 8
  %tmp53 = fmul double %_rtP__elevontoelevatoraileron_Gain_el722, %rtb_u2_idx_2_723
  %_rtB_724 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1857 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_724, i64 0, i32 24, i64 0
  %_rtB__elevontoelevatoraileron_el725 = load double, double* %1857, align 1
  %tmp54 = fadd double %tmp53, %_rtB__elevontoelevatoraileron_el725
  store double %tmp54, double* %1857, align 1
  %_rtB_727 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1858 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_727, i64 0, i32 24, i64 1
  store double 0.000000e+00, double* %1858, align 1
  %_rtP_728 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1859 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_728, i64 0, i32 70, i64 1
  %_rtP__elevontoelevatoraileron_Gain_el729 = load double, double* %1859, align 1
  %rtb_TriggerWave_730 = load double, double* %rtb_TriggerWave_, align 8
  %tmp55 = fmul double %_rtP__elevontoelevatoraileron_Gain_el729, %rtb_TriggerWave_730
  %_rtB_731 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1860 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_731, i64 0, i32 24, i64 1
  %_rtB__elevontoelevatoraileron_el732 = load double, double* %1860, align 1
  %tmp56 = fadd double %tmp55, %_rtB__elevontoelevatoraileron_el732
  store double %tmp56, double* %1860, align 1
  %_rtP_734 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1861 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_734, i64 0, i32 70, i64 3
  %_rtP__elevontoelevatoraileron_Gain_el735 = load double, double* %1861, align 1
  %rtb_u2_idx_2_736 = load double, double* %rtb_u2_idx_2_, align 8
  %tmp57 = fmul double %_rtP__elevontoelevatoraileron_Gain_el735, %rtb_u2_idx_2_736
  %_rtB_737 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1862 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_737, i64 0, i32 24, i64 1
  %_rtB__elevontoelevatoraileron_el738 = load double, double* %1862, align 1
  %tmp58 = fadd double %tmp57, %_rtB__elevontoelevatoraileron_el738
  store double %tmp58, double* %1862, align 1
  %_rtB_740 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1863 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_740, i64 0, i32 21, i64 3
  %_rtB__MultiportSwitch_c_el741 = load double, double* %1863, align 1
  %_rtP_742 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1864 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_742, i64 0, i32 71
  %_rtP__Saturation_UpperSat_m = load double, double* %1864, align 1
  %1865 = fcmp ogt double %_rtB__MultiportSwitch_c_el741, %_rtP__Saturation_UpperSat_m
  %1866 = bitcast double %_rtB__MultiportSwitch_c_el741 to i64
  %1867 = bitcast double %_rtP__Saturation_UpperSat_m to i64
  br i1 %1865, label %true49, label %false50

merge323:                                         ; preds = %false52, %true51, %true49
  %vm_ssIsSampleHitVar1_755 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_755, i32* %i_, align 4
  %1868 = icmp eq i32 %vm_ssIsSampleHitVar1_755, 0
  br i1 %1868, label %false54, label %true53

merge324:                                         ; preds = %true55, %true59
  %i_1000 = phi i32 [ %tmp59, %true59 ], [ 0, %true55 ]
  store i32 %i_1000, i32* %i_, align 4
  %1869 = icmp slt i32 %i_1000, 6
  br i1 %1869, label %true59, label %false60

merge325:                                         ; preds = %true55, %true61
  %i_2527 = phi i32 [ %tmp454, %true61 ], [ 0, %true55 ]
  store i32 %i_2527, i32* %i_, align 4
  %1870 = icmp slt i32 %i_2527, 6
  br i1 %1870, label %true61, label %false60

merge326:                                         ; preds = %true68, %false67
  %i_2522 = phi i32 [ %tmp453, %true68 ], [ 0, %false67 ]
  store i32 %i_2522, i32* %i_, align 4
  %1871 = icmp slt i32 %i_2522, 3
  br i1 %1871, label %true68, label %false69

merge327:                                         ; preds = %false75, %true78
  %i_2488 = phi i32 [ %tmp441, %true78 ], [ 0, %false75 ]
  store i32 %i_2488, i32* %i_, align 4
  %1872 = icmp slt i32 %i_2488, 6
  br i1 %1872, label %true78, label %false77

merge328:                                         ; preds = %true81, %true85, %true83, %false82
  %lastU_1230 = phi [3 x double]* [ %892, %false82 ], [ %899, %true83 ], [ %902, %true85 ], [ %892, %true81 ]
  %rtb_TriggerWave_1216 = phi double [ %895, %false82 ], [ %900, %true83 ], [ %903, %true85 ], [ %895, %true81 ]
  %tmp87 = fsub double %vm_ssGetTVar7_1193, %rtb_TriggerWave_1216
  store double %tmp87, double* %rtb_TriggerWave_, align 8
  %_rtB_1217 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1873 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1217, i64 0, i32 12, i64 10
  %_rtB__Integrator_el1218 = load double, double* %1873, align 1
  %1874 = getelementptr inbounds [3 x double], [3 x double]* %lastU_1230, i64 0, i64 0
  %lastU__el = load double, double* %1874, align 1
  %tmp88 = fsub double %_rtB__Integrator_el1218, %lastU__el
  %tmp89 = fdiv double %tmp88, %tmp87
  %1875 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1217, i64 0, i32 45, i64 0
  store double %tmp89, double* %1875, align 1
  %_rtB_1222 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1876 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1222, i64 0, i32 12, i64 11
  %_rtB__Integrator_el1223 = load double, double* %1876, align 1
  %1877 = getelementptr inbounds [3 x double], [3 x double]* %lastU_1230, i64 0, i64 1
  %lastU__el1225 = load double, double* %1877, align 1
  %tmp90 = fsub double %_rtB__Integrator_el1223, %lastU__el1225
  %rtb_TriggerWave_1226 = load double, double* %rtb_TriggerWave_, align 8
  %tmp91 = fdiv double %tmp90, %rtb_TriggerWave_1226
  %1878 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1222, i64 0, i32 45, i64 1
  store double %tmp91, double* %1878, align 1
  %_rtB_1228 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1879 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1228, i64 0, i32 12, i64 12
  %_rtB__Integrator_el1229 = load double, double* %1879, align 1
  %1880 = getelementptr inbounds [3 x double], [3 x double]* %lastU_1230, i64 0, i64 2
  %lastU__el1231 = load double, double* %1880, align 1
  %tmp92 = fsub double %_rtB__Integrator_el1229, %lastU__el1231
  %rtb_TriggerWave_1232 = load double, double* %rtb_TriggerWave_, align 8
  %tmp93 = fdiv double %tmp92, %rtb_TriggerWave_1232
  %1881 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1228, i64 0, i32 45, i64 2
  store double %tmp93, double* %1881, align 1
  br label %merge329

merge329:                                         ; preds = %true79, %merge328
  %vm_ssIsSampleHitVar1_1237 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_1237, i32* %i_, align 4
  %1882 = icmp eq i32 %vm_ssIsSampleHitVar1_1237, 0
  br i1 %1882, label %false88, label %true87

merge330:                                         ; preds = %merge363, %true87
  %_rtB_2438 = phi %B_X8_T.43* [ %_rtB_2455, %merge363 ], [ %_rtB_1280, %true87 ]
  %i_2485 = phi i32 [ %tmp440, %merge363 ], [ 0, %true87 ]
  store i32 %i_2485, i32* %i_, align 4
  %1883 = icmp slt i32 %i_2485, 3
  br i1 %1883, label %true89, label %false90

merge331:                                         ; preds = %merge362, %false92
  %_rtB_2378 = phi %B_X8_T.43* [ %_rtB_2393, %merge362 ], [ %_rtB_1304, %false92 ]
  %i_2426 = phi i32 [ %tmp420, %merge362 ], [ 0, %false92 ]
  store i32 %i_2426, i32* %i_, align 4
  %1884 = icmp slt i32 %i_2426, 3
  br i1 %1884, label %true93, label %false94

merge333:                                         ; preds = %false118, %true117, %true115
  %S_1478 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1478, i32 21, i32 216, i32 104)
  %_rtB_1479 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1885 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1479, i64 0, i32 2, i32 1
  %_rtB__AirData_d_alpha1480 = load double, double* %1885, align 1
  %_rtP_1481 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1886 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1481, i64 0, i32 175
  %_rtP__Saturation_UpperSat_h = load double, double* %1886, align 1
  %1887 = fcmp ogt double %_rtB__AirData_d_alpha1480, %_rtP__Saturation_UpperSat_h
  %1888 = bitcast double %_rtB__AirData_d_alpha1480 to i64
  %1889 = bitcast double %_rtP__Saturation_UpperSat_h to i64
  br i1 %1887, label %true119, label %false120

merge335:                                         ; preds = %false122, %true121, %true119
  %S_1494 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1494, i32 21, i32 218, i32 104)
  %S_1495 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1495, i32 21, i32 219, i32 104)
  %S_1496 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1496, i32 21, i32 220, i32 104)
  %S_1497 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1497, i32 21, i32 221, i32 104)
  %S_1498 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1498, i32 21, i32 222, i32 104)
  %S_1499 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1499, i32 21, i32 223, i32 104)
  %S_1500 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1500, i32 21, i32 224, i32 104)
  %S_1501 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1501, i32 21, i32 225, i32 104)
  %S_1502 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1502, i32 21, i32 226, i32 104)
  %S_1503 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1503, i32 21, i32 227, i32 104)
  %S_1504 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1504, i32 21, i32 228, i32 104)
  %S_1505 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1505, i32 21, i32 229, i32 104)
  %_rtB_1506 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1890 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1506, i64 0, i32 14
  %1891 = bitcast double* %1890 to i64*
  %_rtB__Product115072700 = load i64, i64* %1891, align 1
  %1892 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1506, i64 0, i32 171
  %1893 = bitcast [3 x double]* %1892 to i64*
  store i64 %_rtB__Product115072700, i64* %1893, align 1
  %_rtB_1509 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1894 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1509, i64 0, i32 15
  %1895 = bitcast double* %1894 to i64*
  %_rtB__Product215102701 = load i64, i64* %1895, align 1
  %1896 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1509, i64 0, i32 171, i64 1
  %1897 = bitcast double* %1896 to i64*
  store i64 %_rtB__Product215102701, i64* %1897, align 1
  %_rtB_1512 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1898 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1512, i64 0, i32 16
  %1899 = bitcast double* %1898 to i64*
  %_rtB__Product315132702 = load i64, i64* %1899, align 1
  %1900 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1512, i64 0, i32 171, i64 2
  %1901 = bitcast double* %1900 to i64*
  store i64 %_rtB__Product315132702, i64* %1901, align 1
  %S_1515 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_1515, i32 21, i32 231, i32 104)
  br label %false114

merge337:                                         ; preds = %false126, %true125, %true123
  %rtb_C_Y_delta_a_1820 = phi double [ %1204, %true123 ], [ %1210, %true125 ], [ %1213, %false126 ]
  %1902 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1516, i64 0, i32 186
  %_rtP__Lw_Gain = load double, double* %1902, align 1
  %tmp124 = fmul double %_rtP__Lw_Gain, %rtb_C_Y_delta_a_1820
  store double %tmp124, double* %rtb_TriggerWave_, align 8
  %_rtP__Lw_Gain1531 = load double, double* %1902, align 1
  %1903 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1517, i64 0, i32 113
  %_rtB__UnitConversion_j = load double, double* %1903, align 1
  %tmp125 = fmul double %_rtP__Lw_Gain1531, %_rtB__UnitConversion_j
  store double %tmp125, double* %rtb_C_Y_delta_r_, align 8
  %1904 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1516, i64 0, i32 291
  %_rtP__PreLookUpIndexSearchaltitude_DiagnosticForOutOfRangeInput = load i8, i8* %1904, align 1
  %1905 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1516, i64 0, i32 187, i64 0
  %_rtP__PreLookUpIndexSearchaltitude_BreakpointsData_el = load double, double* %1905, align 1
  %1906 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1516, i64 0, i32 187, i64 11
  %_rtP__PreLookUpIndexSearchaltitude_BreakpointsData_el1537 = load double, double* %1906, align 1
  %S_1538 = load i8*, i8** %S_, align 8
  call void @X8_oorCheck(i8 %_rtP__PreLookUpIndexSearchaltitude_DiagnosticForOutOfRangeInput, double %tmp123, double %_rtP__PreLookUpIndexSearchaltitude_BreakpointsData_el, double %_rtP__PreLookUpIndexSearchaltitude_BreakpointsData_el1537, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i64 0, i64 0), i8* getelementptr inbounds ([154 x i8], [154 x i8]* @3, i64 0, i64 0), i8* %S_1538)
  %rtb_C_L_delta_e_1539 = load double, double* %rtb_C_L_delta_e_, align 8
  %_rtP_1540 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1907 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1540, i64 0, i32 187, i64 0
  %1908 = getelementptr inbounds [2 x double], [2 x double]* %frac_, i64 0, i64 0
  %_rtDW_1541 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %1909 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_1541, i64 0, i32 123
  %1910 = call i32 @plook_bincpa(double %rtb_C_L_delta_e_1539, double* %1907, i32 11, double* %1908, i32* %1909)
  %1911 = getelementptr inbounds [2 x i32], [2 x i32]* %bpIndex_, i64 0, i64 0
  store i32 %1910, i32* %1911, align 4
  %_rtB_1542 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1912 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1542, i64 0, i32 114
  %1913 = bitcast double* %1912 to i64*
  %_rtB__PreLookUpIndexSearchprobofexceed_o22623 = load i64, i64* %1913, align 1
  %1914 = getelementptr inbounds [2 x double], [2 x double]* %frac_, i64 0, i64 1
  %1915 = bitcast double* %1914 to i64*
  store i64 %_rtB__PreLookUpIndexSearchprobofexceed_o22623, i64* %1915, align 8
  %1916 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1542, i64 0, i32 172
  %_rtB__PreLookUpIndexSearchprobofexceed_o1 = load i32, i32* %1916, align 1
  %1917 = getelementptr inbounds [2 x i32], [2 x i32]* %bpIndex_, i64 0, i64 1
  store i32 %_rtB__PreLookUpIndexSearchprobofexceed_o1, i32* %1917, align 4
  %_rtP_1544 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1918 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1544, i64 0, i32 188, i64 0
  %1919 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1544, i64 0, i32 290, i64 0
  %1920 = call double @intrp2d_la_pw(i32* %1911, double* %1908, double* %1918, i32 12, i32* %1919)
  store double %1920, double* %rtb_C_D_delta_e_, align 8
  %vm_ssIsSampleHitVar1_1546 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_1546, i32* %i_, align 4
  %1921 = icmp eq i32 %vm_ssIsSampleHitVar1_1546, 0
  br i1 %1921, label %false128, label %true127

merge339:                                         ; preds = %true141, %false142
  %storemerge2677 = phi double [ %tmp136, %true141 ], [ %1272, %false142 ]
  store double %storemerge2677, double* %rtb_C_n_delta_a_, align 8
  %_rtB_1612 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1922 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1612, i64 0, i32 144
  %_rtB__Constant1_l = load double, double* %1922, align 1
  %tmp137 = fdiv double %_rtB__Constant1_l, %storemerge2677
  %1923 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1612, i64 0, i32 110
  %_rtB__sigma_wg = load double, double* %1923, align 1
  %tmp138 = fmul double %tmp137, %_rtB__sigma_wg
  %_rtP_1615 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1924 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1615, i64 0, i32 3
  %_rtP__u_Gain = load double, double* %1924, align 1
  %tmp139 = fmul double %_rtP__u_Gain, %tmp131
  %1925 = call double @muDoubleScalarSqrt(double %tmp139)
  %tmp140 = fmul double %tmp138, %1925
  %_rtB_1617 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1926 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1617, i64 0, i32 66, i64 3
  %_rtB__Product_n_el = load double, double* %1926, align 1
  %tmp141 = fmul double %tmp140, %_rtB__Product_n_el
  store double %tmp141, double* %rtb_C_n_delta_r_, align 8
  %rtb_C_m_delta_e_1618 = load double, double* %rtb_C_m_delta_e_, align 8
  %1927 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1617, i64 0, i32 111
  %_rtB__UnitConversion_d1620 = load double, double* %1927, align 1
  %tmp142 = fmul double %rtb_C_m_delta_e_1618, %_rtB__UnitConversion_d1620
  store double %tmp142, double* %rtb_C_n_delta_a_, align 8
  %1928 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1617, i64 0, i32 143
  %_rtB__Constant_g = load double, double* %1928, align 1
  %_rtP_1622 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1929 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1622, i64 0, i32 4
  %_rtP__dt_Gain = load double, double* %1929, align 1
  %tmp143 = fmul double %_rtP__dt_Gain, %tmp131
  %tmp144 = fsub double %_rtB__Constant_g, %tmp143
  store double %tmp144, double* %rtb_C_l_delta_a_, align 8
  %vm_ssIsSampleHitVar1_1624 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_1624, i32* %i_, align 4
  %1930 = icmp eq i32 %vm_ssIsSampleHitVar1_1624, 0
  br i1 %1930, label %false144, label %true143

merge340:                                         ; preds = %true145, %false146
  %storemerge2674 = phi double [ %tmp148, %true145 ], [ %1291, %false146 ]
  store double %storemerge2674, double* %rtb_C_n_delta_a_, align 8
  %_rtB_1646 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1931 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1646, i64 0, i32 144
  %_rtB__Constant1_l1647 = load double, double* %1931, align 1
  %tmp149 = fdiv double %_rtB__Constant1_l1647, %storemerge2674
  %rtb_C_D_delta_e_1649 = load double, double* %rtb_C_D_delta_e_, align 8
  %tmp150 = fmul double %tmp149, %rtb_C_D_delta_e_1649
  %_rtP_1650 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1932 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1650, i64 0, i32 3
  %_rtP__u_Gain1651 = load double, double* %1932, align 1
  %tmp151 = fmul double %_rtP__u_Gain1651, %tmp133
  %1933 = call double @muDoubleScalarSqrt(double %tmp151)
  %tmp152 = fmul double %tmp150, %1933
  %_rtB_1653 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1934 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1653, i64 0, i32 66, i64 3
  %_rtB__Product_n_el1654 = load double, double* %1934, align 1
  %tmp153 = fmul double %tmp152, %_rtB__Product_n_el1654
  %1935 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1653, i64 0, i32 143
  %_rtB__Constant_g1656 = load double, double* %1935, align 1
  %_rtP_1657 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1936 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1657, i64 0, i32 4
  %_rtP__dt_Gain1658 = load double, double* %1936, align 1
  %tmp154 = fmul double %_rtP__dt_Gain1658, %tmp133
  %tmp155 = fsub double %_rtB__Constant_g1656, %tmp154
  %1937 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1653, i64 0, i32 141, i64 1
  %_rtB__UnitDelay_l_el1661 = load double, double* %1937, align 1
  %tmp156 = fmul double %tmp155, %_rtB__UnitDelay_l_el1661
  %tmp157 = fadd double %tmp153, %tmp156
  %1938 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1653, i64 0, i32 142, i64 1
  store double %tmp157, double* %1938, align 1
  %vm_ssIsMajorTimeStepVar5_1663 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1939 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_1663, 0
  br i1 %1939, label %false140, label %true147

merge344:                                         ; preds = %false188, %true187, %true185
  %.sink.sink = phi i64 [ %1391, %true185 ], [ %1424, %true187 ], [ %1390, %false188 ]
  %1940 = bitcast i64 %.sink.sink to double
  %tmp186 = fmul double %1940, 8.230000e-04
  %tmp187 = fadd double %tmp186, 1.770000e-01
  store double %tmp187, double* %rtb_C_Y_delta_r_, align 8
  %1941 = fcmp olt double %tmp187, 0.000000e+00
  br i1 %1941, label %true189, label %false190

merge345:                                         ; preds = %true189, %false190
  %storemerge2656 = phi double [ %tmp189, %true189 ], [ %1430, %false190 ]
  store double %storemerge2656, double* %rtb_C_Y_delta_r_, align 8
  %tmp190 = fdiv double 1.000000e+00, %storemerge2656
  %_rtB_1814 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1942 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1814, i64 0, i32 110
  %_rtB__sigma_wg1815 = load double, double* %1942, align 1
  %tmp191 = fmul double %tmp190, %_rtB__sigma_wg1815
  store double %tmp191, double* %rtb_C_m_delta_e_, align 8
  %tmp192 = fmul double %rtb_C_Y_delta_a_1820, 8.230000e-04
  %tmp193 = fadd double %tmp192, 1.770000e-01
  store double %tmp193, double* %rtb_C_Y_delta_r_, align 8
  %1943 = fcmp olt double %tmp193, 0.000000e+00
  br i1 %1943, label %true191, label %false192

merge346:                                         ; preds = %true191, %false192
  %storemerge2655 = phi double [ %tmp195, %true191 ], [ %1432, %false192 ]
  store double %storemerge2655, double* %rtb_C_Y_delta_r_, align 8
  %tmp196 = fdiv double %rtb_C_Y_delta_a_1820, %storemerge2655
  store double %tmp196, double* %rtb_C_Y_delta_a_, align 8
  %_rtP_1822 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %1944 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_1822, i64 0, i32 194
  %_rtP__Lv_Gain = load double, double* %1944, align 1
  %tmp197 = fmul double %tmp196, %_rtP__Lv_Gain
  store double %tmp197, double* %rtb_TriggerWave_, align 8
  %_rtP__Lv_Gain1825 = load double, double* %1944, align 1
  %_rtB_1826 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %1945 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_1826, i64 0, i32 113
  %_rtB__UnitConversion_j1827 = load double, double* %1945, align 1
  %tmp198 = fmul double %_rtP__Lv_Gain1825, %_rtB__UnitConversion_j1827
  store double %tmp198, double* %rtb_C_Y_delta_r_, align 8
  %vm_ssIsSampleHitVar1_1828 = load i32, i32* %vm_ssIsSampleHitVar1_, align 4
  store i32 %vm_ssIsSampleHitVar1_1828, i32* %i_, align 4
  %1946 = icmp eq i32 %vm_ssIsSampleHitVar1_1828, 0
  %vm_ssIsMajorTimeStepVar5_1830 = load i32, i32* %vm_ssIsMajorTimeStepVar5_, align 4
  %1947 = icmp eq i32 %vm_ssIsMajorTimeStepVar5_1830, 0
  %or.cond2913 = or i1 %1946, %1947
  br i1 %or.cond2913, label %false194, label %true195

merge352:                                         ; preds = %true247, %false248
  %rtAction_2117 = phi i8 [ %storemerge2634, %true247 ], [ %_rtDW__ifHeightMaxlowaltitudeelseifHeightMinisotropicaltitude_ActiveSubsystem, %false248 ]
  switch i8 %rtAction_2117, label %default256 [
    i8 0, label %case253
    i8 1, label %case254
    i8 2, label %case255
  ]

merge353:                                         ; preds = %true257, %case253
  %i_2157 = phi i32 [ %tmp312, %true257 ], [ 0, %case253 ]
  store i32 %i_2157, i32* %i_, align 4
  %1948 = icmp slt i32 %i_2157, 3
  br i1 %1948, label %true257, label %false258

merge354:                                         ; preds = %true263, %case255
  %i_2355 = phi i32 [ %tmp397, %true263 ], [ 0, %case255 ]
  store i32 %i_2355, i32* %i_, align 4
  %1949 = icmp slt i32 %i_2355, 3
  br i1 %1949, label %true263, label %false264

merge357:                                         ; preds = %true267, %false268
  %rtAction_2222 = phi i8 [ %storemerge2629, %true267 ], [ %_rtDW__ifHeightMaxlowaltitudeelseifHeightMinisotropicaltitude_ActiveSubsystem_h, %false268 ]
  switch i8 %rtAction_2222, label %merge360 [
    i8 0, label %case273
    i8 1, label %case274
    i8 2, label %case275
  ]

merge358:                                         ; preds = %true277, %case273
  %i_2250 = phi i32 [ %tmp348, %true277 ], [ 0, %case273 ]
  store i32 %i_2250, i32* %i_, align 4
  %1950 = icmp slt i32 %i_2250, 3
  br i1 %1950, label %true277, label %false278

merge359:                                         ; preds = %true283, %case275
  %i_2343 = phi i32 [ %tmp389, %true283 ], [ 0, %case275 ]
  store i32 %i_2343, i32* %i_, align 4
  %1951 = icmp slt i32 %i_2343, 3
  br i1 %1951, label %true283, label %false284

merge360:                                         ; preds = %true285, %false284, %true281, %case274, %true279, %false278, %merge357, %true287
  %i_2331 = phi i32 [ %tmp381, %true287 ], [ 0, %merge357 ], [ 0, %false278 ], [ 0, %true279 ], [ 0, %case274 ], [ 0, %true281 ], [ 0, %false284 ], [ 0, %true285 ]
  store i32 %i_2331, i32* %i_, align 4
  %1952 = icmp slt i32 %i_2331, 3
  br i1 %1952, label %true287, label %false288

merge362:                                         ; preds = %false302, %true301, %true299
  %tmp420 = add i32 %i_2426, 1
  br label %merge331

merge363:                                         ; preds = %true307, %false306.false308_crit_edge, %true305
  %.pre-phi = phi i64* [ %1795, %true305 ], [ %.pre2909, %false306.false308_crit_edge ], [ %1800, %true307 ]
  %rtb_u2_idx_2_24842736 = phi i64 [ %1793, %true305 ], [ %1798, %true307 ], [ %rtb_u2_idx_2_248427362866, %false306.false308_crit_edge ]
  %1953 = getelementptr inbounds [3 x double], [3 x double]* %rtb_Sum_ae_, i64 0, i64 %953
  %1954 = bitcast double* %1953 to i64*
  store i64 %rtb_u2_idx_2_24842736, i64* %1954, align 8
  %tmp440 = add i32 %i_2485, 1
  br label %merge330
}

declare double @vm_ssGetTStart(i8*)

declare double @vm_ssGetTaskTime(i8*, i32)

declare i8* @vm_ssGetPrevZCSigState(i8*)

declare i8* @vm_ssGetX(i8*)

declare void @vm_ssSetBlockStateForSolverChangedAtMajorStep(i8*)

declare i32 @vm_ssIsSpecialSampleHit(i8*, i32, i32, i32)

define double @look2_linlcpw(double %u0, double %u1, double* %bp0, double* %bp1, double* %table, i32* %maxIndex, i32 %stride) {
look2_linlcpw_entry:
  %u0_ = alloca double, align 8
  store double %u0, double* %u0_, align 8
  %u1_ = alloca double, align 8
  store double %u1, double* %u1_, align 8
  %bp0_ = alloca double*, align 8
  store double* %bp0, double** %bp0_, align 8
  %bp1_ = alloca double*, align 8
  store double* %bp1, double** %bp1_, align 8
  %table_ = alloca double*, align 8
  store double* %table, double** %table_, align 8
  %maxIndex_ = alloca i32*, align 8
  store i32* %maxIndex, i32** %maxIndex_, align 8
  %stride_ = alloca i32, align 4
  store i32 %stride, i32* %stride_, align 4
  %frac_ = alloca double, align 8
  %bpIndices_ = alloca [2 x i32], align 4
  %fractions_ = alloca [2 x double], align 8
  %yL_1d_ = alloca double, align 8
  %bpIdx_ = alloca i32, align 4
  %y_ = alloca double, align 8
  %bp0__el = load double, double* %bp0, align 1
  %0 = fcmp ugt double %u0, %bp0__el
  br i1 %0, label %false, label %true

true:                                             ; preds = %look2_linlcpw_entry
  store i32 0, i32* %bpIdx_, align 4
  br label %merge16

false:                                            ; preds = %look2_linlcpw_entry
  %maxIndex__el = load i32, i32* %maxIndex, align 1
  %1 = sext i32 %maxIndex__el to i64
  %2 = getelementptr inbounds double, double* %bp0, i64 %1
  %bp0__el25 = load double, double* %2, align 1
  %3 = fcmp olt double %u0, %bp0__el25
  br i1 %3, label %true1, label %false2

true1:                                            ; preds = %false
  %4 = lshr i32 %maxIndex__el, 1
  br label %merge

false2:                                           ; preds = %false
  %tmp0 = add i32 %maxIndex__el, -1
  store i32 %tmp0, i32* %bpIdx_, align 4
  br label %merge16

true3:                                            ; preds = %merge
  %tmp7 = add i32 %bpIdx_49, -1
  br label %merge

false4:                                           ; preds = %true5, %merge
  %bpIdx_46 = phi i32 [ %tmp1, %true5 ], [ %bpIdx_49, %merge ]
  %tmp1 = add i32 %bpIdx_46, 1
  %5 = sext i32 %tmp1 to i64
  %6 = getelementptr inbounds double, double* %bp0, i64 %5
  %bp0__el37 = load double, double* %6, align 1
  %7 = fcmp ult double %u0, %bp0__el37
  br i1 %7, label %false6, label %true5

true5:                                            ; preds = %false4
  store i32 %tmp1, i32* %bpIdx_, align 4
  br label %false4

false6:                                           ; preds = %false4
  %8 = sext i32 %bpIdx_46 to i64
  %9 = getelementptr inbounds double, double* %bp0, i64 %8
  %bp0__el41 = load double, double* %9, align 1
  %tmp2 = fsub double %u0, %bp0__el41
  %tmp4 = fsub double %bp0__el37, %bp0__el41
  %tmp5 = fdiv double %tmp2, %tmp4
  br label %merge16

true7:                                            ; preds = %merge16
  store i32 0, i32* %bpIdx_, align 4
  br label %merge19

false8:                                           ; preds = %merge16
  %10 = getelementptr inbounds i32, i32* %maxIndex, i64 1
  %maxIndex__el57 = load i32, i32* %10, align 1
  %11 = sext i32 %maxIndex__el57 to i64
  %12 = getelementptr inbounds double, double* %bp1, i64 %11
  %bp1__el58 = load double, double* %12, align 1
  %13 = fcmp olt double %u1, %bp1__el58
  br i1 %13, label %true9, label %false10

true9:                                            ; preds = %false8
  %14 = lshr i32 %maxIndex__el57, 1
  br label %merge17

false10:                                          ; preds = %false8
  %tmp8 = add i32 %maxIndex__el57, -1
  store i32 %tmp8, i32* %bpIdx_, align 4
  br label %merge19

true11:                                           ; preds = %merge17
  %tmp15 = add i32 %bpIdx_82, -1
  br label %merge17

false12:                                          ; preds = %true13, %merge17
  %bpIdx_79 = phi i32 [ %tmp9, %true13 ], [ %bpIdx_82, %merge17 ]
  %tmp9 = add i32 %bpIdx_79, 1
  %15 = sext i32 %tmp9 to i64
  %16 = getelementptr inbounds double, double* %bp1, i64 %15
  %bp1__el70 = load double, double* %16, align 1
  %17 = fcmp ult double %u1, %bp1__el70
  br i1 %17, label %false14, label %true13

true13:                                           ; preds = %false12
  store i32 %tmp9, i32* %bpIdx_, align 4
  br label %false12

false14:                                          ; preds = %false12
  %18 = sext i32 %bpIdx_79 to i64
  %19 = getelementptr inbounds double, double* %bp1, i64 %18
  %bp1__el74 = load double, double* %19, align 1
  %tmp10 = fsub double %u1, %bp1__el74
  %tmp12 = fsub double %bp1__el70, %bp1__el74
  %tmp13 = fdiv double %tmp10, %tmp12
  br label %merge19

merge:                                            ; preds = %true3, %true1
  %bpIdx_49 = phi i32 [ %tmp7, %true3 ], [ %4, %true1 ]
  store i32 %bpIdx_49, i32* %bpIdx_, align 4
  %20 = sext i32 %bpIdx_49 to i64
  %21 = getelementptr inbounds double, double* %bp0, i64 %20
  %bp0__el33 = load double, double* %21, align 1
  %22 = fcmp olt double %u0, %bp0__el33
  br i1 %22, label %true3, label %false4

merge16:                                          ; preds = %false2, %false6, %true
  %bpIndices__el = phi i32 [ 0, %true ], [ %bpIdx_46, %false6 ], [ %tmp0, %false2 ]
  %fractions__el101 = phi double [ 0.000000e+00, %true ], [ %tmp5, %false6 ], [ 1.000000e+00, %false2 ]
  store double %fractions__el101, double* %frac_, align 8
  %23 = getelementptr inbounds [2 x double], [2 x double]* %fractions_, i64 0, i64 0
  store double %fractions__el101, double* %23, align 8
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %bpIndices_, i64 0, i64 0
  store i32 %bpIndices__el, i32* %24, align 4
  %bp1__el = load double, double* %bp1, align 1
  %25 = fcmp ugt double %u1, %bp1__el
  br i1 %25, label %false8, label %true7

merge17:                                          ; preds = %true11, %true9
  %bpIdx_82 = phi i32 [ %tmp15, %true11 ], [ %14, %true9 ]
  store i32 %bpIdx_82, i32* %bpIdx_, align 4
  %26 = sext i32 %bpIdx_82 to i64
  %27 = getelementptr inbounds double, double* %bp1, i64 %26
  %bp1__el66 = load double, double* %27, align 1
  %28 = fcmp olt double %u1, %bp1__el66
  br i1 %28, label %true11, label %false12

merge19:                                          ; preds = %false10, %false14, %true7
  %bpIdx_83 = phi i32 [ 0, %true7 ], [ %bpIdx_79, %false14 ], [ %tmp8, %false10 ]
  %storemerge111 = phi double [ 0.000000e+00, %true7 ], [ %tmp13, %false14 ], [ 1.000000e+00, %false10 ]
  store double %storemerge111, double* %frac_, align 8
  %tmp16 = mul i32 %stride, %bpIdx_83
  %tmp17 = add i32 %tmp16, %bpIndices__el
  store i32 %tmp17, i32* %bpIdx_, align 4
  %tmp18 = add i32 %tmp17, 1
  %29 = sext i32 %tmp18 to i64
  %30 = getelementptr inbounds double, double* %table, i64 %29
  %table__el = load double, double* %30, align 1
  %31 = sext i32 %tmp17 to i64
  %32 = getelementptr inbounds double, double* %table, i64 %31
  %table__el89 = load double, double* %32, align 1
  %tmp19 = fsub double %table__el, %table__el89
  %tmp20 = fmul double %tmp19, %fractions__el101
  %tmp21 = fadd double %tmp20, %table__el89
  store double %tmp21, double* %yL_1d_, align 8
  %tmp22 = add i32 %stride, %tmp17
  store i32 %tmp22, i32* %bpIdx_, align 4
  %tmp23 = add i32 %tmp22, 1
  %33 = sext i32 %tmp23 to i64
  %34 = getelementptr inbounds double, double* %table, i64 %33
  %table__el97 = load double, double* %34, align 1
  %35 = sext i32 %tmp22 to i64
  %36 = getelementptr inbounds double, double* %table, i64 %35
  %table__el100 = load double, double* %36, align 1
  %tmp24 = fsub double %table__el97, %table__el100
  %tmp25 = fmul double %tmp24, %fractions__el101
  %tmp26 = fadd double %tmp25, %table__el100
  %tmp27 = fsub double %tmp26, %tmp21
  %tmp28 = fmul double %tmp27, %storemerge111
  %tmp29 = fadd double %tmp21, %tmp28
  store double %tmp29, double* %y_, align 8
  ret double %tmp29
}

define double @look2_linlxpw(double %u0, double %u1, double* %bp0, double* %bp1, double* %table, i32* %maxIndex, i32 %stride) {
look2_linlxpw_entry:
  %u0_ = alloca double, align 8
  store double %u0, double* %u0_, align 8
  %u1_ = alloca double, align 8
  store double %u1, double* %u1_, align 8
  %bp0_ = alloca double*, align 8
  store double* %bp0, double** %bp0_, align 8
  %bp1_ = alloca double*, align 8
  store double* %bp1, double** %bp1_, align 8
  %table_ = alloca double*, align 8
  store double* %table, double** %table_, align 8
  %maxIndex_ = alloca i32*, align 8
  store i32* %maxIndex, i32** %maxIndex_, align 8
  %stride_ = alloca i32, align 4
  store i32 %stride, i32* %stride_, align 4
  %frac_ = alloca double, align 8
  %bpIndices_ = alloca [2 x i32], align 4
  %fractions_ = alloca [2 x double], align 8
  %yL_1d_ = alloca double, align 8
  %bpIdx_ = alloca i32, align 4
  %y_ = alloca double, align 8
  %bp0__el = load double, double* %bp0, align 1
  %0 = fcmp ugt double %u0, %bp0__el
  br i1 %0, label %false, label %true

true:                                             ; preds = %look2_linlxpw_entry
  store i32 0, i32* %bpIdx_, align 4
  %tmp13 = fsub double %u0, %bp0__el
  %1 = getelementptr inbounds double, double* %bp0, i64 1
  %bp0__el67 = load double, double* %1, align 1
  %tmp14 = fsub double %bp0__el67, %bp0__el
  %tmp15 = fdiv double %tmp13, %tmp14
  br label %merge16

false:                                            ; preds = %look2_linlxpw_entry
  %maxIndex__el = load i32, i32* %maxIndex, align 1
  %2 = sext i32 %maxIndex__el to i64
  %3 = getelementptr inbounds double, double* %bp0, i64 %2
  %bp0__el25 = load double, double* %3, align 1
  %4 = fcmp olt double %u0, %bp0__el25
  br i1 %4, label %true1, label %false2

true1:                                            ; preds = %false
  %5 = lshr i32 %maxIndex__el, 1
  br label %merge

false2:                                           ; preds = %false
  %tmp0 = add i32 %maxIndex__el, -1
  store i32 %tmp0, i32* %bpIdx_, align 4
  %6 = sext i32 %tmp0 to i64
  %7 = getelementptr inbounds double, double* %bp0, i64 %6
  %bp0__el32 = load double, double* %7, align 1
  %tmp2 = fsub double %u0, %bp0__el32
  %tmp4 = fsub double %bp0__el25, %bp0__el32
  %tmp5 = fdiv double %tmp2, %tmp4
  br label %merge16

true3:                                            ; preds = %merge
  %tmp12 = add i32 %bpIdx_62, -1
  br label %merge

false4:                                           ; preds = %true5, %merge
  %bpIdx_59 = phi i32 [ %tmp6, %true5 ], [ %bpIdx_62, %merge ]
  %tmp6 = add i32 %bpIdx_59, 1
  %8 = sext i32 %tmp6 to i64
  %9 = getelementptr inbounds double, double* %bp0, i64 %8
  %bp0__el50 = load double, double* %9, align 1
  %10 = fcmp ult double %u0, %bp0__el50
  br i1 %10, label %false6, label %true5

true5:                                            ; preds = %false4
  store i32 %tmp6, i32* %bpIdx_, align 4
  br label %false4

false6:                                           ; preds = %false4
  %11 = sext i32 %bpIdx_59 to i64
  %12 = getelementptr inbounds double, double* %bp0, i64 %11
  %bp0__el54 = load double, double* %12, align 1
  %tmp7 = fsub double %u0, %bp0__el54
  %tmp9 = fsub double %bp0__el50, %bp0__el54
  %tmp10 = fdiv double %tmp7, %tmp9
  br label %merge16

true7:                                            ; preds = %merge16
  store i32 0, i32* %bpIdx_, align 4
  %tmp29 = fsub double %u1, %bp1__el
  %13 = getelementptr inbounds double, double* %bp1, i64 1
  %bp1__el120 = load double, double* %13, align 1
  %tmp30 = fsub double %bp1__el120, %bp1__el
  %tmp31 = fdiv double %tmp29, %tmp30
  br label %merge19

false8:                                           ; preds = %merge16
  %14 = getelementptr inbounds i32, i32* %maxIndex, i64 1
  %maxIndex__el77 = load i32, i32* %14, align 1
  %15 = sext i32 %maxIndex__el77 to i64
  %16 = getelementptr inbounds double, double* %bp1, i64 %15
  %bp1__el78 = load double, double* %16, align 1
  %17 = fcmp olt double %u1, %bp1__el78
  br i1 %17, label %true9, label %false10

true9:                                            ; preds = %false8
  %18 = lshr i32 %maxIndex__el77, 1
  br label %merge17

false10:                                          ; preds = %false8
  %tmp16 = add i32 %maxIndex__el77, -1
  store i32 %tmp16, i32* %bpIdx_, align 4
  %19 = sext i32 %tmp16 to i64
  %20 = getelementptr inbounds double, double* %bp1, i64 %19
  %bp1__el85 = load double, double* %20, align 1
  %tmp18 = fsub double %u1, %bp1__el85
  %tmp20 = fsub double %bp1__el78, %bp1__el85
  %tmp21 = fdiv double %tmp18, %tmp20
  br label %merge19

true11:                                           ; preds = %merge17
  %tmp28 = add i32 %bpIdx_115, -1
  br label %merge17

false12:                                          ; preds = %true13, %merge17
  %bpIdx_112 = phi i32 [ %tmp22, %true13 ], [ %bpIdx_115, %merge17 ]
  %tmp22 = add i32 %bpIdx_112, 1
  %21 = sext i32 %tmp22 to i64
  %22 = getelementptr inbounds double, double* %bp1, i64 %21
  %bp1__el103 = load double, double* %22, align 1
  %23 = fcmp ult double %u1, %bp1__el103
  br i1 %23, label %false14, label %true13

true13:                                           ; preds = %false12
  store i32 %tmp22, i32* %bpIdx_, align 4
  br label %false12

false14:                                          ; preds = %false12
  %24 = sext i32 %bpIdx_112 to i64
  %25 = getelementptr inbounds double, double* %bp1, i64 %24
  %bp1__el107 = load double, double* %25, align 1
  %tmp23 = fsub double %u1, %bp1__el107
  %tmp25 = fsub double %bp1__el103, %bp1__el107
  %tmp26 = fdiv double %tmp23, %tmp25
  br label %merge19

merge:                                            ; preds = %true3, %true1
  %bpIdx_62 = phi i32 [ %tmp12, %true3 ], [ %5, %true1 ]
  store i32 %bpIdx_62, i32* %bpIdx_, align 4
  %26 = sext i32 %bpIdx_62 to i64
  %27 = getelementptr inbounds double, double* %bp0, i64 %26
  %bp0__el46 = load double, double* %27, align 1
  %28 = fcmp olt double %u0, %bp0__el46
  br i1 %28, label %true3, label %false4

merge16:                                          ; preds = %false2, %false6, %true
  %bpIndices__el = phi i32 [ 0, %true ], [ %bpIdx_59, %false6 ], [ %tmp0, %false2 ]
  %fractions__el141 = phi double [ %tmp15, %true ], [ %tmp10, %false6 ], [ %tmp5, %false2 ]
  store double %fractions__el141, double* %frac_, align 8
  %29 = getelementptr inbounds [2 x double], [2 x double]* %fractions_, i64 0, i64 0
  store double %fractions__el141, double* %29, align 8
  %30 = getelementptr inbounds [2 x i32], [2 x i32]* %bpIndices_, i64 0, i64 0
  store i32 %bpIndices__el, i32* %30, align 4
  %bp1__el = load double, double* %bp1, align 1
  %31 = fcmp ugt double %u1, %bp1__el
  br i1 %31, label %false8, label %true7

merge17:                                          ; preds = %true11, %true9
  %bpIdx_115 = phi i32 [ %tmp28, %true11 ], [ %18, %true9 ]
  store i32 %bpIdx_115, i32* %bpIdx_, align 4
  %32 = sext i32 %bpIdx_115 to i64
  %33 = getelementptr inbounds double, double* %bp1, i64 %32
  %bp1__el99 = load double, double* %33, align 1
  %34 = fcmp olt double %u1, %bp1__el99
  br i1 %34, label %true11, label %false12

merge19:                                          ; preds = %false10, %false14, %true7
  %bpIdx_123 = phi i32 [ 0, %true7 ], [ %bpIdx_112, %false14 ], [ %tmp16, %false10 ]
  %storemerge151 = phi double [ %tmp31, %true7 ], [ %tmp26, %false14 ], [ %tmp21, %false10 ]
  store double %storemerge151, double* %frac_, align 8
  %tmp32 = mul i32 %stride, %bpIdx_123
  %tmp33 = add i32 %tmp32, %bpIndices__el
  store i32 %tmp33, i32* %bpIdx_, align 4
  %tmp34 = add i32 %tmp33, 1
  %35 = sext i32 %tmp34 to i64
  %36 = getelementptr inbounds double, double* %table, i64 %35
  %table__el = load double, double* %36, align 1
  %37 = sext i32 %tmp33 to i64
  %38 = getelementptr inbounds double, double* %table, i64 %37
  %table__el129 = load double, double* %38, align 1
  %tmp35 = fsub double %table__el, %table__el129
  %tmp36 = fmul double %tmp35, %fractions__el141
  %tmp37 = fadd double %tmp36, %table__el129
  store double %tmp37, double* %yL_1d_, align 8
  %tmp38 = add i32 %stride, %tmp33
  store i32 %tmp38, i32* %bpIdx_, align 4
  %tmp39 = add i32 %tmp38, 1
  %39 = sext i32 %tmp39 to i64
  %40 = getelementptr inbounds double, double* %table, i64 %39
  %table__el137 = load double, double* %40, align 1
  %41 = sext i32 %tmp38 to i64
  %42 = getelementptr inbounds double, double* %table, i64 %41
  %table__el140 = load double, double* %42, align 1
  %tmp40 = fsub double %table__el137, %table__el140
  %tmp41 = fmul double %tmp40, %fractions__el141
  %tmp42 = fadd double %tmp41, %table__el140
  %tmp43 = fsub double %tmp42, %tmp37
  %tmp44 = fmul double %tmp43, %storemerge151
  %tmp45 = fadd double %tmp37, %tmp44
  store double %tmp45, double* %y_, align 8
  ret double %tmp45
}

define double @intrp2d_la_pw(i32* %bpIndex, double* %frac, double* %table, i32 %stride, i32* %maxIndex) {
intrp2d_la_pw_entry:
  %bpIndex_ = alloca i32*, align 8
  store i32* %bpIndex, i32** %bpIndex_, align 8
  %frac_ = alloca double*, align 8
  store double* %frac, double** %frac_, align 8
  %table_ = alloca double*, align 8
  store double* %table, double** %table_, align 8
  %stride_ = alloca i32, align 4
  store i32 %stride, i32* %stride_, align 4
  %maxIndex_ = alloca i32*, align 8
  store i32* %maxIndex, i32** %maxIndex_, align 8
  %yR_1d_ = alloca double, align 8
  %offset_1d_ = alloca i32, align 4
  %y_ = alloca double, align 8
  %0 = getelementptr inbounds i32, i32* %bpIndex, i64 1
  %bpIndex__el = load i32, i32* %0, align 1
  %tmp0 = mul i32 %stride, %bpIndex__el
  %bpIndex__el9 = load i32, i32* %bpIndex, align 1
  %tmp1 = add i32 %tmp0, %bpIndex__el9
  store i32 %tmp1, i32* %offset_1d_, align 4
  %maxIndex__el = load i32, i32* %maxIndex, align 1
  %1 = icmp eq i32 %bpIndex__el9, %maxIndex__el
  br i1 %1, label %true, label %false

true:                                             ; preds = %intrp2d_la_pw_entry
  %2 = sext i32 %tmp1 to i64
  %3 = getelementptr inbounds double, double* %table, i64 %2
  %4 = bitcast double* %3 to i64*
  %table__el2456 = load i64, i64* %4, align 1
  %5 = bitcast double* %y_ to i64*
  store i64 %table__el2456, i64* %5, align 8
  %6 = bitcast i64 %table__el2456 to double
  br label %merge

false:                                            ; preds = %intrp2d_la_pw_entry
  %tmp2 = add i32 %tmp1, 1
  %7 = sext i32 %tmp2 to i64
  %8 = getelementptr inbounds double, double* %table, i64 %7
  %table__el = load double, double* %8, align 1
  %9 = sext i32 %tmp1 to i64
  %10 = getelementptr inbounds double, double* %table, i64 %9
  %table__el17 = load double, double* %10, align 1
  %tmp3 = fsub double %table__el, %table__el17
  %frac__el = load double, double* %frac, align 1
  %tmp4 = fmul double %tmp3, %frac__el
  %tmp5 = fadd double %tmp4, %table__el17
  store double %tmp5, double* %y_, align 8
  br label %merge

true1:                                            ; preds = %merge5, %merge
  %y_54 = phi double [ %tmp13, %merge5 ], [ %y_5460, %merge ]
  ret double %y_54

false2:                                           ; preds = %merge
  %tmp6 = add i32 %stride, %tmp1
  store i32 %tmp6, i32* %offset_1d_, align 4
  br i1 %1, label %true3, label %false4

true3:                                            ; preds = %false2
  %11 = sext i32 %tmp6 to i64
  %12 = getelementptr inbounds double, double* %table, i64 %11
  %13 = bitcast double* %12 to i64*
  %table__el4855 = load i64, i64* %13, align 1
  %14 = bitcast double* %yR_1d_ to i64*
  store i64 %table__el4855, i64* %14, align 8
  %15 = bitcast i64 %table__el4855 to double
  br label %merge5

false4:                                           ; preds = %false2
  %tmp7 = add i32 %tmp6, 1
  %16 = sext i32 %tmp7 to i64
  %17 = getelementptr inbounds double, double* %table, i64 %16
  %table__el37 = load double, double* %17, align 1
  %18 = sext i32 %tmp6 to i64
  %19 = getelementptr inbounds double, double* %table, i64 %18
  %table__el40 = load double, double* %19, align 1
  %tmp8 = fsub double %table__el37, %table__el40
  %frac__el42 = load double, double* %frac, align 1
  %tmp9 = fmul double %tmp8, %frac__el42
  %tmp10 = fadd double %tmp9, %table__el40
  store double %tmp10, double* %yR_1d_, align 8
  br label %merge5

merge:                                            ; preds = %true, %false
  %y_5460 = phi double [ %6, %true ], [ %tmp5, %false ]
  %20 = getelementptr inbounds i32, i32* %maxIndex, i64 1
  %maxIndex__el28 = load i32, i32* %20, align 1
  %21 = icmp eq i32 %bpIndex__el, %maxIndex__el28
  br i1 %21, label %true1, label %false2

merge5:                                           ; preds = %true3, %false4
  %yR_1d_49 = phi double [ %15, %true3 ], [ %tmp10, %false4 ]
  %tmp11 = fsub double %yR_1d_49, %y_5460
  %22 = getelementptr inbounds double, double* %frac, i64 1
  %frac__el52 = load double, double* %22, align 1
  %tmp12 = fmul double %tmp11, %frac__el52
  %tmp13 = fadd double %y_5460, %tmp12
  store double %tmp13, double* %y_, align 8
  br label %true1
}

declare double @muDoubleScalarFloor(double)

declare double @muDoubleScalarPower(double, double)

define void @SystemInitialize(i8* %S) {
SystemInitialize_entry:
  %S_ = alloca i8*, align 8
  store i8* %S, i8** %S_, align 8
  %tseed_ = alloca i32, align 4
  %i_ = alloca i32, align 4
  %tmp_ = alloca double, align 8
  %_rtB_ = alloca %B_X8_T.43*, align 8
  %_rtP_ = alloca %P_X8_T.48*, align 8
  %_rtX_ = alloca %X_X8_T.50*, align 8
  %_rtDW_ = alloca %DW_X8_T.44*, align 8
  %vm_ssIsFirstInitCondVar0_ = alloca i8, align 1
  %0 = call i8 @vm_ssIsFirstInitCond(i8* %S)
  store i8 %0, i8* %vm_ssIsFirstInitCondVar0_, align 1
  %1 = call i8* @vm_ssGetRootDWork(i8* %S)
  %2 = bitcast %DW_X8_T.44** %_rtDW_ to i8**
  store i8* %1, i8** %2, align 8
  %3 = call i8* @vm_ssGetX(i8* %S)
  %4 = bitcast %X_X8_T.50** %_rtX_ to i8**
  store i8* %3, i8** %4, align 8
  %5 = call i8* @vm_ssGetModelRtp(i8* %S)
  %6 = bitcast %P_X8_T.48** %_rtP_ to i8**
  store i8* %5, i8** %6, align 8
  %7 = call i8* @vm__ssGetModelBlockIO(i8* %S)
  %8 = bitcast %B_X8_T.43** %_rtB_ to i8**
  store i8* %7, i8** %8, align 8
  %9 = icmp eq i8 %0, 0
  %10 = ptrtoint i8* %3 to i64
  %11 = inttoptr i64 %10 to %X_X8_T.50*
  br i1 %9, label %false, label %true

true:                                             ; preds = %SystemInitialize_entry
  %12 = call i8* @memset(i8* %3, i32 0, i32 104)
  br label %false

false:                                            ; preds = %SystemInitialize_entry, %true
  %_rtDW_60 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %13 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_60, i64 0, i32 126
  store i32 1, i32* %13, align 1
  br label %merge

true1:                                            ; preds = %merge
  %_rtP_279 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %14 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_279, i64 0, i32 55
  %15 = bitcast double* %14 to i64*
  %_rtP__Memory_InitialCondition336 = load i64, i64* %15, align 1
  %_rtDW_280 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %16 = sext i32 %i_281 to i64
  %17 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_280, i64 0, i32 16, i64 %16
  %18 = bitcast double* %17 to i64*
  store i64 %_rtP__Memory_InitialCondition336, i64* %18, align 1
  %tmp35 = add i32 %i_281, 1
  br label %merge

true3:                                            ; preds = %merge39
  %19 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_275, i64 0, i32 56
  %20 = bitcast double* %19 to i64*
  %_rtP__Memory_InitialCondition_l334 = load i64, i64* %20, align 1
  %_rtDW_276 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %21 = sext i32 %i_277 to i64
  %22 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_276, i64 0, i32 17, i64 %21
  %23 = bitcast double* %22 to i64*
  store i64 %_rtP__Memory_InitialCondition_l334, i64* %23, align 1
  %tmp34 = add i32 %i_277, 1
  br label %merge39

false4:                                           ; preds = %merge39
  %24 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_275, i64 0, i32 61
  %25 = bitcast double* %24 to i64*
  %_rtP__TmpRTBAtMultiportSwitchInport5_InitialCondition283 = load i64, i64* %25, align 1
  %_rtDW_64 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %26 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_64, i64 0, i32 18
  %27 = bitcast [4 x double]* %26 to i64*
  store i64 %_rtP__TmpRTBAtMultiportSwitchInport5_InitialCondition283, i64* %27, align 1
  %_rtP_65 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %28 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_65, i64 0, i32 61
  %29 = bitcast double* %28 to i64*
  %_rtP__TmpRTBAtMultiportSwitchInport5_InitialCondition66284 = load i64, i64* %29, align 1
  %_rtDW_67 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %30 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_67, i64 0, i32 18, i64 1
  %31 = bitcast double* %30 to i64*
  store i64 %_rtP__TmpRTBAtMultiportSwitchInport5_InitialCondition66284, i64* %31, align 1
  %_rtP_68 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %32 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_68, i64 0, i32 61
  %33 = bitcast double* %32 to i64*
  %_rtP__TmpRTBAtMultiportSwitchInport5_InitialCondition69285 = load i64, i64* %33, align 1
  %_rtDW_70 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %34 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_70, i64 0, i32 18, i64 2
  %35 = bitcast double* %34 to i64*
  store i64 %_rtP__TmpRTBAtMultiportSwitchInport5_InitialCondition69285, i64* %35, align 1
  %_rtP_71 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %36 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_71, i64 0, i32 61
  %37 = bitcast double* %36 to i64*
  %_rtP__TmpRTBAtMultiportSwitchInport5_InitialCondition72286 = load i64, i64* %37, align 1
  %_rtDW_73 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %38 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_73, i64 0, i32 18, i64 3
  %39 = bitcast double* %38 to i64*
  store i64 %_rtP__TmpRTBAtMultiportSwitchInport5_InitialCondition72286, i64* %39, align 1
  %_rtP_74 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %40 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_74, i64 0, i32 73
  %41 = bitcast double* %40 to i64*
  %_rtP__UnitDelay_InitialCondition_f287 = load i64, i64* %41, align 1
  %42 = bitcast %DW_X8_T.44** %_rtDW_ to i64**
  %_rtDW_75288 = load i64*, i64** %42, align 8
  store i64 %_rtP__UnitDelay_InitialCondition_f287, i64* %_rtDW_75288, align 1
  %_rtP_76 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %43 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_76, i64 0, i32 92
  %44 = bitcast double* %43 to i64*
  %_rtP__UnitDelay1_InitialCondition_i289 = load i64, i64* %44, align 1
  %_rtDW_77 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %45 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_77, i64 0, i32 1
  %46 = bitcast double* %45 to i64*
  store i64 %_rtP__UnitDelay1_InitialCondition_i289, i64* %46, align 1
  %_rtP_78 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %47 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_78, i64 0, i32 120
  %48 = bitcast double* %47 to i64*
  %_rtP__UnitDelay1_InitialCondition_h290 = load i64, i64* %48, align 1
  %_rtDW_79 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %49 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_79, i64 0, i32 2
  %50 = bitcast double* %49 to i64*
  store i64 %_rtP__UnitDelay1_InitialCondition_h290, i64* %50, align 1
  %_rtP_80 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %51 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_80, i64 0, i32 121
  %52 = bitcast double* %51 to i64*
  %_rtP__UnitDelay4_InitialCondition291 = load i64, i64* %52, align 1
  %_rtDW_81 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %53 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_81, i64 0, i32 3
  %54 = bitcast double* %53 to i64*
  store i64 %_rtP__UnitDelay4_InitialCondition291, i64* %54, align 1
  %_rtP_82 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %55 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_82, i64 0, i32 131
  %56 = bitcast double* %55 to i64*
  %_rtP__UnitDelay2_InitialCondition292 = load i64, i64* %56, align 1
  %_rtDW_83 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %57 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_83, i64 0, i32 4
  %58 = bitcast double* %57 to i64*
  store i64 %_rtP__UnitDelay2_InitialCondition292, i64* %58, align 1
  %_rtP_84 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %59 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_84, i64 0, i32 135
  %60 = bitcast double* %59 to i64*
  %_rtP__UnitDelay3_InitialCondition293 = load i64, i64* %60, align 1
  %_rtDW_85 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %61 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_85, i64 0, i32 5
  %62 = bitcast double* %61 to i64*
  store i64 %_rtP__UnitDelay3_InitialCondition293, i64* %62, align 1
  %_rtP_86 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %63 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_86, i64 0, i32 152
  %64 = bitcast double* %63 to i64*
  %_rtP__Integrator_IC294 = load i64, i64* %64, align 1
  %65 = getelementptr inbounds %X_X8_T.50, %X_X8_T.50* %11, i64 0, i32 1
  %66 = bitcast double* %65 to i64*
  store i64 %_rtP__Integrator_IC294, i64* %66, align 1
  %_rtDW_88 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %67 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_88, i64 0, i32 22
  store double 0x7FF0000000000000, double* %67, align 1
  %_rtDW_89 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %68 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_89, i64 0, i32 24
  store double 0x7FF0000000000000, double* %68, align 1
  br label %merge40

true5:                                            ; preds = %merge40
  %69 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_268, i64 0, i32 154
  %70 = bitcast double* %69 to i64*
  %_rtP__DiscreteTransferFcn_InitialStates331 = load i64, i64* %70, align 1
  %_rtDW_269 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %71 = sext i32 %i_273 to i64
  %72 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_269, i64 0, i32 6, i64 %71
  %73 = bitcast double* %72 to i64*
  store i64 %_rtP__DiscreteTransferFcn_InitialStates331, i64* %73, align 1
  %_rtP_271 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %74 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_271, i64 0, i32 158
  %75 = bitcast double* %74 to i64*
  %_rtP__DiscreteTransferFcn_InitialStates_b332 = load i64, i64* %75, align 1
  %_rtDW_272 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %76 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_272, i64 0, i32 7, i64 %71
  %77 = bitcast double* %76 to i64*
  store i64 %_rtP__DiscreteTransferFcn_InitialStates_b332, i64* %77, align 1
  %tmp33 = add i32 %i_273, 1
  br label %merge40

false6:                                           ; preds = %merge40
  %78 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_268, i64 0, i32 167
  %79 = bitcast double* %78 to i64*
  %_rtP__Integrator_IC_j295 = load i64, i64* %79, align 1
  %_rtX_92 = load %X_X8_T.50*, %X_X8_T.50** %_rtX_, align 8
  %80 = getelementptr inbounds %X_X8_T.50, %X_X8_T.50* %_rtX_92, i64 0, i32 2
  %81 = bitcast double* %80 to i64*
  store i64 %_rtP__Integrator_IC_j295, i64* %81, align 1
  %_rtP_93 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %82 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_93, i64 0, i32 191, i64 0
  %_rtP__WhiteNoise_Seed_el = load double, double* %82, align 1
  %83 = call double @muDoubleScalarFloor(double %_rtP__WhiteNoise_Seed_el)
  store double %83, double* %tmp_, align 8
  %84 = call i8 @muDoubleScalarIsNaN(double %83)
  %tmp_95 = load double, double* %tmp_, align 8
  %85 = call i8 @muDoubleScalarIsInf(double %tmp_95)
  %86 = or i8 %85, %84
  %87 = and i8 %86, 1
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %false8, label %merge41

false8:                                           ; preds = %false6
  %tmp_96 = load double, double* %tmp_, align 8
  %89 = call double @muDoubleScalarRem(double %tmp_96, double 0x41F0000000000000)
  br label %merge41

true9:                                            ; preds = %merge41
  %tmp1 = fsub double -0.000000e+00, %tmp_99
  %90 = fptoui double %tmp1 to i32
  %tmp2 = sub i32 0, %90
  br label %merge42

false10:                                          ; preds = %merge41
  %91 = fptoui double %tmp_99 to i32
  br label %merge42

true11:                                           ; preds = %merge42
  store i32 1144108930, i32* %tseed_, align 4
  br label %merge43

false12:                                          ; preds = %merge42
  %92 = icmp ugt i32 %tmp6, 2147483646
  br i1 %92, label %true13, label %merge43

true13:                                           ; preds = %false12
  store i32 2147483646, i32* %tseed_, align 4
  br label %merge43

false16:                                          ; preds = %merge43
  %tmp_119 = load double, double* %tmp_, align 8
  %93 = call double @muDoubleScalarRem(double %tmp_119, double 0x41F0000000000000)
  br label %merge44

true17:                                           ; preds = %merge44
  %tmp9 = fsub double -0.000000e+00, %tmp_122
  %94 = fptoui double %tmp9 to i32
  %tmp10 = sub i32 0, %94
  br label %merge45

false18:                                          ; preds = %merge44
  %95 = fptoui double %tmp_122 to i32
  br label %merge45

true19:                                           ; preds = %merge45
  store i32 1144108930, i32* %tseed_, align 4
  br label %merge46

false20:                                          ; preds = %merge45
  %96 = icmp ugt i32 %tmp14, 2147483646
  br i1 %96, label %true21, label %merge46

true21:                                           ; preds = %false20
  store i32 2147483646, i32* %tseed_, align 4
  br label %merge46

false24:                                          ; preds = %merge46
  %97 = call double @muDoubleScalarRem(double %138, double 0x41F0000000000000)
  br label %merge47

true25:                                           ; preds = %merge47
  %tmp17 = fsub double -0.000000e+00, %tmp_147
  %98 = fptoui double %tmp17 to i32
  %tmp18 = sub i32 0, %98
  br label %merge48

false26:                                          ; preds = %merge47
  %99 = fptoui double %tmp_147 to i32
  br label %merge48

true27:                                           ; preds = %merge48
  store i32 1144108930, i32* %tseed_, align 4
  br label %merge49

false28:                                          ; preds = %merge48
  %100 = icmp ugt i32 %tmp22, 2147483646
  br i1 %100, label %true29, label %merge49

true29:                                           ; preds = %false28
  store i32 2147483646, i32* %tseed_, align 4
  br label %merge49

false32:                                          ; preds = %merge49
  %101 = call double @muDoubleScalarRem(double %156, double 0x41F0000000000000)
  br label %merge50

true33:                                           ; preds = %merge50
  %tmp25 = fsub double -0.000000e+00, %tmp_172
  %102 = fptoui double %tmp25 to i32
  %tmp26 = sub i32 0, %102
  br label %merge51

false34:                                          ; preds = %merge50
  %103 = fptoui double %tmp_172 to i32
  br label %merge51

true35:                                           ; preds = %merge51
  store i32 1144108930, i32* %tseed_, align 4
  br label %merge52

false36:                                          ; preds = %merge51
  %104 = icmp ugt i32 %tmp30, 2147483646
  br i1 %104, label %true37, label %merge52

true37:                                           ; preds = %false36
  store i32 2147483646, i32* %tseed_, align 4
  br label %merge52

merge:                                            ; preds = %true1, %false
  %i_281 = phi i32 [ %tmp35, %true1 ], [ 0, %false ]
  store i32 %i_281, i32* %i_, align 4
  %105 = icmp slt i32 %i_281, 13
  br i1 %105, label %true1, label %merge39

merge39:                                          ; preds = %merge, %true3
  %i_277 = phi i32 [ %tmp34, %true3 ], [ 0, %merge ]
  store i32 %i_277, i32* %i_, align 4
  %106 = icmp slt i32 %i_277, 6
  %_rtP_275 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  br i1 %106, label %true3, label %false4

merge40:                                          ; preds = %true5, %false4
  %i_273 = phi i32 [ %tmp33, %true5 ], [ 0, %false4 ]
  store i32 %i_273, i32* %i_, align 4
  %107 = icmp slt i32 %i_273, 6
  %_rtP_268 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  br i1 %107, label %true5, label %false6

merge41:                                          ; preds = %false6, %false8
  %tmp_99 = phi double [ %89, %false8 ], [ 0.000000e+00, %false6 ]
  store double %tmp_99, double* %tmp_, align 8
  %108 = fcmp olt double %tmp_99, 0.000000e+00
  br i1 %108, label %true9, label %false10

merge42:                                          ; preds = %true9, %false10
  %storemerge329 = phi i32 [ %tmp2, %true9 ], [ %91, %false10 ]
  store i32 %storemerge329, i32* %tseed_, align 4
  %109 = lshr i32 %storemerge329, 16
  store i32 %109, i32* %i_, align 4
  %110 = and i32 %storemerge329, 32768
  %tmp4 = add i32 %110, %storemerge329
  %111 = shl i32 %tmp4, 16
  %tmp5 = or i32 %111, %110
  %tmp6 = add i32 %tmp5, %109
  store i32 %tmp6, i32* %tseed_, align 4
  %112 = icmp eq i32 %tmp6, 0
  br i1 %112, label %true11, label %false12

merge43:                                          ; preds = %false12, %true13, %true11
  %tseed_109 = phi i32 [ 1144108930, %true11 ], [ 2147483646, %true13 ], [ %tmp6, %false12 ]
  %_rtDW_110 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %113 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_110, i64 0, i32 124, i64 0
  store i32 %tseed_109, i32* %113, align 1
  %_rtDW_111 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %114 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_111, i64 0, i32 124, i64 0
  %115 = call double @X8_rt_nrand_Upu32_Yd_f_pw_snf(i32* %114)
  %_rtP_112 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %116 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_112, i64 0, i32 190
  %_rtP__WhiteNoise_StdDev = load double, double* %116, align 1
  %tmp7 = fmul double %115, %_rtP__WhiteNoise_StdDev
  %117 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_112, i64 0, i32 189
  %_rtP__WhiteNoise_Mean = load double, double* %117, align 1
  %tmp8 = fadd double %tmp7, %_rtP__WhiteNoise_Mean
  %_rtDW_114 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %118 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_114, i64 0, i32 33, i64 0
  store double %tmp8, double* %118, align 1
  %_rtP_115 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %119 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_115, i64 0, i32 191, i64 1
  %_rtP__WhiteNoise_Seed_el116 = load double, double* %119, align 1
  %120 = call double @muDoubleScalarFloor(double %_rtP__WhiteNoise_Seed_el116)
  store double %120, double* %tmp_, align 8
  %121 = call i8 @muDoubleScalarIsNaN(double %120)
  %tmp_118 = load double, double* %tmp_, align 8
  %122 = call i8 @muDoubleScalarIsInf(double %tmp_118)
  %123 = or i8 %122, %121
  %124 = and i8 %123, 1
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %false16, label %merge44

merge44:                                          ; preds = %merge43, %false16
  %tmp_122 = phi double [ %93, %false16 ], [ 0.000000e+00, %merge43 ]
  store double %tmp_122, double* %tmp_, align 8
  %126 = fcmp olt double %tmp_122, 0.000000e+00
  br i1 %126, label %true17, label %false18

merge45:                                          ; preds = %true17, %false18
  %storemerge327 = phi i32 [ %tmp10, %true17 ], [ %95, %false18 ]
  store i32 %storemerge327, i32* %tseed_, align 4
  %127 = lshr i32 %storemerge327, 16
  store i32 %127, i32* %i_, align 4
  %128 = and i32 %storemerge327, 32768
  %tmp12 = add i32 %128, %storemerge327
  %129 = shl i32 %tmp12, 16
  %tmp13 = or i32 %129, %128
  %tmp14 = add i32 %tmp13, %127
  store i32 %tmp14, i32* %tseed_, align 4
  %130 = icmp eq i32 %tmp14, 0
  br i1 %130, label %true19, label %false20

merge46:                                          ; preds = %false20, %true21, %true19
  %tseed_132 = phi i32 [ 1144108930, %true19 ], [ 2147483646, %true21 ], [ %tmp14, %false20 ]
  %_rtDW_133 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %131 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_133, i64 0, i32 124, i64 1
  store i32 %tseed_132, i32* %131, align 1
  %_rtDW_134 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %132 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_134, i64 0, i32 124, i64 1
  %133 = call double @X8_rt_nrand_Upu32_Yd_f_pw_snf(i32* %132)
  %_rtP_135 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %134 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_135, i64 0, i32 190
  %_rtP__WhiteNoise_StdDev136 = load double, double* %134, align 1
  %tmp15 = fmul double %133, %_rtP__WhiteNoise_StdDev136
  %135 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_135, i64 0, i32 189
  %_rtP__WhiteNoise_Mean138 = load double, double* %135, align 1
  %tmp16 = fadd double %tmp15, %_rtP__WhiteNoise_Mean138
  %_rtDW_139 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %136 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_139, i64 0, i32 33, i64 1
  store double %tmp16, double* %136, align 1
  %_rtP_140 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %137 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_140, i64 0, i32 191, i64 2
  %_rtP__WhiteNoise_Seed_el141 = load double, double* %137, align 1
  %138 = call double @muDoubleScalarFloor(double %_rtP__WhiteNoise_Seed_el141)
  store double %138, double* %tmp_, align 8
  %139 = call i8 @muDoubleScalarIsNaN(double %138)
  %140 = call i8 @muDoubleScalarIsInf(double %138)
  %141 = or i8 %140, %139
  %142 = and i8 %141, 1
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %false24, label %merge47

merge47:                                          ; preds = %merge46, %false24
  %tmp_147 = phi double [ %97, %false24 ], [ 0.000000e+00, %merge46 ]
  store double %tmp_147, double* %tmp_, align 8
  %144 = fcmp olt double %tmp_147, 0.000000e+00
  br i1 %144, label %true25, label %false26

merge48:                                          ; preds = %true25, %false26
  %storemerge325 = phi i32 [ %tmp18, %true25 ], [ %99, %false26 ]
  store i32 %storemerge325, i32* %tseed_, align 4
  %145 = lshr i32 %storemerge325, 16
  store i32 %145, i32* %i_, align 4
  %146 = and i32 %storemerge325, 32768
  %tmp20 = add i32 %146, %storemerge325
  %147 = shl i32 %tmp20, 16
  %tmp21 = or i32 %147, %146
  %tmp22 = add i32 %tmp21, %145
  store i32 %tmp22, i32* %tseed_, align 4
  %148 = icmp eq i32 %tmp22, 0
  br i1 %148, label %true27, label %false28

merge49:                                          ; preds = %false28, %true29, %true27
  %tseed_157 = phi i32 [ 1144108930, %true27 ], [ 2147483646, %true29 ], [ %tmp22, %false28 ]
  %_rtDW_158 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %149 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_158, i64 0, i32 124, i64 2
  store i32 %tseed_157, i32* %149, align 1
  %_rtDW_159 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %150 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_159, i64 0, i32 124, i64 2
  %151 = call double @X8_rt_nrand_Upu32_Yd_f_pw_snf(i32* %150)
  %_rtP_160 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %152 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_160, i64 0, i32 190
  %_rtP__WhiteNoise_StdDev161 = load double, double* %152, align 1
  %tmp23 = fmul double %151, %_rtP__WhiteNoise_StdDev161
  %153 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_160, i64 0, i32 189
  %_rtP__WhiteNoise_Mean163 = load double, double* %153, align 1
  %tmp24 = fadd double %tmp23, %_rtP__WhiteNoise_Mean163
  %_rtDW_164 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %154 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_164, i64 0, i32 33, i64 2
  store double %tmp24, double* %154, align 1
  %_rtP_165 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %155 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_165, i64 0, i32 191, i64 3
  %_rtP__WhiteNoise_Seed_el166 = load double, double* %155, align 1
  %156 = call double @muDoubleScalarFloor(double %_rtP__WhiteNoise_Seed_el166)
  store double %156, double* %tmp_, align 8
  %157 = call i8 @muDoubleScalarIsNaN(double %156)
  %158 = call i8 @muDoubleScalarIsInf(double %156)
  %159 = or i8 %158, %157
  %160 = and i8 %159, 1
  %161 = icmp eq i8 %160, 0
  br i1 %161, label %false32, label %merge50

merge50:                                          ; preds = %merge49, %false32
  %tmp_172 = phi double [ %101, %false32 ], [ 0.000000e+00, %merge49 ]
  store double %tmp_172, double* %tmp_, align 8
  %162 = fcmp olt double %tmp_172, 0.000000e+00
  br i1 %162, label %true33, label %false34

merge51:                                          ; preds = %true33, %false34
  %storemerge = phi i32 [ %tmp26, %true33 ], [ %103, %false34 ]
  store i32 %storemerge, i32* %tseed_, align 4
  %163 = lshr i32 %storemerge, 16
  store i32 %163, i32* %i_, align 4
  %164 = and i32 %storemerge, 32768
  %tmp28 = add i32 %164, %storemerge
  %165 = shl i32 %tmp28, 16
  %tmp29 = or i32 %165, %164
  %tmp30 = add i32 %tmp29, %163
  store i32 %tmp30, i32* %tseed_, align 4
  %166 = icmp eq i32 %tmp30, 0
  br i1 %166, label %true35, label %false36

merge52:                                          ; preds = %false36, %true37, %true35
  %tseed_182 = phi i32 [ 1144108930, %true35 ], [ 2147483646, %true37 ], [ %tmp30, %false36 ]
  %_rtDW_183 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %167 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_183, i64 0, i32 124, i64 3
  store i32 %tseed_182, i32* %167, align 1
  %_rtDW_184 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %168 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_184, i64 0, i32 124, i64 3
  %169 = call double @X8_rt_nrand_Upu32_Yd_f_pw_snf(i32* %168)
  %_rtP_185 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %170 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_185, i64 0, i32 190
  %_rtP__WhiteNoise_StdDev186 = load double, double* %170, align 1
  %tmp31 = fmul double %169, %_rtP__WhiteNoise_StdDev186
  %171 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_185, i64 0, i32 189
  %_rtP__WhiteNoise_Mean188 = load double, double* %171, align 1
  %tmp32 = fadd double %tmp31, %_rtP__WhiteNoise_Mean188
  %_rtDW_189 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %172 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_189, i64 0, i32 33, i64 3
  store double %tmp32, double* %172, align 1
  %S_190 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_190, i32 7, i32 0, i32 102)
  call void @vm_ssCallAccelRunBlock(i8* %S_190, i32 1, i32 0, i32 102)
  call void @vm_ssCallAccelRunBlock(i8* %S_190, i32 2, i32 1, i32 102)
  call void @vm_ssCallAccelRunBlock(i8* %S_190, i32 0, i32 0, i32 102)
  call void @vm_ssCallAccelRunBlock(i8* %S_190, i32 4, i32 0, i32 102)
  call void @vm_ssCallAccelRunBlock(i8* %S_190, i32 5, i32 1, i32 102)
  call void @vm_ssCallAccelRunBlock(i8* %S_190, i32 6, i32 3, i32 102)
  %_rtP_197 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %173 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_197, i64 0, i32 5
  %174 = bitcast double* %173 to i64*
  %_rtP__UnitDelay_InitialCondition296 = load i64, i64* %174, align 1
  %_rtDW_198 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %175 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_198, i64 0, i32 15
  %176 = bitcast [2 x double]* %175 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition296, i64* %176, align 1
  %_rtP_199 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %177 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_199, i64 0, i32 2
  %178 = bitcast double* %177 to i64*
  %_rtP__pgw_Y0297 = load i64, i64* %178, align 1
  %_rtB_200 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %179 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_200, i64 0, i32 142
  %180 = bitcast [2 x double]* %179 to i64*
  store i64 %_rtP__pgw_Y0297, i64* %180, align 1
  %_rtP_201 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %181 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_201, i64 0, i32 12
  %182 = bitcast double* %181 to i64*
  %_rtP__UnitDelay_InitialCondition_o298 = load i64, i64* %182, align 1
  %_rtDW_202 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %183 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_202, i64 0, i32 13
  %184 = bitcast [2 x double]* %183 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_o298, i64* %184, align 1
  %_rtP_203 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %185 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_203, i64 0, i32 13
  %186 = bitcast double* %185 to i64*
  %_rtP__UnitDelay1_InitialCondition299 = load i64, i64* %186, align 1
  %_rtDW_204 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %187 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_204, i64 0, i32 14
  %188 = bitcast [2 x double]* %187 to i64*
  store i64 %_rtP__UnitDelay1_InitialCondition299, i64* %188, align 1
  %_rtP_205 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %189 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_205, i64 0, i32 10
  %190 = bitcast double* %189 to i64*
  %_rtP__qgw_Y0300 = load i64, i64* %190, align 1
  %191 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_200, i64 0, i32 138
  %192 = bitcast [2 x double]* %191 to i64*
  store i64 %_rtP__qgw_Y0300, i64* %192, align 1
  %_rtP_207 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %193 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_207, i64 0, i32 18
  %194 = bitcast double* %193 to i64*
  %_rtP__UnitDelay_InitialCondition_p301 = load i64, i64* %194, align 1
  %_rtDW_208 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %195 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_208, i64 0, i32 11
  %196 = bitcast [2 x double]* %195 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_p301, i64* %196, align 1
  %_rtP_209 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %197 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_209, i64 0, i32 19
  %198 = bitcast double* %197 to i64*
  %_rtP__UnitDelay1_InitialCondition_n302 = load i64, i64* %198, align 1
  %_rtDW_210 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %199 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_210, i64 0, i32 12
  %200 = bitcast [2 x double]* %199 to i64*
  store i64 %_rtP__UnitDelay1_InitialCondition_n302, i64* %200, align 1
  %_rtP_211 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %201 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_211, i64 0, i32 16
  %202 = bitcast double* %201 to i64*
  %_rtP__rgw_Y0303 = load i64, i64* %202, align 1
  %203 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_200, i64 0, i32 133
  %204 = bitcast [2 x double]* %203 to i64*
  store i64 %_rtP__rgw_Y0303, i64* %204, align 1
  %_rtP_213 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %205 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_213, i64 0, i32 25
  %206 = bitcast double* %205 to i64*
  %_rtP__UnitDelay_InitialCondition_e304 = load i64, i64* %206, align 1
  %_rtDW_214 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %207 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_214, i64 0, i32 10
  %208 = bitcast [2 x double]* %207 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_e304, i64* %208, align 1
  %_rtP_215 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %209 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_215, i64 0, i32 22
  %210 = bitcast double* %209 to i64*
  %_rtP__ugw_Y0305 = load i64, i64* %210, align 1
  %211 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_200, i64 0, i32 129
  %212 = bitcast [2 x double]* %211 to i64*
  store i64 %_rtP__ugw_Y0305, i64* %212, align 1
  %_rtP_217 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %213 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_217, i64 0, i32 30
  %214 = bitcast double* %213 to i64*
  %_rtP__UnitDelay_InitialCondition_l306 = load i64, i64* %214, align 1
  %_rtDW_218 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %215 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_218, i64 0, i32 9
  %216 = bitcast [2 x double]* %215 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_l306, i64* %216, align 1
  %_rtP_219 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %217 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_219, i64 0, i32 27
  %218 = bitcast double* %217 to i64*
  %_rtP__vgw_Y0307 = load i64, i64* %218, align 1
  %219 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_200, i64 0, i32 126
  %220 = bitcast [2 x double]* %219 to i64*
  store i64 %_rtP__vgw_Y0307, i64* %220, align 1
  %_rtP_221 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %221 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_221, i64 0, i32 35
  %222 = bitcast double* %221 to i64*
  %_rtP__UnitDelay_InitialCondition_g308 = load i64, i64* %222, align 1
  %_rtDW_222 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %223 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_222, i64 0, i32 8
  %224 = bitcast [2 x double]* %223 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_g308, i64* %224, align 1
  %_rtP_223 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %225 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_223, i64 0, i32 32
  %226 = bitcast double* %225 to i64*
  %_rtP__wgw_Y0309 = load i64, i64* %226, align 1
  %227 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_200, i64 0, i32 123
  %228 = bitcast [2 x double]* %227 to i64*
  store i64 %_rtP__wgw_Y0309, i64* %228, align 1
  %_rtP_225 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %229 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_225, i64 0, i32 5
  %230 = bitcast double* %229 to i64*
  %_rtP__UnitDelay_InitialCondition226310 = load i64, i64* %230, align 1
  %_rtDW_227 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %231 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_227, i64 0, i32 15, i64 1
  %232 = bitcast double* %231 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition226310, i64* %232, align 1
  %_rtP_228 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %233 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_228, i64 0, i32 2
  %234 = bitcast double* %233 to i64*
  %_rtP__pgw_Y0229311 = load i64, i64* %234, align 1
  %_rtB_230 = load %B_X8_T.43*, %B_X8_T.43** %_rtB_, align 8
  %235 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_230, i64 0, i32 142, i64 1
  %236 = bitcast double* %235 to i64*
  store i64 %_rtP__pgw_Y0229311, i64* %236, align 1
  %_rtP_231 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %237 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_231, i64 0, i32 12
  %238 = bitcast double* %237 to i64*
  %_rtP__UnitDelay_InitialCondition_o232312 = load i64, i64* %238, align 1
  %_rtDW_233 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %239 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_233, i64 0, i32 13, i64 1
  %240 = bitcast double* %239 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_o232312, i64* %240, align 1
  %_rtP_234 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %241 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_234, i64 0, i32 13
  %242 = bitcast double* %241 to i64*
  %_rtP__UnitDelay1_InitialCondition235313 = load i64, i64* %242, align 1
  %_rtDW_236 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %243 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_236, i64 0, i32 14, i64 1
  %244 = bitcast double* %243 to i64*
  store i64 %_rtP__UnitDelay1_InitialCondition235313, i64* %244, align 1
  %_rtP_237 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %245 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_237, i64 0, i32 10
  %246 = bitcast double* %245 to i64*
  %_rtP__qgw_Y0238314 = load i64, i64* %246, align 1
  %247 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_230, i64 0, i32 138, i64 1
  %248 = bitcast double* %247 to i64*
  store i64 %_rtP__qgw_Y0238314, i64* %248, align 1
  %_rtP_240 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %249 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_240, i64 0, i32 18
  %250 = bitcast double* %249 to i64*
  %_rtP__UnitDelay_InitialCondition_p241315 = load i64, i64* %250, align 1
  %_rtDW_242 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %251 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_242, i64 0, i32 11, i64 1
  %252 = bitcast double* %251 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_p241315, i64* %252, align 1
  %_rtP_243 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %253 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_243, i64 0, i32 19
  %254 = bitcast double* %253 to i64*
  %_rtP__UnitDelay1_InitialCondition_n244316 = load i64, i64* %254, align 1
  %_rtDW_245 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %255 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_245, i64 0, i32 12, i64 1
  %256 = bitcast double* %255 to i64*
  store i64 %_rtP__UnitDelay1_InitialCondition_n244316, i64* %256, align 1
  %_rtP_246 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %257 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_246, i64 0, i32 16
  %258 = bitcast double* %257 to i64*
  %_rtP__rgw_Y0247317 = load i64, i64* %258, align 1
  %259 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_230, i64 0, i32 133, i64 1
  %260 = bitcast double* %259 to i64*
  store i64 %_rtP__rgw_Y0247317, i64* %260, align 1
  %_rtP_249 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %261 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_249, i64 0, i32 25
  %262 = bitcast double* %261 to i64*
  %_rtP__UnitDelay_InitialCondition_e250318 = load i64, i64* %262, align 1
  %_rtDW_251 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %263 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_251, i64 0, i32 10, i64 1
  %264 = bitcast double* %263 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_e250318, i64* %264, align 1
  %_rtP_252 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %265 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_252, i64 0, i32 22
  %266 = bitcast double* %265 to i64*
  %_rtP__ugw_Y0253319 = load i64, i64* %266, align 1
  %267 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_230, i64 0, i32 129, i64 1
  %268 = bitcast double* %267 to i64*
  store i64 %_rtP__ugw_Y0253319, i64* %268, align 1
  %_rtP_255 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %269 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_255, i64 0, i32 30
  %270 = bitcast double* %269 to i64*
  %_rtP__UnitDelay_InitialCondition_l256320 = load i64, i64* %270, align 1
  %_rtDW_257 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %271 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_257, i64 0, i32 9, i64 1
  %272 = bitcast double* %271 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_l256320, i64* %272, align 1
  %_rtP_258 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %273 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_258, i64 0, i32 27
  %274 = bitcast double* %273 to i64*
  %_rtP__vgw_Y0259321 = load i64, i64* %274, align 1
  %275 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_230, i64 0, i32 126, i64 1
  %276 = bitcast double* %275 to i64*
  store i64 %_rtP__vgw_Y0259321, i64* %276, align 1
  %_rtP_261 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %277 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_261, i64 0, i32 35
  %278 = bitcast double* %277 to i64*
  %_rtP__UnitDelay_InitialCondition_g262322 = load i64, i64* %278, align 1
  %_rtDW_263 = load %DW_X8_T.44*, %DW_X8_T.44** %_rtDW_, align 8
  %279 = getelementptr inbounds %DW_X8_T.44, %DW_X8_T.44* %_rtDW_263, i64 0, i32 8, i64 1
  %280 = bitcast double* %279 to i64*
  store i64 %_rtP__UnitDelay_InitialCondition_g262322, i64* %280, align 1
  %_rtP_264 = load %P_X8_T.48*, %P_X8_T.48** %_rtP_, align 8
  %281 = getelementptr inbounds %P_X8_T.48, %P_X8_T.48* %_rtP_264, i64 0, i32 32
  %282 = bitcast double* %281 to i64*
  %_rtP__wgw_Y0265323 = load i64, i64* %282, align 1
  %283 = getelementptr inbounds %B_X8_T.43, %B_X8_T.43* %_rtB_230, i64 0, i32 123, i64 1
  %284 = bitcast double* %283 to i64*
  store i64 %_rtP__wgw_Y0265323, i64* %284, align 1
  %S_267 = load i8*, i8** %S_, align 8
  call void @vm_ssCallAccelRunBlock(i8* %S_267, i32 3, i32 0, i32 102)
  ret void
}

declare i8 @vm_ssIsFirstInitCond(i8*)

declare i8* @memset(i8*, i32, i32)

declare i8 @muDoubleScalarIsNaN(double)

declare i8 @muDoubleScalarIsInf(double)

declare double @muDoubleScalarRem(double, double)

define i32 @linsearch_u32d(double %u, double* %bp, i32 %startIndex) {
linsearch_u32d_entry:
  %u_ = alloca double, align 8
  store double %u, double* %u_, align 8
  %bp_ = alloca double*, align 8
  store double* %bp, double** %bp_, align 8
  %bpIndex_ = alloca i32, align 4
  br label %merge

true:                                             ; preds = %merge
  %tmp2 = add i32 %bpIndex_12, -1
  br label %merge

false:                                            ; preds = %true1, %merge
  %bpIndex_13 = phi i32 [ %tmp0, %true1 ], [ %bpIndex_12, %merge ]
  %tmp0 = add i32 %bpIndex_13, 1
  %0 = sext i32 %tmp0 to i64
  %1 = getelementptr inbounds double, double* %bp, i64 %0
  %bp__el10 = load double, double* %1, align 1
  %2 = fcmp ult double %u, %bp__el10
  br i1 %2, label %false2, label %true1

true1:                                            ; preds = %false
  store i32 %tmp0, i32* %bpIndex_, align 4
  br label %false

false2:                                           ; preds = %false
  ret i32 %bpIndex_13

merge:                                            ; preds = %true, %linsearch_u32d_entry
  %bpIndex_12 = phi i32 [ %tmp2, %true ], [ %startIndex, %linsearch_u32d_entry ]
  store i32 %bpIndex_12, i32* %bpIndex_, align 4
  %3 = sext i32 %bpIndex_12 to i64
  %4 = getelementptr inbounds double, double* %bp, i64 %3
  %bp__el = load double, double* %4, align 1
  %5 = fcmp olt double %u, %bp__el
  br i1 %5, label %true, label %false
}

define i32 @plook_linx(double %u, double* %bp, i32 %maxIndex, double* %fraction) {
plook_linx_entry:
  %u_ = alloca double, align 8
  store double %u, double* %u_, align 8
  %bp_ = alloca double*, align 8
  store double* %bp, double** %bp_, align 8
  %maxIndex_ = alloca i32, align 4
  store i32 %maxIndex, i32* %maxIndex_, align 4
  %fraction_ = alloca double*, align 8
  store double* %fraction, double** %fraction_, align 8
  %bpIndex_ = alloca i32, align 4
  %bp__el = load double, double* %bp, align 1
  %0 = fcmp ugt double %u, %bp__el
  br i1 %0, label %false, label %true

true:                                             ; preds = %plook_linx_entry
  store i32 0, i32* %bpIndex_, align 4
  %tmp10 = fsub double %u, %bp__el
  %1 = getelementptr inbounds double, double* %bp, i64 1
  %bp__el40 = load double, double* %1, align 1
  %tmp11 = fsub double %bp__el40, %bp__el
  %tmp12 = fdiv double %tmp10, %tmp11
  store double %tmp12, double* %fraction, align 1
  br label %merge3

false:                                            ; preds = %plook_linx_entry
  %2 = sext i32 %maxIndex to i64
  %3 = getelementptr inbounds double, double* %bp, i64 %2
  %bp__el9 = load double, double* %3, align 1
  %4 = fcmp olt double %u, %bp__el9
  br i1 %4, label %true1, label %false2

true1:                                            ; preds = %false
  %5 = lshr i32 %maxIndex, 1
  %6 = call i32 @linsearch_u32d(double %u, double* %bp, i32 %5)
  store i32 %6, i32* %bpIndex_, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds double, double* %bp, i64 %7
  %bp__el28 = load double, double* %8, align 1
  %tmp6 = fsub double %u, %bp__el28
  %tmp7 = add i32 %6, 1
  %9 = sext i32 %tmp7 to i64
  %10 = getelementptr inbounds double, double* %bp, i64 %9
  %bp__el31 = load double, double* %10, align 1
  %tmp8 = fsub double %bp__el31, %bp__el28
  %tmp9 = fdiv double %tmp6, %tmp8
  store double %tmp9, double* %fraction, align 1
  br label %merge3

false2:                                           ; preds = %false
  %tmp0 = add i32 %maxIndex, -1
  store i32 %tmp0, i32* %bpIndex_, align 4
  %11 = sext i32 %tmp0 to i64
  %12 = getelementptr inbounds double, double* %bp, i64 %11
  %bp__el14 = load double, double* %12, align 1
  %tmp2 = fsub double %u, %bp__el14
  %tmp4 = fsub double %bp__el9, %bp__el14
  %tmp5 = fdiv double %tmp2, %tmp4
  store double %tmp5, double* %fraction, align 1
  br label %merge3

merge3:                                           ; preds = %false2, %true1, %true
  %bpIndex_44 = phi i32 [ 0, %true ], [ %6, %true1 ], [ %tmp0, %false2 ]
  ret i32 %bpIndex_44
}

define double @intrp2d_l_pw(i32* %bpIndex, double* %frac, double* %table, i32 %stride) {
intrp2d_l_pw_entry:
  %bpIndex_ = alloca i32*, align 8
  store i32* %bpIndex, i32** %bpIndex_, align 8
  %frac_ = alloca double*, align 8
  store double* %frac, double** %frac_, align 8
  %table_ = alloca double*, align 8
  store double* %table, double** %table_, align 8
  %stride_ = alloca i32, align 4
  store i32 %stride, i32* %stride_, align 4
  %yL_1d_ = alloca double, align 8
  %offset_1d_ = alloca i32, align 4
  %y_ = alloca double, align 8
  %0 = getelementptr inbounds i32, i32* %bpIndex, i64 1
  %bpIndex__el = load i32, i32* %0, align 1
  %tmp0 = mul i32 %stride, %bpIndex__el
  %bpIndex__el4 = load i32, i32* %bpIndex, align 1
  %tmp1 = add i32 %tmp0, %bpIndex__el4
  store i32 %tmp1, i32* %offset_1d_, align 4
  %tmp2 = add i32 %tmp1, 1
  %1 = sext i32 %tmp2 to i64
  %2 = getelementptr inbounds double, double* %table, i64 %1
  %table__el = load double, double* %2, align 1
  %3 = sext i32 %tmp1 to i64
  %4 = getelementptr inbounds double, double* %table, i64 %3
  %table__el9 = load double, double* %4, align 1
  %tmp3 = fsub double %table__el, %table__el9
  %frac__el = load double, double* %frac, align 1
  %tmp4 = fmul double %tmp3, %frac__el
  %tmp5 = fadd double %tmp4, %table__el9
  store double %tmp5, double* %yL_1d_, align 8
  %tmp6 = add i32 %stride, %tmp1
  store i32 %tmp6, i32* %offset_1d_, align 4
  %tmp7 = add i32 %tmp6, 1
  %5 = sext i32 %tmp7 to i64
  %6 = getelementptr inbounds double, double* %table, i64 %5
  %table__el18 = load double, double* %6, align 1
  %7 = sext i32 %tmp6 to i64
  %8 = getelementptr inbounds double, double* %table, i64 %7
  %table__el21 = load double, double* %8, align 1
  %tmp8 = fsub double %table__el18, %table__el21
  %tmp9 = fmul double %tmp8, %frac__el
  %tmp10 = fadd double %tmp9, %table__el21
  %tmp11 = fsub double %tmp10, %tmp5
  %9 = getelementptr inbounds double, double* %frac, i64 1
  %frac__el29 = load double, double* %9, align 1
  %tmp12 = fmul double %tmp11, %frac__el29
  %tmp13 = fadd double %tmp5, %tmp12
  store double %tmp13, double* %y_, align 8
  ret double %tmp13
}

define i32 @plook_linc(double %u, double* %bp, i32 %maxIndex, double* %fraction) {
plook_linc_entry:
  %u_ = alloca double, align 8
  store double %u, double* %u_, align 8
  %bp_ = alloca double*, align 8
  store double* %bp, double** %bp_, align 8
  %maxIndex_ = alloca i32, align 4
  store i32 %maxIndex, i32* %maxIndex_, align 4
  %fraction_ = alloca double*, align 8
  store double* %fraction, double** %fraction_, align 8
  %bpIndex_ = alloca i32, align 4
  %bp__el = load double, double* %bp, align 1
  %0 = fcmp ugt double %u, %bp__el
  br i1 %0, label %false, label %true

true:                                             ; preds = %plook_linc_entry
  store i32 0, i32* %bpIndex_, align 4
  store double 0.000000e+00, double* %fraction, align 1
  br label %merge3

false:                                            ; preds = %plook_linc_entry
  %1 = sext i32 %maxIndex to i64
  %2 = getelementptr inbounds double, double* %bp, i64 %1
  %bp__el9 = load double, double* %2, align 1
  %3 = fcmp olt double %u, %bp__el9
  br i1 %3, label %true1, label %false2

true1:                                            ; preds = %false
  %4 = lshr i32 %maxIndex, 1
  %5 = call i32 @linsearch_u32d(double %u, double* %bp, i32 %4)
  store i32 %5, i32* %bpIndex_, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds double, double* %bp, i64 %6
  %bp__el18 = load double, double* %7, align 1
  %tmp1 = fsub double %u, %bp__el18
  %tmp2 = add i32 %5, 1
  %8 = sext i32 %tmp2 to i64
  %9 = getelementptr inbounds double, double* %bp, i64 %8
  %bp__el21 = load double, double* %9, align 1
  %tmp3 = fsub double %bp__el21, %bp__el18
  %tmp4 = fdiv double %tmp1, %tmp3
  store double %tmp4, double* %fraction, align 1
  br label %merge3

false2:                                           ; preds = %false
  %tmp0 = add i32 %maxIndex, -1
  store i32 %tmp0, i32* %bpIndex_, align 4
  store double 1.000000e+00, double* %fraction, align 1
  br label %merge3

merge3:                                           ; preds = %false2, %true1, %true
  %bpIndex_27 = phi i32 [ 0, %true ], [ %5, %true1 ], [ %tmp0, %false2 ]
  ret i32 %bpIndex_27
}

define i32 @binsearch_u32d_prevIdx(double %u, double* %bp, i32 %startIndex, i32 %maxIndex) {
binsearch_u32d_prevIdx_entry:
  %u_ = alloca double, align 8
  store double %u, double* %u_, align 8
  %bp_ = alloca double*, align 8
  store double* %bp, double** %bp_, align 8
  %startIndex_ = alloca i32, align 4
  store i32 %startIndex, i32* %startIndex_, align 4
  %maxIndex_ = alloca i32, align 4
  store i32 %maxIndex, i32* %maxIndex_, align 4
  %iRght_ = alloca i32, align 4
  %iLeft_ = alloca i32, align 4
  %found_ = alloca i32, align 4
  %bpIndex_ = alloca i32, align 4
  store i32 %startIndex, i32* %bpIndex_, align 4
  store i32 0, i32* %iLeft_, align 4
  store i32 %maxIndex, i32* %iRght_, align 4
  store i32 0, i32* %found_, align 4
  br label %merge

true:                                             ; preds = %merge
  %0 = sext i32 %bpIndex_20 to i64
  %1 = getelementptr inbounds double, double* %bp, i64 %0
  %bp__el = load double, double* %1, align 1
  %2 = fcmp olt double %u, %bp__el
  br i1 %2, label %true1, label %false2

false:                                            ; preds = %merge
  ret i32 %bpIndex_20

true1:                                            ; preds = %true
  %tmp3 = add i32 %bpIndex_20, -1
  store i32 %tmp3, i32* %iRght_, align 4
  %tmp4 = add i32 %iLeft_22, %tmp3
  %3 = lshr i32 %tmp4, 1
  store i32 %3, i32* %bpIndex_, align 4
  br label %merge

false2:                                           ; preds = %true
  %tmp0 = add i32 %bpIndex_20, 1
  %4 = sext i32 %tmp0 to i64
  %5 = getelementptr inbounds double, double* %bp, i64 %4
  %bp__el16 = load double, double* %5, align 1
  %6 = fcmp olt double %u, %bp__el16
  br i1 %6, label %true3, label %false4

true3:                                            ; preds = %false2
  store i32 1, i32* %found_, align 4
  br label %merge

false4:                                           ; preds = %false2
  store i32 %tmp0, i32* %iLeft_, align 4
  %tmp2 = add i32 %iRght_18, %tmp0
  %7 = lshr i32 %tmp2, 1
  store i32 %7, i32* %bpIndex_, align 4
  br label %merge

merge:                                            ; preds = %true1, %true3, %false4, %binsearch_u32d_prevIdx_entry
  %iLeft_22 = phi i32 [ 0, %binsearch_u32d_prevIdx_entry ], [ %iLeft_22, %true1 ], [ %iLeft_22, %true3 ], [ %tmp0, %false4 ]
  %iRght_18 = phi i32 [ %maxIndex, %binsearch_u32d_prevIdx_entry ], [ %tmp3, %true1 ], [ %iRght_18, %true3 ], [ %iRght_18, %false4 ]
  %bpIndex_20 = phi i32 [ %startIndex, %binsearch_u32d_prevIdx_entry ], [ %3, %true1 ], [ %bpIndex_20, %true3 ], [ %7, %false4 ]
  %found_9 = phi i32 [ 0, %binsearch_u32d_prevIdx_entry ], [ 0, %true1 ], [ 1, %true3 ], [ 0, %false4 ]
  %8 = icmp eq i32 %found_9, 0
  br i1 %8, label %true, label %false
}

