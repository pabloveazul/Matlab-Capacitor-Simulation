function V=matriz_pot(h,d1,d2,e,v) 
D=vector_pot(h,d1,d2,e,v); 
V=zeros(50,50);
for i=1:50
for j=1:50 
    V(i,j)=D(50*(i-1)+j);
end
end
