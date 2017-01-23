function [Ex,Ey]=elec_field(m,n,e,d1,d2,v)
V=matriz_pot(m,n,e,d1,d2,v);
[Ex,Ey]=gradient(-1*V); %Maxwell%;
contourf(V,100,'none')
colorbar
hold on
quiver(Ex,Ey,'k')
E= permitivity_matrix(m,n,e,0); %Zones where is the dielectric material%
spy(E,'xr',1.7)
title ('Electric Field and Electric Potential in the Plane XY');
xlabel('X(mm)')
ylabel('Y(mm)')
hold off

