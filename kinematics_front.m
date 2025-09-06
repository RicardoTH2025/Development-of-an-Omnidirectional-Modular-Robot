%%
clc
clearvars

TF=20; % simulation time
Ts=0.0005;

theta=deg2rad(0);

R_IR=[cos(theta)   -sin(theta)  0
      sin(theta)    cos(theta)  0
      0             0           1];

R_RI=R_IR';

xi_R=[-80
      0
      .30]; 


% xi_R=R_RI*xi_I;

H=132/2;
W=132/2;
r=27;

l=sqrt(W^2+H^2);


alpha1=90*pi/180;     alpha2=-90*pi/180;
alpha3=90*pi/180;     alpha4=-90*pi/180;

beta1=-90*pi/180;       beta2=90*pi/180;
beta3=-90*pi/180;       beta4=90*pi/180;

gamma1=-45*pi/180;      gamma2=45*pi/180;
gamma3=45*pi/180;      gamma4=-45*pi/180;

%% HAMid
J11=[cos(beta1-gamma1)/sin(gamma1)    sin(beta1-gamma1)/sin(gamma1)    W*sin(beta1-gamma1-alpha1)/sin(gamma1)]
J12=[cos(beta2-gamma2)/sin(gamma2)    sin(beta2-gamma2)/sin(gamma2)    W*sin(beta2-gamma2-alpha2)/sin(gamma2)]
J13=[cos(beta3-gamma3)/sin(gamma3)    sin(beta3-gamma3)/sin(gamma3)    W*sin(beta3-gamma3-alpha3)/sin(gamma3)]
J14=[cos(beta4-gamma4)/sin(gamma4)    sin(beta4-gamma4)/sin(gamma4)    W*sin(beta4-gamma4-alpha4)/sin(gamma4)]


Ji_front=(-1/r)*[J11
              J12]

Ji_rear=(-1/r)*[J13
              J14]
              % J13
              % J14]

PHI_front=Ji_front*xi_R
J_front=Ji_front'*inv(Ji_front*Ji_front')

PHI_rear=Ji_rear*xi_R
J_rear=Ji_rear'*inv(Ji_rear*Ji_rear')


%% cinemática directa

xi_f_R=Ji_front\PHI_front
xi_f_Rb=J_front*PHI_front

xi_f_I=R_IR*xi_f_R

xi_r_R=Ji_rear\PHI_rear
xi_r_Rb=J_rear*PHI_rear

xi_r_I=R_IR*xi_r_R

eje_1=1; eje_2=1;
eje_3=1; eje_4=1;