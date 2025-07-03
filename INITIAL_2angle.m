clc; close all; clear ll;
format short

d2r = pi/180;

%target
V_T = 600;
X_T0 = 0;
Y_T0 = 0;
Z_T0 = 20000;
L_T0 = -2.5*d2r;
P_T0 = 30*d2r;


%missile
X_M0 = 0;
Y_M0 = 0;
Z_M0 = 0;
L_M0 = 70*d2r;
P_M0 = 50*d2r;

%Control loop gains
Kdc = 1.1;
Ka = 4.5;
Ki = 14.3;
Kr = -0.37;


