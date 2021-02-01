clear;
clc;

global xn;
global xn2;
xn = 42;
xn2 = 1;

for i=1:10000
    rand_numbers(i) = gen_var_compo();
end


x = 0:pi/100:pi;
y = (1/4*pi) + (cos(x/4)/(8*sqrt(2))) + (sin(x/2)/4);
%y = -(sin(x/4)/(32*sqrt(2))) + (cos(x/2)/8)
%y = (1/pi) + (cos(x/4)/2*sqrt(2)) + sin(x/2)/2

histogram(rand_numbers,20, 'Normalization', 'pdf')
hold on
plot(x,y)
