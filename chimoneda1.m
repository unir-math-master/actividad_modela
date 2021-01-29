function [xa,xnk]=chimoneda1(lista)
%Test de hipetesis para un lanzamiento de moneda con 100000 datos
% xa valor chi cuadrado según el valor de nivel de significancia y los grados de libertad
% xnk nivel de ajuste
% son 2 agrupaciones por lo que es el 50% de probabilidad para cada evento
k=2-1;
alpha=0.05;
xa=chi2inv(1-alpha,k);
n1=0;
n0=0;
for i=1:10000
    if lista(i)==1
        n1=n1+1;
    else if lista(i)==0
            n0=n0+1;
        end
    end 
end
xnk=(n1-10000*0.5)^2/(10000*0.5)+(n0-10000*0.5)^2/(10000*0.5);
end