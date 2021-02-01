function [linf,lsup]=ic_desv(lista,alpha)
p=alpha/2;
p1=1-p;
n=length(lista);
z=norminv(p);
x=mean(lista);
v=var(lista);% varianza
    linf=sqrt((n-1)*v/chi2inv(p1,n-1));
    lsup=sqrt((n-1)*v/chi2inv(p,n-1));
end
  