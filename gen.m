function [u,x] = gen(a,b,m,varargin)
global global_seed;

valid_scalar_b = @(x) isnumeric(x) && isscalar(x) && (x >= 0);
valid_scalar = @(x) isnumeric(x) && isscalar(x) && (x > 0);

p = inputParser;
addRequired(p, 'a', valid_scalar);
addRequired(p, 'b', valid_scalar_b);
addRequired(p, 'm', valid_scalar);
addOptional(p, 'x', global_seed, valid_scalar)
parse(p, a, b, m, varargin{:});

a = p.Results.a;
b = p.Results.b;
m = p.Results.m;
x = p.Results.x;

if (a>m) && (b<m)
    error('Valor no valido de a, Valide que a<m')
elseif (a<m) && (b>m)
    error('Valor no valido de b, Valide que b<m')
elseif (a>m) && (b>m)
    error('Valor no valido de a y b')
elseif (a<m) && (b<m)
	x = mod((a*x+b), m)
	u = x/m
end

end