function dy=prolateEqs(~,y,It,Ia,u)

dy=zeros(6,1);

%% Orientation

denom = 1/cos(y(2));

A= [cos(y(3))           -sin(y(3))           0;
    cos(y(2))*sin(y(3))  cos(y(3))*cos(y(2)) 0;
    -sin(y(2))*cos(y(3)) sin(y(3))*sin(y(2)) cos(y(2))];


Fr=A*denom*y(4:6);
dy(1:3)=Fr;
%% Angular Velocities

dy(4) = u/It +(It-Ia)/It*y(6)*y(5);
dy(5) = (Ia-It)/It*y(6)*y(4);
dy(6) = 0;
