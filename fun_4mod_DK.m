function xi_I=fun_4mod_DK(w1,w2,w3,w4,w5,w6,w7,w8,theta)
R_IR=[cos(theta)   -sin(theta)  0
      sin(theta)    cos(theta)  0
      0             0           1];

PHI=[w1;w2;w3;w4;w5;w6;w7;w8];

J_inv =[ 0.0370   -0.0370   -9.7774
   -0.0370   -0.0370   -9.7774
    0.0370   -0.0370   -4.8889
   -0.0370   -0.0370   -4.8889
    0.0370    0.0370   -4.8889
   -0.0370    0.0370   -4.8889
    0.0370    0.0370   -9.7774
   -0.0370    0.0370   -9.7774];

xi_R=J_inv\PHI;

xi_I=R_IR*xi_R;
end