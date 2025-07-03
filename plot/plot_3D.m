t = out.tout;
x_t = out.X_T;
y_t = out.Y_T;
z_t = out.Z_T;
x_m = out.X_M;
y_m = out.Y_M;
z_m = out.Z_M;

valuex_t = x_t.data;
valuey_t = y_t.data;
valuez_t = z_t.data;
valuex_m = x_m.data;
valuey_m = y_m.data;
valuez_m = z_m.data;


figure;
plot3(valuex_t, valuey_t, valuez_t, 'LineWidth', 1.5); % 3D 궤적
hold on;
plot3(valuex_m, valuey_m, valuez_m, 'LineWidth', 1.5); % 3D 궤적
title('3D Trajectory from Timeseries Data');
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');
grid on;



