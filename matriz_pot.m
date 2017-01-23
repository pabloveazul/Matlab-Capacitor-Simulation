function V=matriz_pot(m,n,e,d1,d2,v) 
D=vector_pot(m,n,e,d1,d2,v); 
V=zeros(50,50);
for i=1:50
for j=1:50 
    V(i,j)=D(50*(i-1)+j);
end
end
