%%% Dynamic Simulation (from pages 178-189)
%Date: 2017-06-02
%%%

clear;
clc;

%% Creating Variables
syms c1 s1 g l1 thetadd1 thetad1 m1 thetad2 thetadd2 s2 c2 l2 m2;
%c1 = cos(theta1)
%s1 = sin(theta1)
%g = gravity
%thetadd1 = theta double dot
%thetad1 = theta dot 
%m1 = mass

%% Building symbolic equations
z = [0 0 1]';
x = [1 0 0]';
a0 = [0 g 0]';
pc1 = [0.4 0 0]';% taken fr fcdbrl (Grizzle) pg 332
R0_1 = [c1 s1 0; -s1 c1 0; 0 0 1];
R1_0 = [c1 -s1 0; -s1 c1 0; 0 0 1];
av1 = thetad1.*z;
aa1 = thetadd1.*z;
a1 = R0_1*(0.*0+av1.*(av1.*0)+a0);
ac1 = aa1.*pc1+av1.*(av1.*pc1)+a1;
%F1 = m1*ac1
