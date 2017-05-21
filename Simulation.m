function Simulation
m=input('Enter the diameter of the electrodes (in mm, max: 50): ');
d1=floor(m);
d=input('Enter the diameter of the dielectric material (in mmm, max: 50): ');
d2 = floor(d);
h=input('Enter the height of the dielectric material (in mm, max: 50): ');
h=floor(h);
e= input('Enter the relative electric permittivity of the dielectric material: ');
v= input('Enter the voltage difference between the electrodes (kV): ');

[Ex,Ey]=elec_field(h,d1,d2,e,v/2);
return