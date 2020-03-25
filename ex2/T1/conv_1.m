t = -10:0.001:10;
f1 = heaviside(t) - heaviside(t - 1);
f2 = 2 * t .* f1;
f = conv(f1,f2);
f = f * 0.001;
t1 = -20:0.001:20;
plot(t1,f);
axis([-2 4 -0.1 1.5]);