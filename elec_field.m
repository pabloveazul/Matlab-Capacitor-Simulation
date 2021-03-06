function [Ex,Ey]=elec_field(h,d1,d2,e,v)
V=matriz_pot(h,d1,d2,e,v);
[Ex,Ey]=gradient(-1*V); %Maxwell%;
contourf(V,100,'LineStyle','none')
colorbar
hold on
r=rem(h+1,2);
x=floor((51-d2)/2);
y=floor((51-h)/2)+r;
xp1=floor((51-d1)/2);
yp1=floor((51-h)/2)+r-1;
xp2=floor((51-d1)/2);
yp2=floor((51-h)/2)+h+r;
rectangle('Position',[x+0.5 y+0.5 d2 h],'FaceColor',[0 .5 .5],'EdgeColor','r')
rectangle('Position',[xp1+0.5 yp1+0.5 d1 1],'FaceColor',[0.89 0.49 0],'EdgeColor','k')
rectangle('Position',[xp2+0.5 yp2+0.5 d1 1],'FaceColor',[0.89 0.49 0],'EdgeColor','k')
rectangle('Position',[0.5 0.5 50 50])
quiver(Ex,Ey,'k')
title ('Electric Field and Electric Potential (kV) in the Plane XY');
xlabel('X(mm)')
ylabel('Y(mm)')
legend('Electric Potential', 'Electric Field')
hold off

