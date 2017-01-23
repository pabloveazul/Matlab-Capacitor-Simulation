function E=permitivity_matrix(m,n,e,a)
E=ones(51,51)*a; %Electric Permittivity on air in 10^12 [F^/m]

r=floor((51-m)/2); 
s=floor((51-n)/2);
for i=r:(51-r)
    for j=s:(51-s)
        E(i,j)=e;
    end
end
