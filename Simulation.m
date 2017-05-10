function Simulation
m=input('Enter the diameter of the electrodes (mm): ');
m=floor(m);
d=input('Enter the diameter of the dielectric material (mm): ');
d = floor(d);
h=input('Enter the height of the dielectric material (mm): ');
h=floor(h);
e= input('Enter the relative electric permittivity of the dielectric material: ');
v= input('Enter the voltage difference between the electrodes (kV): ');
d1= floor((m-d)/2);
[Ex,Ey]=elec_field(h-2,d,e,d1,d1,v/2);
return