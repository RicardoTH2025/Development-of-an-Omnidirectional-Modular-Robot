
Px_multi=out.px_SM.signals.values;
Py_multi=out.py_SM.signals.values;
theta_multi=out.theta_SM.signals.values;
Vx_multi=out.Vx_SM.signals.values;
Vy_multi=out.Vy_SM.signals.values;
omega_multi=out.omega_SM.signals.values;

Px_modelo=out.px_model.signals.values;
Py_modelo=out.py_model.signals.values;
theta_modelo=out.theta_model.signals.values;
Vx_modelo=out.Vx_model.signals.values;
Vy_modelo=out.Vy_model.signals.values;
omega_modelo=out.omega_model.signals.values;

time=out.tout;

FS=16; %tamaño de fuente

fig = figure;
left_color = [0 0 0];
right_color = [0 0 0];
set(fig,'defaultAxesColorOrder',[left_color; right_color]);

% trayectoria
  subplot(2,3,1)
hold on
grid on
% axis equal
plot(Px_modelo, Py_modelo, 'r')
plot(Px_multi, Py_multi, 'k')
l=legend('model','simulation');
l.BackgroundAlpha = 0.3; % 0 for fully transparent, 1 for fully opaque
  xlabel('p_x (mm)','fontsize',FS)
  ylabel('p_y (mm)','fontsize',FS)
  fontsize(gcf,FS,"points")

  % posicion x y y
subplot(2,3,2)
hold on
grid on
% axis equal
plot(time,Px_modelo,'r')
plot(time,Px_multi, 'k')
plot(time,Py_modelo,'b')
plot(time,Py_multi, 'm')
l=legend('P_x model','P_x simulation','P_y model','P_y simulation');
l.BackgroundAlpha = 0.3; % 0 for fully transparent, 1 for fully opaque
  xlabel('time (s)','fontsize',FS)
  ylabel('displacement (mm)','fontsize',FS)
  fontsize(gcf,FS,"points")

% Vx Vy
  subplot(2,3,4)
hold on
grid on
% axis equal
plot(time,Vx_modelo,'r')
plot(time,Vx_multi, 'k')
plot(time,Vy_modelo,'b')
plot(time,Vy_multi, 'm')
l=legend('V_x model','V_x simulation','V_y model','V_y simulation');
l.BackgroundAlpha = 0.3; % 0 for fully transparent, 1 for fully opaque
  xlabel('time (s)','fontsize',FS)
  ylabel('Velocity (mm/s)','fontsize',FS)
  fontsize(gcf,FS,"points")

  %   velocidad angular
  subplot(2,3,5)
  hold on
grid on
% axis equal
plot(time,omega_modelo,'r')
plot(time,omega_multi,'k')
  xlabel('time (s)','fontsize',FS)
  ylabel('\omega (rad/s)','fontsize',FS)
  fontsize(gcf,FS,"points")

 hold on
% grid on
% axis equal
 yyaxis right
 plot(time,theta_modelo,'b')
 plot(time,theta_multi,'m')
 % plot(time,theta_calc, 'm')
 l=legend('\omega model','\omega simulation','\theta model','\theta simulation');
 l.BackgroundAlpha = 0.3; % 0 for fully transparent, 1 for fully opaque
%   xlabel('time (s)','fontsize',FS)
   ylabel('\theta (rad)','fontsize',FS)
   fontsize(gcf,FS,"points")
%%
% posicion x y y
subplot(2,3,3)
hold on
grid on
% axis equal
plot(time,Px_modelo,'r')
plot(time,Px_multi, 'k')
plot(time,Py_modelo,'b')
plot(time,Py_multi, 'm')
legend('P_x Kinematic model','P_x Multibody simulation','P_y Kinematic model','P_y Multibody simulation')
  xlabel('time (s)','fontsize',FS)
  ylabel('displacement (mm)','fontsize',FS)
  fontsize(gcf,FS,"points")

% trayectoria
  subplot(2,3,6)
hold on
grid on
% axis equal
plot(Px_modelo, Py_modelo, 'r')
plot(Px_multi, Py_multi, 'k')
legend('Kinematic model','Multibody simulation')
  xlabel('p_x (mm)','fontsize',FS)
  ylabel('p_y (mm)','fontsize',FS)
  fontsize(gcf,FS,"points")

% 
% 
% %   figure(7) %gráfica para obtener el desplazamiento en el plano X-Y
%   subplot(2,4,7)
% hold on
% grid on
%  axis equal
% plot(Px_modelo, Py_modelo, 'r')
% plot(Px_multi, Py_multi, 'k')
% legend('Kinematic model','Multibody simulation')
%   xlabel('p_x (mm)','fontsize',11)
%   ylabel('p_y (mm)','fontsize',11)
% 
%   fontsize(gcf,11,"points")

error_px=max(abs(Px_modelo-Px_multi));
error_py=max(abs(Py_modelo-Py_multi));
error_theta=max(abs(theta_modelo-theta_multi));
error_vx=max(abs(Vx_modelo-Vx_multi));
error_vy=max(abs(Vy_modelo-Vy_multi));
error_omega=max(abs(omega_modelo-omega_multi));

px_RMSE=rmse(Px_modelo,Px_multi)
py_RMSE=rmse(Py_modelo,Py_multi)
vx_RMSE=rmse(Vx_modelo,Vx_multi)
vy_RMSE=rmse(Vy_modelo,Vy_multi)
omega_RMSE=rmse(omega_modelo,omega_multi)
theta_RMSE=rmse(theta_modelo,theta_multi)


