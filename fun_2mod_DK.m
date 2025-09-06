function xi_I=fun_2mod_DK(w1,w2,w3,w4,theta)

% theta=0;

R_IR=[cos(theta)   -sin(theta)  0
      sin(theta)    cos(theta)  0
      0             0           1];

PHI=[w1;w2;w3;w4];

J_inv =[0.0370   -0.0370   -4.8889
   -0.0370   -0.0370   -4.8889
    0.0370    0.0370   -4.8889
   -0.0370    0.0370   -4.8889];



xi_R=J_inv\PHI;

xi_I=R_IR*xi_R;



end