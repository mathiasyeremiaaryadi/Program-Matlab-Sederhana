clear
clc

syms x;
f = 2*x^2 + 7*x - 3;
g = -x^2 + 5;
h = 2*x - 3;
%nomor a
d = compose(g, f);
subs(d, x, 2)
%nomor b
subs(compose(h, g), x, -2)
%nomor c
subs(compose(g, h, f), x, 3)
%nomor d
subs(compose(h,g,f), x, -3)
%nomor e
subs(compose(f, h, g), x, -1)