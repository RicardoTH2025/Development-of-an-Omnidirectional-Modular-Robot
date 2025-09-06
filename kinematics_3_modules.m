%% kinematics for three connected modules
clc
clearvars

TF=20;
Ts=0.0005;

theta=deg2rad(0);

R_IR=[cos(theta)   -sin(theta)  0
      sin(theta)    cos(theta)  0
      0             0           1];

R_RI=R_IR';

xi_R=[80
       0
       0]; 

H=132;
W=132/2;
r=27;

l=sqrt(W^2+H^2);

alpha1=deg2rad(26.57);     alpha2=deg2rad(333.43);
alpha3=deg2rad(90);             alpha4=deg2rad(270);
alpha5=deg2rad(153.43);     alpha6=deg2rad(206.57);

beta1=-90*pi/180;       beta2=90*pi/180;
beta3=-90*pi/180;       beta4=90*pi/180;
beta5=-90*pi/180;       beta6=90*pi/180;

gamma1=-45*pi/180;     gamma2=45*pi/180;
gamma3=-45*pi/180;      gamma4=45*pi/180;
gamma5=45*pi/180;      gamma6=-45*pi/180;

%% wheels equations
J11=[cos(beta1-gamma1)/sin(gamma1)    sin(beta1-gamma1)/sin(gamma1)    l*sin(beta1-gamma1-alpha1)/sin(gamma1)]
J12=[cos(beta2-gamma2)/sin(gamma2)    sin(beta2-gamma2)/sin(gamma2)    l*sin(beta2-gamma2-alpha2)/sin(gamma2)]
J13=[cos(beta3-gamma3)/sin(gamma3)    sin(beta3-gamma3)/sin(gamma3)    W*sin(beta3-gamma3-alpha3)/sin(gamma3)]
J14=[cos(beta4-gamma4)/sin(gamma4)    sin(beta4-gamma4)/sin(gamma4)    W*sin(beta4-gamma4-alpha4)/sin(gamma4)]
J15=[cos(beta5-gamma5)/sin(gamma5)    sin(beta5-gamma5)/sin(gamma5)    l*sin(beta5-gamma5-alpha5)/sin(gamma5)]
J16=[cos(beta6-gamma6)/sin(gamma6)    sin(beta6-gamma6)/sin(gamma6)    l*sin(beta6-gamma6-alpha6)/sin(gamma6)]

J_inv=(-1/r)*[J11
              J12
              J13
              J14
              J15
              J16]

PHI=J_inv*xi_R;

%% direct kinematics

xi_R=J_inv\PHI;

xi_I=R_IR*xi_R;

eje_1=1; eje_2=1;
eje_3=1; eje_4=1;
eje_5=1; eje_6=1;