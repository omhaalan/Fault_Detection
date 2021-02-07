function [C_L_aInterpolation] = Create_interpolation(C_L_a_data,name)
%Creates Simulink LookUptable from input data
x_lin = linspace(min(C_L_a_data(:,1)),max(C_L_a_data(:,1)),length(C_L_a_data))';
y_lin = linspace(min(C_L_a_data(:,2)),max(C_L_a_data(:,2)),length(C_L_a_data))';

[x_grd,y_grd] = meshgrid(x_lin,y_lin);

C_L_a_tab = griddata(C_L_a_data(:, 1),C_L_a_data(:, 2), C_L_a_data(:, 3),x_grd,y_grd);

C_L_aInterpolation = Simulink.LookupTable;
C_L_aInterpolation.Table.Value = inpaint_nans(C_L_a_tab)';
C_L_aInterpolation.Breakpoints(1).Value = x_lin;
C_L_aInterpolation.Breakpoints(2).Value = y_lin;
C_L_aInterpolation.StructTypeInfo.Name = name;
end

