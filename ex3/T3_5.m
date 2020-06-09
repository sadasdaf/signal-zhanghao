clear ALL;
syms t;
syms s;
H = s / (s ^ 2 + 3 * s + 2);
h = ilaplace(H,s,t);
h
g = ilaplace(H/s,s,t);
g
f = cos(20 * t) * heaviside(t);
F = laplace(f,t,s);
Y = F * H;
y = ilaplace(Y,s,t);
y