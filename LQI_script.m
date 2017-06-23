%% Initialize Magman
clear all
h = 0.01;       %sampling time
m = 56.3/1000;  %Ball mass in kg

%Coil locations^
x1 = 0.02525;
x2 = 0.05;
x3 = 0.0751;
x4 = 0.103;

%% Fitted model
%Model parameters
a = 5.713e-09;
b = 0.000324;


x00 = 0.05; %Initial position for simulation
mu = 0.04;    %Damping coefficient

pos_var = 5e-09; %Position measurement variance


%% Kalman observer
R = pos_var;
Q = [1e-2 0;0 1e-6];

%% LQI

%LQI weights
%Position Velocity Integrator
q = diag([20,10,600],0); %old plant working solution
q = diag([50,10,800],0); %Sim works well somehow
r = diag([1 0.1 0.1 0.1]);             
N = zeros(3,4);

q = diag([50,10,800],0);
%q = diag([80,10,500],0);
%q = diag([120,110,1000]);
r = diag([1 1 1 1]);  

%Position to linearise the plant around
linpos = (x2+x3)/2; %Between second and third coil

%Generate linear model 
[A,B,C,D] = linmod('Magman_plain',[linpos,0]);
sys = ss(A,B,C,D);

%Discrete version of the linearised plant for the discrete Kalman Observer
sys_d = c2d(sys,h);

%Feedback gain generation
K = lqi(sys,q,r,N);

eig(A-B*K(1:4,1:2)) %Resulting closed loop eigenvalues
%Positions to simulate 
x00 = linpos-0.013; %Starting position
ref = linpos+0.007;  %Reference signal


