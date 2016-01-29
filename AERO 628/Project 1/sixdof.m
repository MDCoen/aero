function dy=sixdof(t,y,weight,T,Ic,R)

m=1;
dy=zeros(13,1);

%quat cross build
qx=[0     -y(13)  y(12);
    y(13)    0   -y(11);
    -y(12) y(11)    0];

%C matrix
C=eye(3)-2*y(10)*qx+2*qx*qx;


%angular rates
W=[y(7);y(8);y(9)];

%thrust, stops at 10 seconds
T=T*heaviside(10-t); 

%Newton
% dy(4:6)=C*weight+T/m-cross(W,y(4:6));

dy(4:6)=C*weight+T/m-cross(W,y(4:6));

%Rotate velocities to inertial coordinates
dy(1:3)=C'*y(4:6);


%Euler
dy(7:9)=Ic\(cross(R,T)-cross(W,Ic*W));

%Quaternion build
dqbuild=[-y(11) -y(12) -y(13);
           y(10) -y(13)  y(12);
           y(13)  y(10) -y(11);
          -y(12)  y(11)  y(10)];
   
%Quaternions, normalized
dy(10:13)=0.5*dqbuild*W/norm(y(10:13));



euler123 = 
