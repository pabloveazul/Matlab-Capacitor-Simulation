function V=vector_pot(h,d1,d2,e,v) 
C=zeros(2500,1); 
M=matriz(h,d1,d2,e);
r=floor((50-h)/2); 
s=floor((50-d1)/2);
for n=(r)*50+s+1:(r)*50+s+1+d1
C(n,1)=v; %known Potencial (Electrodes)% 
end
for n=(r+h+1)*50+s+1:(r+h+1)*50+s+1+d1
C(n,1)=-v; %known Potencial (Electrodes)% 
end
V=M^(-1)*C; 