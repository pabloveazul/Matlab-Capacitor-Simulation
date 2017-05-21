function E=permitivity_matrix(m,n,e,a)
E=ones(51,51)*a; %Electric Permittivity on air in 10^12 [F^/m]

r=floor((51-m-1)/2); 
s=floor((51-n-1)/2);
for i=r+1:r+m+1
    for j=s+1:s+n+1
        E(i,j)=e;
    end
end
