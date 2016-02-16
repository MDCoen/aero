function dy=sixdof(y,Ic,p)

control(1,:) = -y(11:13) - y(7:9);
control(2,:) = -y(11:13)/y(10)^3 - y(7:9);
control(3,:) = -y(11:13)*sign(y(10)) - y(7:9);

dy=zeros(14,1);

%quat cross build
qx=[0     -y(13)  y(12);
    y(13)    0   -y(11);
    -y(12) y(11)    0];

%C matrix
C=eye(3)-2*y(10)*qx+2*qx*qx;


%angular rates
W=[y(7);y(8);y(9)];

%Weight is 1kg
% dy(4:6)=C-cross(W,y(4:6));

%Rotate velocities to inertial coordinates
% dy(1:3)=C'*y(4:6);

%Quaternion build
dqbuild=[-y(11) -y(12) -y(13);
           y(10) -y(13)  y(12);
           y(13)  y(10) -y(11);
          -y(12)  y(11)  y(10)];
   
%Quaternions, normalized
dy(10:13)=0.5*dqbuild*W/norm(y(10:13));

%Euler
dy(7:9)=Ic\(control(2,:)'-cross(W,Ic*W));

% Cost
dy(14) = norm(control(2,:));

