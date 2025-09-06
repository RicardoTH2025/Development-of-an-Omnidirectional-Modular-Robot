function xi_I=fun_frontal_DK(w1,w2,theta)
R_IR=[cos(theta)   -sin(theta)  0
      sin(theta)    cos(theta)  0
      0             0           1];

PHI=[w1;w2];

J_inv =[    0.0370   -0.0370   -2.4444
   -0.0370   -0.0370   -2.4444];


xi_R=J_inv\PHI;

xi_I=R_IR*xi_R;
end