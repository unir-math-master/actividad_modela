function [u] = gen_var_compo()
global xn;
global xn2;

[R1,xn] = gen(3,1,1048576, xn);
[R2, xn2] = gen(3,1,1048576,xn2);
%R1 = rand();
%R2 = rand();

if R1 <= 1/4
    fx=pi*R2;
elseif (R1>1/4) && (R1<=1/2)
    fx=4*asin((sqrt(2)/2)*R2);
elseif (R1>1/2) && (R1<=1)
    fx=2*acos(-1*R2);
end

u=fx;
end

