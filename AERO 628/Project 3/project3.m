%% Project 3. Lyapunov Control Laws for Regulation
% Mauricio Coen
% AERO 628


clc 
close all
clear

%% Problem setup

Ic=[1 0    0;
    0    2 0;
    0    0    3];  %kgm^2

It = Ic(1,1);
Ia = Ic(3,3);

% Initial position
x0 = [0 0 0];

% Initial Velocity
v0 = [0 0 0];

% Initial Angular Velocity
w0 = [0 0 0];


% Initial Cosine Matrix

C = [-1 2 -2;
      -2 1  2;
       2 2  1];
C = C/3;

% Shepherds Algorithm
snake = trace(C);
b0sq = (1.0+snake)/4.0;
b1sq = (1.0 + 2.0*C(1,1) - snake)*0.25;
b2sq = (1.0 + 2.0*C(2,2) - snake)*0.25;
b3sq = (1.0 + 2.0*C(3,3) - snake)*0.25;

% if max([b0sq, b1sq, b2sq, b3sq]) == b0sq
%     b0 = sqrt(b0sq);
%     b1 = ((C(2,3) - C(3,2))*0.25)/b0;
%     b2 = ((C(3,1) - C(1,3))*0.25)/b0;
%     b3 = ((C(1,2) - C(2,1))*0.25)/b0;
% elseif max([b0sq, b1sq, b2sq, b3sq]) == b1sq
%     b1 = sqrt(b1sq);
%     b0 = ((C(2,3) - C(3,2))*0.25)/b1;
%     b2 = ((C(1,2) + C(2,1))*0.25)/b1;
%     b3 = ((C(3,1) + C(1,3))*0.25)/b1;
% elseif max([b0sq, b1sq, b2sq, b3sq]) == b2sq
%     b2 = sqrt(b2sq);
%     b0 = ((C(3,1) - C(1,3))*0.25)/b2;
%     b1 = ((C(1,2) + C(2,1))*0.25)/b2;
%     b3 = ((C(2,3) + C(3,2))*0.25)/b2;
% else
    b3 =sqrt(b3sq);
    b0 = ((C(1,2) - C(2,1))*0.25)/b3;
    b1 = ((C(3,1) + C(1,3))*0.25)/b3;
    b2 = ((C(2,3) + C(3,2))*0.25)/b3;
% end


q = [b0 b1 b2 b3];

% Initial Conditions Accumulated
ic=[x0 v0 w0 q];

%% Euler Integration Solver
% Initialize state and append cost
y = [ic 0];

cost = zeros(3,1);
lyapunov = zeros(1,2);
% Define tolerance of simulation end-time
eps = 0.006;
epsW = 0.001;
% Time step
dt = 0.01;

i = 1;
t(1) = 0;

% Define control law with flag p:
% control(1) = -y(11:13) - y(7:9);
% control(2) = -y(11:13)/y(10)^3 - y(7:9);
% control(3) = -y(11:13)*sign(y(10)) - y(7:9);

for p = 1
    
    while (abs( norm(y(10:13)-[1 0 0 0])) >= eps) || (norm(y(7:9)) >= epsW)
        
        % Store results for plotting
        yStore(i,:) = y;
        
        % Store Euler principal angle
        eo(i) = acos(y(10))/2;
        
        %         length(sixdof(y,Ic,p))
        % propagate with Euler integration
        yNext = sixdof(y,Ic,p)' * dt +y;
        
        % Cost calculate
        cost(p) = cost(p) + y(14);
        
        % substitute
        y = yNext;
        
        
        % Grab the correct Lyapunov function
        
        lyapunov(i,1) = 0.5*y(7:9)*Ic*y(7:9)' + 2*(1-y(10));
%         lyapunov(i,1) = 0.5*y(7:9)*Ic*y(7:9)' + y(10)^(-2)-1;
        
        
        % increase counters
        i = i+1;
        t(i) = t(i-1) + dt;
        
        if rem(i,1000)==0
            
            i
        end
    end
    %% Plots
    
    figure
    subplot(1,3,1)
    hold on
    plot(t(1:end-1),yStore(:,7))
    plot(t(1:end-1),yStore(:,8))
    plot(t(1:end-1),yStore(:,9))
    grid on
    xlabel('Time, s')
    ylabel('Angular Velocity, rad/s')
    title(p)
    legend('\omega 1','\omega 2','\omega 3')
   
    
    subplot(1,3,2)
    hold on
    plot(t(1:end-1),yStore(:,10))
    plot(t(1:end-1),yStore(:,11))
    plot(t(1:end-1),yStore(:,12))
    plot(t(1:end-1),yStore(:,13))
    grid on
    xlabel('Time, s')
    ylabel('Quaternion')
    title(p)
    legend('q0','q1','q2','q3')
    
    subplot(1,3,3)
    plot(t(1:end-1),eo)
    xlabel('Time, s')
    ylabel('Euler principal angle')
    title(p)
    
     if p~=3
        figure
        plot(t(1:end-1),lyapunov(:,p))
        xlabel('Time, s')
        ylabel('Lyapunov Function')
        title(p)
    end
     disp('Cost')
    cost
end



%% Plots
% 
% figure
% subplot(1,3,1)
% hold on
% plot(t,y(:,7))
% plot(t,y(:,8))
% plot(t,y(:,9))
% grid on
% xlabel('Time, s')
% ylabel('Angular Velocity, rad/s'+p)
% title(p)
% legend('\omega 1','\omega 2','\omega 3',cost(p))
% 
% subplot(1,3,2)
% hold on
% plot(t,y(:,10))
% plot(t,y(:,11))
% plot(t,y(:,12))
% plot(t,y(:,13))
% grid on
% xlabel('Time, s')
% ylabel('Quaternion')
% title(p)
% legend('\alpha','\beta','\gamma')
% 
% subplot(1,3,3)
% plot(t,lyapunov(p))
% xlabel('Time, s')
% ylabel('Lyapunov Function')
% 
% 
% figure
% plot(t,eo)
% xlabel('Time, s')
% ylabel('Euler principal angle')
% title(p)
% 
% 
% 
