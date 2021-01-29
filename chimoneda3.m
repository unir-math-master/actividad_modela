function [xa,xnk]=chimoneda3(lista)
%Test de hipetesis para tres lanzamientos de moneda con 100000 datos
% xa valor chi cuadrado según el valor de nivel de significancia y los grados de libertad
% xnk nivel de ajuste
% son 8 agrupaciones por lo que es el 12.5% de probabilidad para cada evento
k=8-1;
alpha=0.05;
xa=chi2inv(1-alpha,k);
n111=0;
n110=0;
n101=0;
n100=0; 
n011=0;
n010=0;
n001=0;
n000=0; 
for i=1:3333
    if eq(lista(3*i-2:3*i),[1,1,1])
        n111=n111+1;
    end 
    if eq(lista(3*i-2:3*i),[1,1,0])
            n110=n110+1;
    end 
    if eq(lista(3*i-2:3*i),[1,0,1])
            n101=n101+1;
    end
    if eq(lista(3*i-2:3*i),[1,0,0])
            n100=n100+1;
    end
     if eq(lista(3*i-2:3*i),[0,1,1])
        n011=n011+1;
    end 
    if eq(lista(3*i-2:3*i),[0,1,0])
            n010=n010+1;
    end 
    if eq(lista(3*i-2:3*i),[0,0,1])
            n001=n001+1;
    end
    if eq(lista(3*i-2:3*i),[0,0,0])
            n000=n000+1;
    end
end 
xnk=(n111-3333*0.125)^2/(3333*0.125)+(n110-3333*0.125)^2/(3333*0.125)+(n101-3333*0.125)^2/(3333*0.125)+(n100-3333*0.125)^2/(3333*0.125)+(n011-3333*0.125)^2/(3333*0.125)+(n010-3333*0.125)^2/(3333*0.125)+(n001-3333*0.125)^2/(3333*0.125)+(n000-3333*0.125)^2/(3333*0.125);
end