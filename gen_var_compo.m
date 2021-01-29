function [u] = gen_var_compo()
global xn;

[R1,xn] = gen(16,4,75,xn);
[R2, xn] = gen(16,4,75,xn);

if R1 <= 1/4
    fx=pi*R2
elseif (1/4< R1) && (R1<=1/2)
    fx= 4* asin((sqrt(2)/2)*R2)
elseif (1/2<R1) && (R1<=1)
    fx=2*acos(-1*R2)
end

u=fx
end

