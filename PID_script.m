%% Initialize Magman
clear all
h = 0.01; %sampling time
m = 56.3/1000; %Ball mass in kg

%Coil locations^
x1 = 0.02525;
x2 = 0.05;
x3 = 0.0751;
x4 = 0.103;

%% Load measurement data
load('measured_data.mat')
%Filter out currents above 0.45 where saturation seems to occur
ilim = i(find(i<0.45));
Flim = F(find(i<0.45));
xlim = x(find(i<0.45));
%% Fitted model
a = 4.367e-09;
b = 0.0002827;

x00 = 0.03;     %Initial position
mu = 0.04;      %Damping coefficient
pos_var = 5e-09; %Position measurement variance
c = 0.0005;
%Continuous ss model with total Force input
A = [0 1;0 -mu/m];
B = [0;1/m];
C = [1 0];
D = 0;

sys_c = ss(A,B,C,D);
sys_d = c2d(sys_c,h);
%Discrete model
[Ad,Bd,Cd,Dd,Ts] = ssdata(sys_d); 
