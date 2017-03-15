function E=mag_elecfield(Ex,Ey)
E=zeros(size(Ex),size(Ex));
for i=1:50
    for j=1:50
        E(i,j)=(Ex(i,j)^(2)+Ey(i,j)^(2))^(1/2);
    end
end
