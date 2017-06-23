%% Coil central location: 0.751
% a =  6.044e-09;
% b = 0.0003299;

%% Coil central location: 0.745
a = 4.367e-09;
b = 0.0002827;

%% model for one coil 
m = 56.3*10^-3 ; % mass of ball in kg

% Initiation and Coil positions
x0 = 0.002;
x1 = 0.02525;
x2 = 0.05;
x3 = 0.0751;
x4 = 0.103;


h= 0.01
%% Observer Design
A = [ 0 1 ; 0 0];
C = [1 0];
syms s L l1 l2;
L = [ l1; l2];
charac = det(s*(eye(2,2)) - A + L*C);
charac_s = solve([charac == 0],s);
L_val = solve([charac_s(1)==-2, charac_s == -2],l1,l2);
