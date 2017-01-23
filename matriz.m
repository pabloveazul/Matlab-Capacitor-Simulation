function M= matriz(m,n,e,d1,d2)
E=permitivity_matrix(m,n,e,8.85);
r=floor((51-m)/2); 
s=floor((51-n)/2);
M=zeros(2500);
for n=1:2500
    M(n,n)=E(floor((n-1)/50)+1,rem(n-1,50)+1)+E(floor((n-1)/50)+1,rem(n-1,50)+2)+E(floor((n-1)/50)+2,rem(n-1,50)+1)+E(floor((n-1)/50)+2,rem(n-1,50)+2);
end
for n=1:49 %methode de differences finites%
    for m=1:50
    M(n+(m-1)*50, n+(m-1)*50+1)=-(1/2)*(E(floor((n+(m-1)*50-1)/50)+1,rem(n+(m-1)*50-1,50)+2)+E(floor((n+(m-1)*50-1)/50)+2,rem(n+(m-1)*50-1,50)+2)); %Droite
    M(n+(m-1)*50+1, n+(m-1)*50)=-(1/2)*(E(floor((n+(m-1)*50+1-1)/50)+1,rem(n+(m-1)*50+1-1,50)+1)+E(floor((n+(m-1)*50+1-1)/50)+2,rem(n+(m-1)*50+1-1,50)+1)); %Gauche
    end
end
for n=1:50
    for m=1:49
    M(n+(m-1)*50,n+m*50)=-(1/2)*(E(floor((n+(m-1)*50-1)/50)+2,rem(n+(m-1)*50-1,50)+1)+E(floor((n+(m-1)*50-1)/50)+2,rem(n+(m-1)*50-1,50)+2)); %Dessous
    M(n+m*50,n+(m-1)*50)=-(1/2)*(E(floor((n+m*50-1)/50)+1,rem(n+m*50-1,50)+1)+E(floor((n+m*50-1)/50)+1,rem(n+m*50-1,50)+2)); %Dessus
    end
end
for n=(r-2)*50+s-1-d1:(r-2)*50+(51-s)+d1 %netoyer pour faire l'identite (conductor)%
    for m=1:2500
        M(n,m)=0;
    end
end
for n=(51-r-1)*50+s-1-d2:(51-r-1)*50+(51-s)+d2 %netoyer pour faire l'identite (conductor%
    for m=1:2500
        M(n,m)=0;
    end
end
for n=(r-2)*50+s-1-d1:(r-2)*50+(51-s)+d1 %Rellenar con 1s% 
    M(n,n)=1;
end
for n=(51-r-1)*50+s-1-d2:(51-r-1)*50+(51-s)+d2 %Rellenar con 1s%
    M(n,n)=1;
end

