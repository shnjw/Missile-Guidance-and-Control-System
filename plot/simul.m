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

% Figure 설정
figure;
hold on;
grid on;
axis equal;
title('3D Trajectory Animation');
xlabel('X Axis');
ylabel('Y Axis');
zlabel('Z Axis');

% 초기화
line_t = plot3(NaN, NaN, NaN, 'r-', 'LineWidth', 1.5); % T 궤적
line_m = plot3(NaN, NaN, NaN, 'b-', 'LineWidth', 1.5); % M 궤적

view(-45, 10);


% 시간에 따른 애니메이션
for i = 1:length(t)
    % T 궤적 갱신
    set(line_t, 'XData', valuex_t(1:i), 'YData', valuey_t(1:i), 'ZData', valuez_t(1:i));
    
    % M 궤적 갱신
    set(line_m, 'XData', valuex_m(1:i), 'YData', valuey_m(1:i), 'ZData', valuez_m(1:i));
    
    % 갱신 표시
    drawnow;
    
end
