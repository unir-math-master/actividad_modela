function [linf,lsup]=ic_media(lista,alpha,desviacion)
p=1-alpha/2;
n=length(lista);
z=norminv(p);
t=tinv(p,n-1);
x=mean(lista);
if(nargin==2)
    if n<30
    cvar=var(lista);
    linf=x-cvar*t/sqrt(n);
    lsup=x+cvar*t/sqrt(n);
    else
        linf=x-z*std(lista)/sqrt(n);
        lsup=x+z*std(lista)/sqrt(n);
    end 
else 
    linf=x-z*desviacion/sqrt(n);
    lsup=x+z*desviacion/sqrt(n);
end 
end 