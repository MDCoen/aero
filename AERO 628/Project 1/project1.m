%% Project 1
% Mauricio Coen
% AERO 628

clc 
close all
clear

%% Problem setup

Ic=[1 0    0;
    0    1 0;
    0    0    0.05];  %kgm^2

It = Ic(1,1);
Ia = Ic(3,3);

u=0.2*It;

ic=[0,0,0,0,0,1];

tspan=[0 30];



%% Numerical Solver
options=odeset('RelTol', 1e-9);

%Solver
[t,y]=ode45(@(t,y) prolateEqs(t,y,It,Ia,u),tspan,ic,options);



%% Problem specific builds:

Fs=length(y(:,1))/30;
spectrum1 = fft(y(:,1));
spectrum2 = fft(y(:,2));
L=length(y(:,1));

P22 = abs(spectrum1/L);
P11 = P22(1:length(P22)/2+1);
P11(2:end-1) = 2*P11(2:end-1);

f = Fs*(0:(L/2))/L;

P222 = abs(spectrum2/L);
P111 = P222(1:length(P222)/2+1);
P111(2:end-1) = 2*P111(2:end-1);

figure(1)
plot(f,P11)
hold on 
plot(f,P111)
title('Single-Sided Amplitude Spectrum of Orientation Angles')
xlabel('f (Hz)')
ylabel('|P1(f)|')
legend('\alpha','\beta')
axis( [0 2 0 0.1])

%% Plots

figure(2)
plot(t,y(:,4))
hold on
plot(t,y(:,5))
% plot(t,y(:,6))
grid on
xlabel('Time, s')
ylabel('Angular Velocity, rad/s')
title('Angular Velocities')
legend('\omega 1','\omega 2','\omega 3')

figure(3)
plot(t,y(:,1))
hold on
plot(t,y(:,2))
% plot(t,y(:,3))
grid on
xlabel('Time, s')
ylabel('Orientation Angles, rad/s')
title('Orientation Angles')
legend('\alpha','\beta','\gamma')
