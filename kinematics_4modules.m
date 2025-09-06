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


% xi_R=R_RI*xi_I;


xi_R=[80
      10
      .30]; 

L=132;

H=L;   % para 6 ruedas
W=132/2;
r=27;

H1=L+0.5*L;
H2=0.5*L;
H3=0.5*L;
H4=L+0.5*L;

l1=sqrt(W^2+H1^2);
l2=sqrt(W^2+H2^2);
l3=sqrt(W^2+H3^2);
l4=sqrt(W^2+H4^2);


alpha1=deg2rad(18.43);               alpha2=deg2rad(341.57);
alpha3=deg2rad(45);               alpha4=deg2rad(315);
alpha5=deg2rad(135);               alpha6=deg2rad(225);
alpha7=deg2rad(161.57);               alpha8=deg2rad(198.43);

beta1=deg2rad(-90);       beta2=deg2rad(90);
beta3=deg2rad(-90);       beta4=deg2rad(90);
beta5=deg2rad(-90);       beta6=deg2rad(90);
beta7=deg2rad(-90);       beta8=deg2rad(90);

gamma1=-45*pi/180;      gamma2=45*pi/180;
gamma3=-45*pi/180;      gamma4=45*pi/180;
gamma5=45*pi/180;      gamma6=-45*pi/180;
gamma7=45*pi/180;      gamma8=-45*pi/180;

J11=[cos(beta1-gamma1)/sin(gamma1)    sin(beta1-gamma1)/sin(gamma1)    l1*sin(beta1-gamma1-alpha1)/sin(gamma1)]
J12=[cos(beta2-gamma2)/sin(gamma2)    sin(beta2-gamma2)/sin(gamma2)    l1*sin(beta2-gamma2-alpha2)/sin(gamma2)]
J13=[cos(beta3-gamma3)/sin(gamma3)    sin(beta3-gamma3)/sin(gamma3)    l2*sin(beta3-gamma3-alpha3)/sin(gamma3)]
J14=[cos(beta4-gamma4)/sin(gamma4)    sin(beta4-gamma4)/sin(gamma4)    l2*sin(beta4-gamma4-alpha4)/sin(gamma4)]
J15=[cos(beta5-gamma5)/sin(gamma5)    sin(beta5-gamma5)/sin(gamma5)    l3*sin(beta5-gamma5-alpha5)/sin(gamma5)]
J16=[cos(beta6-gamma6)/sin(gamma6)    sin(beta6-gamma6)/sin(gamma6)    l3*sin(beta6-gamma6-alpha6)/sin(gamma6)]
J17=[cos(beta7-gamma7)/sin(gamma7)    sin(beta7-gamma7)/sin(gamma7)    l4*sin(beta7-gamma7-alpha7)/sin(gamma7)]
J18=[cos(beta8-gamma8)/sin(gamma8)    sin(beta8-gamma8)/sin(gamma8)    l4*sin(beta8-gamma8-alpha8)/sin(gamma8)]

J_inv=-(1/r)*[J11
              J12
              J13
              J14
              J15
              J16
              J17
              J18]

PHI=J_inv*xi_R

%% cinemática directa

xi_R=J_inv\PHI

xi_I=R_IR*xi_R

eje_1=1; eje_2=1;
eje_3=1; eje_4=1;
eje_5=1; eje_6=1;
eje_7=1; eje_8=1;


 % mdl = "SS_CONF1_4modules";
 % open_system(mdl)
 % set_param(mdl,SimulationCommand="start")

