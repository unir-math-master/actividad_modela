function [xa,xnk]=chimoneda2(lista)
%Test de hipetesis para dos lanzamientos de moneda con 100000 datos
% xa valor chi cuadrado según el valor de nivel de significancia y los grados de libertad
% xnk nivel de ajuste
% son 4 agrupaciones por lo que es el 25% de probabilidad para cada evento
k=4-1;
alpha=0.05;
xa=chi2inv(1-alpha,k);
n11=0;
n10=0;
n01=0;
n00=0; 
for i=1:5000
    if eq(lista(2*i-1:2*i),[1,1])
        n11=n11+1;
    end 
    if eq(lista(2*i-1:2*i),[1,0])
            n10=n10+1;
    end 
    if eq(lista(2*i-1:2*i),[0,1])
            n01=n01+1;
    end
    if eq(lista(2*i-1:2*i),[0,0])
            n00=n00+1;
    end
end
n00
n01
n10
n11
xnk=(n11-5000*0.25)^2/(5000*0.25)+(n10-5000*0.25)^2/(5000*0.25)+(n01-5000*0.25)^2/(5000*0.25)+(n00-5000*0.25)^2/(5000*0.25);
end 