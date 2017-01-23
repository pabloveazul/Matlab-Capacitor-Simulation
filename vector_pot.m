function V=vector_pot(m,n,e,d1,d2,v) 
C=zeros(2500,1); 
M=matriz(m,n,e,d1,d2);
r=floor((51-m)/2); 
s=floor((51-n)/2);
for n=(r-2)*50+s-1-d1:(r-2)*50+(51-s)+d1
C(n,1)=v; %known Potencial (Electrodes)% 
end
for n=(51-r-1)*50+s-1-d2:(51-r-1)*50+(51-s)+d2
C(n,1)=-v; %known Potencial (Electrodes)% 
end
V=M^(-1)*C; 