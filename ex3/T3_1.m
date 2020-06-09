clear ALL;
syms t;
syms w;
f1 = sym(exp(-2 * abs(t)));
F1 = fourier(f1);
F2 = sym(1 / (1 + w ^ 2));
f2 = ifourier(F2,t);
F1
f2
