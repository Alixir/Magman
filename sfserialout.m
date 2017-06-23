function [sys,x0,str,ts] = sfserialout(t,x,u,flag,h,com)
%SFSERIAL Serial output to robot from Simulink.
%    h   ... sampling period in [s]
%    com ... serial port objects

%   (c) Robert Babuska, 2017

switch flag
  case 0; [sys,x0,str,ts]=mdlInitializeSizes(h,com);
  case 3; sys = mdlOutputs(u,x,com);
  case 9; sys = mdlTerminate(com);
  otherwise; sys=[];
end

function [sys,x0,str,ts]=mdlInitializeSizes(h,com)
sizes = simsizes;
sizes.NumContStates  = 0;           % no need for states
sizes.NumDiscStates  = 0;           % no need for states
sizes.NumOutputs     = 0;           % no outputs
sizes.NumInputs      = 4;           % 4 actuators
sizes.DirFeedthrough = 1;
sizes.NumSampleTimes = 1;
sys = simsizes(sizes);
x0 = []; str = [];
ts = [-1 0];                        % Set sample time
if length(h)>0 ts(1)=h(1); end;
if length(h)>1 ts(2)=h(2); end;

function sys = mdlOutputs(u,x,com)
% Str = sprintf('%s %1.0f %1.0f','P', u); % send data to the port
% fprintf(s,Str);                         % send data to the port
u = min(0.6, max(0, u));           
us = 2048+round((u/0.6)*2048);
Str12=sprintf('%s%s%s%s%s','q ',char(33+fix(us(1)/80)),char(33+rem(us(1),80)),char(33+fix(us(2)/80)),char(33+rem(us(2),80))); % Coils 1 and 2
Str34=sprintf('%s%s%s%s%s','q ',char(33+fix(us(3)/80)),char(33+rem(us(3),80)),char(33+fix(us(4)/80)),char(33+rem(us(4),80))); % Coils 3 and 4
rs232('write', com(1), uint8([abs(Str12) 13]));     % Sent currents to Coil 1 and 2
rs232('write', com(2), uint8([abs(Str34) 13]));     % Send currents to Coil 3 and 4
% fwrite(com(1), uint8([abs(Str12) 13]));           % Send currents to Coil 1 and 2
% fwrite(com(2), uint8([abs(Str34) 13]));           % Send currents to Coil 3 and 4
sys = [];

function sys = mdlTerminate(com)
rs232('write', com(1),uint8([abs('P 0 0') 13 10])); % reset actuators to 0
rs232('write', com(2),uint8([abs('P 0 0') 13 10])); % reset actuators to 0
rs232('close', com(1));
rs232('close', com(2));
sys = [];
