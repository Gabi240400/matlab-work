clear;
clc;

x = -10 : 0.1 : 10;

subplot (2, 3, 1);
plot(x, 3 * x - 7);
title("Grafic cartezian");

hold on;

f = @(t) 3*t.^3;
g = @(t) 3*t;
subplot (2, 3, 2);
plot(f(x), g(x));
title("Curba parametrica bidimensionala");

hold on;

f = @(theta) cos(theta).*sin(theta)
subplot (2, 3, 3);
polar(x, f(x));
title("Curba polara");

hold on;

f = @(t) 3*t.^3;
g = @(t) 2*t.^2;
h = @(t) t;
subplot (2, 3, 4);
plot3(f(x), g(x), h(x));
title("Curba parametrica tridimensionala");

hold on;

xa = -2:0.2:2;
[x,y] = meshgrid(xa);
z = x.*exp(x);
subplot (2, 3, 5);
surf(z);
title("Suprafata carteziana z = f(x)");

hold on;

r = 1;
uu = 0 : 0.1 : 10;
vv = -20*pi : pi/10 : 2*pi;
[u, v] = meshgrid(uu, vv);
x = (r + cos(u/2).*sin(v) - sin(u/2).*sin(2*v)).*cos(u);
y = (r + cos(u/2).*sin(v) - sin(u/2).*sin(2*v)).*sin(u);
z = sin(u/2).*sin(v) + cos(u/2).*sin(2*v);
subplot (2, 3, 6);
mesh(x, y, z);
title("Suprafata parametrica");