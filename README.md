# Magman
Magnetic manipulation of ferromagnetic ball, allowing it to follow a reference trajectory on a one dimensional plane. 

**Project video link:**
https://www.youtube.com/watch?v=cU9OgvBCbVo

:beginner: **Project description and file guidelines**
This folder consists of the model, three controllers : 1. PID with state feedback linearisation 2. LQI controller 3. Constrained Optimisation with Model Predictive Control and the supporting data files.

- For nonlinear Magman model run the following:
  - model_generation
  - Magman_nonlinear_model

- Make sure the following files are on the running directory when implementing the Simulink models on the set up:
  - magmantemplate.slx	
  - magmantemplate15.slx	
  - sfserialout.m	
  - rs232.mexw64


- For system identification run the following files:
  - data analysis
  - matlab_and_force_measurements_3sets

- For PID with state feedback linearisation run the following files:
  - model_generation
  - Magman_PID
  - PID_script

- For LQI controller run the following files:
  - LQI script
  - Magman_LQI


- For MPC simulation run the following files:
 - model_generation
 - fminsim
 - mpc_control_parameters
 - MPC_fmin_implemented

**_END OF FILE, THANK YOU FOR YOUR ATTENTION._**
