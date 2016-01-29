%% Rocket with bad nozzle
% Mauricio Coen
% AERO 622, November 2015

clc 
close all
clear
%% Problem setup

TForce=15; %N
misalignment=deg2rad(2.5); %rads
Tdir= [0; -sin(misalignment); cos(misalignment)]; %Direction of thrust
T=TForce*Tdir; %Thrust vector, N


g=-9.81; %m/s^2

weight=[0;0;g]; %Inertial weight

% weight=[0;0;g];

Ic=[32.5 0    0;
    0    32.5 0;
    0    0    5];  %kgm^2


R=[0;0;-3]; %position of Thrust relative to mass center, m


p=[0; 0; 3;]; %initial body position of center of mass
v=[0; 0; 0;]; %initial body velocity
W=[0; 0; 0.85]; % Initial angular rates, principal body axes, rad/s
Q=[1;0; 0; 0;];
aby=[0;0;0];
Cints=[1;0;0;0;1;0;0;0;1];

ic=[p;v;W;Q];

tspan=[0 40];
%% Solver
options=odeset('Events',@crashIntoGround,'RelTol', 1e-9);

%Solver
[t,y]=ode45(@(t,y) sixdof(t,y,weight,T,Ic,R),tspan,ic,options);

% Find index of Thrust Off
for i=1:length(t)

    if (t(i)>9.99)&&(t(i)<10.01)
        indexOff=i;
    end
end

%% Proble specific builds:
% Build the C matrix, inertial Velocities, Nose position
% and Euler Angles at each time step

C=zeros(3,3,length(t));
alpha=zeros(length(t),1);
beta=zeros(length(t),1);
gamma=zeros(length(t),1);

inertialVels=zeros(length(t),3);

Rnose=[0;0;5];
Nose=zeros(length(t),3);

k=1;
for i=1:length(t)
    
%quat cross build
qx=[0     -y(i,13)  y(i,12);
    y(i,13)    0   -y(i,11);
    -y(i,12) y(i,11)    0];

%C matrix
C(:,:,i)=eye(3)-2*y(i,10)*qx+2*qx*qx;

%Inertial velocities
inertialVels(i,:)=C(:,:,i)'*y(i,4:6)';

%Thrust Vector
if rem(i,10)==0
    k=k+1;
    inertialAccs(k,:)=C(:,:,i)'*T*heaviside(10-t(i)); 
    quiverPlot(k,:)=[y(i,1) y(i,2) y(i,3)];
end

%Euler Angles
alpha(i)=atan(-C(3,2,i)/C(3,3,i)); 
beta(i)=asin(C(3,1,i));
gamma(i)=atan(-C(1,2,i)/C(1,1,i));

%Rocket Nose
Nose(i,:)=y(i,1:3)'+C(:,:,i)'*Rnose;
end




%% Plots

figure(1)
plot3(y(:,1),y(:,2),y(:,3))
hold on
plot3(y(indexOff,1),y(indexOff,2),y(indexOff,3),'o')
scale=0;
quiver3(quiverPlot(:,1),quiverPlot(:,2),quiverPlot(:,3),...
    -inertialAccs(:,1),-inertialAccs(:,2),-inertialAccs(:,3),...
    scale,'ShowArrowHead','off','LineWidth',1)
grid on
axis equal
xlabel('X, m')
ylabel('Y, m')
zlabel('Z, m')
title('Inertial Position of Center of Mass')
legend('Trajectory','Position when thrust stops',...
    'Thrust Vector','Location','northeast')


figure(2)
plot(t,y(:,4))
hold on
plot(t,y(:,5))
plot(t,y(:,6))
grid on
xlabel('Time, s')
ylabel('Velocity, m/s')
title('Body Velocities')
legend('Vx','Vy','Vz')

figure(3)
plot(t,inertialVels(:,1))
hold on
plot(t,inertialVels(:,2))
plot(t,inertialVels(:,3))
grid on
xlabel('Time, s')
ylabel('Velocity, m/s')
title('Inertial Velocities')
legend('Vx','Vy','Vz')

figure(4)
plot(t,alpha)
hold on
plot(t,beta)
grid on
xlabel('Time, s')
ylabel('Angle, rad')
title('Euler Angles')
legend('\alpha','\beta')

figure(5)
plot(t,y(:,7))
hold on
plot(t,y(:,8))
grid on
xlabel('Time, s')
ylabel('Angular Velocity, rad/s')
title('Body Angular Velocities')
legend('\omega 1','\omega 2')

figure(6)
plot(Nose(:,1),Nose(:,2))
grid on
axis equal
xlabel('X, m')
ylabel('Y, m')
title('Nose position on inertial x-y plane')
