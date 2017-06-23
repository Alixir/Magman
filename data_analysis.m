load('matlab_and_force_measurements_3sets')
%% Measurement set 1 freq = 0.5rad/s
% Labview
force1 = f1*10^-3;
time1 = t1*10^-3;
% Matlab
current1 = 0.25*sin(0.5*(time1-10.8) - pi/2) + 0.3;
pos1 = mean(p1); % mean postion

% Sorting out the dataset 
figure(10)
plot(time1,force1)
hold on
plot(time1,current1)
hold off
legend('Force1','Current1');

% sl1 = find(time1>7 & time1<90); % sorted location
sl1 = find(time1>10.8 & time1<90); % sorted location
off1 = mean(force1(find(time1>90.9):end)); % offset correction
% Sorted dataset
fs1 = -(force1(sl1(1):sl1(end)) - off1);  % sorted force
ts1 = time1(sl1(1):sl1(end));   % sorted time
cs1 = current1(sl1(1):sl1(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs1 = fs1(find(cs1<0.45));
ts1 = ts1(find(cs1<0.45));
cs1 = cs1(find(cs1<0.45));

figure(11)
plot(ts1,fs1)
hold on
plot(ts1,cs1)
hold off
legend('Sorted force 1','Sorted current1');


%% Measurement set 2 freq = 0.5rad/s
% Labview
force2 = f2*10^-3;
time2 = t2*10^-3;
% Matlab
current2 = 0.25*sin(0.5*(time2-10.42) - pi/2) + 0.3;
pos2 = mean(p2); % mean postion

% Sorting out the dataset 
figure(20)
plot(time2,force2)
hold on
plot(time2,current2)
hold off
legend('Force2','Current2');

sl2 = find(time2>10.42 & time2<90); % sorted location
off2 = mean(force2(find(time2>90.82):end)); % offset correction
% Sorted dataset
fs2 = -(force2(sl2(1):sl2(end))-off2);  % sorted force
ts2 = time2(sl2(1):sl2(end));   % sorted time
cs2 = current2(sl2(1):sl2(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs2 = fs2(find(cs2<0.45));
ts2 = ts2(find(cs2<0.45));
cs2 = cs2(find(cs2<0.45));

figure(21)
plot(ts2,fs2)
hold on
plot(ts2,cs2)
hold off
legend('Sorted force 2','Sorted current 2');


%% Measurement set 3 freq = 0.5rad/s
% Labview
force3 = f3*10^-3;
time3 = t3*10^-3;
% Matlab
current3 = 0.25*sin(0.5*(time3-10.34) - pi/2) + 0.3;
pos3 = mean(p3); % mean postion

% Sorting out the dataset 
figure(30)
plot(time3,force3)
hold on
plot(time3,current3)
hold off
legend('Force3','Current3');

sl3 = find(time3>10.34 & time3<84); % sorted location
off3 = mean(force3(find(time3>84.04):end)); % offset correction

% Sorted dataset
fs3 = -(force3(sl3(1):sl3(end)) - off3);  % sorted force
ts3 = time3(sl3(1):sl3(end));   % sorted time
cs3 = current3(sl3(1):sl3(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs3 = fs3(find(cs3<0.45));
ts3 = ts3(find(cs3<0.45));
cs3 = cs3(find(cs3<0.45));

figure(31)
plot(ts3,fs3)
hold on
plot(ts3,cs3)
hold off
legend('Sorted force 3','Sorted current 3');


%% Measurement set 4 freq = 0.5rad/s
% Labview
force4 = f4*10^-3;
time4 = t4*10^-3;
% Matlab
current4 = 0.25*sin(0.5*(time4-10) - pi/2) + 0.3;
pos4 = mean(p4); % mean postion

% Sorting out the dataset 
figure(40)
plot(time4,force4)
hold on
plot(time4,current4)
hold off
legend('Force4','Current4');

sl4 = find(time4>10 & time4<89.2); % sorted location
off4 = mean(force4(find(time4>90.8):end)); % offset correction
% Sorted dataset
fs4 = -(force4(sl4(1):sl4(end))-off4);  % sorted force
ts4 = time4(sl4(1):sl4(end));   % sorted time
cs4 = current4(sl4(1):sl4(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs4 = fs4(find(cs4<0.45));
ts4 = ts4(find(cs4<0.45));
cs4 = cs4(find(cs4<0.45));

figure(41)
plot(ts4,fs4)
hold on
plot(ts4,cs4)
hold off
legend('Sorted force 4','Sorted current 4');


%% Measurement set 5 freq = 0.5rad/s
% Labview
force5 = f5*10^-3;
time5 = t5*10^-3;
% Matlab
current5 = 0.25*sin(0.5*(time5-22.03) - pi/2) + 0.3;
pos5 = mean(p5); % mean postion

% Sorting out the dataset 
figure(50)
plot(time5,force5)
hold on
plot(time5,current5)
hold off
legend('Force5','Current5');

sl5 = find(time5>22.03 & time5<101.8); % sorted location
buf1 = find(time5<12.43);
buf2 = find(time5>103.5);
off5 = mean([force5(1:buf1(end));force5(buf2(1):end)]); % offset correction

% Sorted dataset
fs5 = -(force5(sl5(1):sl5(end))-off5);  % sorted force
ts5 = time5(sl5(1):sl5(end));   % sorted time
cs5 = current5(sl5(1):sl5(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs5 = fs5(find(cs5<0.45));
ts5 = ts5(find(cs5<0.45));
cs5 = cs5(find(cs5<0.45));

figure(51)
plot(ts5,fs5)
hold on
plot(ts5,cs5)
hold off
legend('Sorted force 5','Sorted current 5');

%% Measurement set 6 freq = 1rad/s
% Labview
force6 = f6*10^-3;
time6 = t6*10^-3;
% Matlab
current6 = 0.25*sin(1*(time6-12.39) - pi/2) + 0.3;
pos6 = mean(p6); % mean postion

% Sorting out the dataset 
figure(60)
plot(time6,force6)
hold on
plot(time6,current6)
hold off
legend('Force6','Current6');

sl6 = find(time6>12.39 & time6<64.4); % sorted location
off6 = mean([force6(find(time6<7.67));force6(find(time6>67.78):end)]); % offset correction
% Sorted dataset
fs6 = -(force6(sl6(1):sl6(end))- off6);  % sorted force
ts6 = time6(sl6(1):sl6(end));   % sorted time
cs6 = current6(sl6(1):sl6(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs6 = fs6(find(cs6<0.45));
ts6 = ts6(find(cs6<0.45));
cs6 = cs6(find(cs6<0.45));

figure(61)
plot(ts6,fs6)
hold on
plot(ts6,cs6)
hold off
legend('Sorted force 6','Sorted current 6');

%% Measurement set 8 freq = 1rad/s
% Labview
force8 = f8*10^-3;
time8 = t8*10^-3;
% Matlab
current8 = 0.25*sin(1*(time8-12.07) - pi/2) + 0.3;
pos8 = mean(p8); % mean postion

% Sorting out the dataset 
figure(80)
plot(time8,force8)
hold on
plot(time8,current8)
hold off
legend('Force8','Current8');

sl8 = find(time8>12.07 & time8<96.7); % sorted location
off8 = mean([force8(find(time8<7.2));force8(find(time8>97.47):end)]); % offset correction
% Sorted dataset
fs8 = -(force8(sl8(1):sl8(end))- off8);  % sorted force
ts8 = time8(sl8(1):sl8(end));   % sorted time
cs8 = current8(sl8(1):sl8(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs8 = fs8(find(cs8<0.45));
ts8 = ts8(find(cs8<0.45));
cs8 = cs8(find(cs8<0.45));

figure(81)
plot(ts8,fs8)
hold on
plot(ts8,cs8)
hold off
legend('Sorted force 8','Sorted current 8');

%% Measurement set 9 freq = 1rad/s
% Labview
force9 = f9*10^-3;
time9 = t9*10^-3;
% Matlab
current9 = 0.25*sin(1*(time9-10.23) + pi/2) + 0.3;
pos9 = mean(p9); % mean postion

% Sorting out the dataset 
figure(90)
plot(time9,force9)
hold on
plot(time9,current9)
hold off
legend('Force9','Current9');

sl9 = find(time9>10.23 & time9<68.53); % sorted location
off9 = mean([force9(find(time9<8.428));force9(find(time9>68.63):end)]); % offset correction
% Sorted dataset
fs9 = -(force9(sl9(1):sl9(end))- off9);  % sorted force
ts9 = time9(sl9(1):sl9(end));   % sorted time
cs9 = current9(sl9(1):sl9(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs9 = fs9(find(cs9<0.45));
ts9 = ts9(find(cs9<0.45));
cs9 = cs9(find(cs9<0.45));

figure(91)
plot(ts9,fs9)
hold on
plot(ts9,cs9)
hold off
legend('Sorted force 9','Sorted current 9');

%% Measurement set 10 freq = 1rad/s
% Labview
force10 = f10*10^-3;
time10 = t10*10^-3;
% Matlab
current10 = 0.25*sin(1*(time10-9.437) + pi/2) + 0.3;
pos10 = mean(p10); % mean postion

% Sorting out the dataset 
figure(100)
plot(time10,force10)
hold on
plot(time10,current10)
hold off
legend('Force10','Current10');

sl10 = find(time10>9.437 & time10<65.14); % sorted location
off10 = mean([force10(find(time10<7.837));force10(find(time10>68.04):end)]); % offset correction
% Sorted dataset
fs10 = -(force10(sl10(1):sl10(end))- off10);  % sorted force
ts10 = time10(sl10(1):sl10(end));   % sorted time
cs10 = current10(sl10(1):sl10(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs10 = fs10(find(cs10<0.45));
ts10 = ts10(find(cs10<0.45));
cs10 = cs10(find(cs10<0.45));

figure(101)
plot(ts10,fs10)
hold on
plot(ts10,cs10)
hold off
legend('Sorted force 10','Sorted current 10');

%% Measurement set 11 freq = 1rad/s
% Labview
force11 = f11*10^-3;
time11 = t11*10^-3;
% Matlab
current11 = 0.25*sin(1*(time11-9.53) + pi) + 0.3;
pos11 = mean(p11); % mean postion

% Sorting out the dataset 
figure(110)
plot(time11,force11)
hold on
plot(time11,current11)
hold off
legend('Force11','Current11');

sl11 = find(time11>9.53 & time11<62.93); % sorted location
off11 = mean([force11(find(time11<6.03));force11(find(time11>66.13):end)]); % offset correction
% Sorted dataset
fs11 = -(force11(sl11(1):sl11(end))- off11);  % sorted force
ts11 = time11(sl11(1):sl11(end));   % sorted time
cs11 = current11(sl11(1):sl11(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs11 = fs11(find(cs11<0.45));
ts11 = ts11(find(cs11<0.45));
cs11 = cs11(find(cs11<0.45));

figure(111)
plot(ts11,fs11)
hold on
plot(ts11,cs11)
hold off
legend('Sorted force 11','Sorted current 11');


%% Measurement set 12 freq = 1rad/s
% Labview
force12 = f12*10^-3;
time12 = t12*10^-3;
% Matlab
current12 = 0.25*sin(1*(time12-7.65) + pi) + 0.3;
pos12 = mean(p12); % mean postion

% Sorting out the dataset 
figure(120)
plot(time12,force12)
hold on
plot(time12,current12)
hold off
legend('Force12','Current12');

sl12 = find(time12>7.65 & time12<62.05); % sorted location
off12 = mean([force12(find(time12<4.349));force12(find(time12>64.35):end)]); % offset correction
% Sorted dataset
fs12 = -(force12(sl12(1):sl12(end))- off12);  % sorted force
ts12 = time12(sl12(1):sl12(end));   % sorted time
cs12 = current12(sl12(1):sl12(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs12 = fs12(find(cs12<0.45));
ts12 = ts12(find(cs12<0.45));
cs12 = cs12(find(cs12<0.45));

figure(121)
plot(ts12,fs12)
hold on
plot(ts12,cs12)
hold off
legend('Sorted force 12','Sorted current 12');


%% Measurement set 13 freq = 1rad/s
% Labview
force13 = f13*10^-3;
time13 = t13*10^-3;
% Matlab
current13 = 0.25*sin(1*(time13-10.50) + pi) + 0.3;
pos13 = mean(p13); % mean postion

% Sorting out the dataset 
figure(130)
plot(time13,force13)
hold on
plot(time13,current13)
hold off
legend('Force13','Current13');

sl13 = find(time13>10.50 & time13<64.31); % sorted location
off13 = mean([force13(find(time13<7.109));force13(find(time13>67.31):end)]); % offset correction
% Sorted dataset
fs13 = -(force13(sl13(1):sl13(end))- off13);  % sorted force
ts13 = time13(sl13(1):sl13(end));   % sorted time
cs13 = current13(sl13(1):sl13(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs13 = fs13(find(cs13<0.45));
ts13 = ts13(find(cs13<0.45));
cs13 = cs13(find(cs13<0.45));

figure(131)
plot(ts13,fs13)
hold on
plot(ts13,cs13)
hold off
legend('Sorted force 13','Sorted current 13');

%% Measurement set 14 freq = 1rad/s
% Labview
force14 = f14*10^-3;
time14 = t14*10^-3;
% Matlab
current14 = 0.25*sin(1*(time14-6.296) + pi/2) + 0.3;
pos14 = mean(p14); % mean postion

% Sorting out the dataset 
figure(140)
plot(time14,force14)
hold on
plot(time14,current14)
hold off
legend('Force14','Current14');

sl14 = find(time14>6.296 & time14<64.1); % sorted location
off14 = mean([force14(find(time14<4.696));force14(find(time14>64.8):end)]); % offset correction
% Sorted dataset
fs14 = -(force14(sl14(1):sl14(end))- off14);  % sorted force
ts14 = time14(sl14(1):sl14(end));   % sorted time
cs14 = current14(sl14(1):sl14(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs14 = fs14(find(cs14<0.45));
ts14 = ts14(find(cs14<0.45));
cs14 = cs14(find(cs14<0.45));

figure(141)
plot(ts14,fs14)
hold on
plot(ts14,cs14)
hold off
legend('Sorted force 14','Sorted current 14');

%% Measurement set 15 freq = 1rad/s
% Labview
force15 = f15*10^-3;
time15 = t15*10^-3;
% Matlab
current15 = 0.25*sin(1*(time15-8.251) + pi) + 0.3;
pos15 = mean(p15); % mean postion

% Sorting out the dataset 
figure(150)
plot(time15,force15)
hold on
plot(time15,current15)
hold off
legend('Force15','Current15');

sl15 = find(time15>8.251 & time15<64.85); % sorted location
off15 = mean([force15(find(time15<4.851));force15(find(time15>65.15):end)]); % offset correction
% Sorted dataset
fs15 = -(force15(sl15(1):sl15(end))- off15);  % sorted force
ts15 = time15(sl15(1):sl15(end));   % sorted time
cs15 = current15(sl15(1):sl15(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs15 = fs15(find(cs15<0.45));
ts15 = ts15(find(cs15<0.45));
cs15 = cs15(find(cs15<0.45));

figure(151)
plot(ts15,fs15)
hold on
plot(ts15,cs15)
hold off
legend('Sorted force 15','Sorted current 15');

%% Measurement set 16 freq = 1rad/s
% Labview
force16 = f16*10^-3;
time16 = t16*10^-3;
% Matlab
current16 = 0.25*sin(1*(time16-8.038) + pi/2) + 0.3;
pos16 = mean(p16); % mean postion

% Sorting out the dataset 
figure(160)
plot(time16,force16)
hold on
plot(time16,current16)
hold off
legend('Force16','Current16');

sl16 = find(time16>8.038 & time16<66.04); % sorted location
off16 = mean([force16(find(time16<6.138));force16(find(time16>66.24):end)]); % offset correction
% Sorted dataset
fs16 = -(force16(sl16(1):sl16(end))- off16);  % sorted force
ts16 = time16(sl16(1):sl16(end));   % sorted time
cs16 = current16(sl16(1):sl16(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs16 = fs16(find(cs16<0.45));
ts16 = ts16(find(cs16<0.45));
cs16 = cs16(find(cs16<0.45));

figure(161)
plot(ts16,fs16)
hold on
plot(ts16,cs16)
hold off
legend('Sorted force 16','Sorted current 16');

%% Measurement set 17 freq = 1rad/s
% Labview
force17 = f17*10^-3;
time17 = t17*10^-3;
% Matlab
current17 = 0.25*sin(1*(time17-16.16) + pi/2) + 0.3;
pos17 = mean(p17); % mean postion

% Sorting out the dataset 
figure(170)
plot(time17,force17)
hold on
plot(time17,current17)
hold off
legend('Force17','Current17');

sl17 = find(time17>16.16& time17<67.86); % sorted location
off17 = mean([force17(find(time17>67.86):end)]); % offset correction
% Sorted dataset
fs17 = -(force17(sl17(1):sl17(end))- off17);  % sorted force
ts17 = time17(sl17(1):sl17(end));   % sorted time
cs17 = current17(sl17(1):sl17(end)); % sorted current

% Cancelling out the influence of current > 0.45
fs17 = fs17(find(cs17<0.45));
ts17 = ts17(find(cs17<0.45));
cs17 = cs17(find(cs17<0.45));

figure(171)
plot(ts17,fs17)
hold on
plot(ts17,cs17)
hold off
legend('Sorted force 17','Sorted current 17');


%% Data Accumulation
force_oneside = [fs9;fs10;fs11;fs12;fs13;fs14;fs15;fs16;fs17];
time = [ts9;ts10;ts11;ts12;ts13;ts14;ts15;ts16;ts17];
current_oneside = [cs9;cs10;cs11;cs12;cs13;cs14;cs15;cs16;cs17];
%0.0745
pos_oneside = [ (pos9-0.0745)*ones(size(cs9));(pos10-0.0745)*ones(size(cs10));(pos11-0.0745)*ones(size(cs11));(pos12-0.0745)*ones(size(cs12));(pos13-0.0745)*ones(size(cs13));(pos14-0.0745)*ones(size(cs14));(pos15-0.0745)*ones(size(cs15));(pos16-0.0745)*ones(size(cs16));(pos17-0.0745)*ones(size(cs17))];


force = [force_oneside;-force_oneside];
pos = [pos_oneside;-pos_oneside];
current = [current_oneside; current_oneside];

%% Four coil compilation 
pos1 = pos + 0.02525;
pos2 = pos + 0.05;
pos3 = pos + 0.0751;
pos4 = pos + 0.103;

posall = [pos1;pos2;pos3;pos4];
forceall= [force;force;force;force];
currentall = [current;current;current;current];

%% Coil Locations :
% x0 = 0.002;
% x1 = 0.02525;
% x2 = 0.05;
% x3 = 0.0751;
% x4 = 0.103;
