t = -10:0.001:10;
f1 = cos(30 * t) .* (heaviside(t + 2.5) - heaviside(t - 2.5));
f2 = heaviside(t) - heaviside(t - 4);
f = conv(f1,f2);
f = f * 0.001;
t1 = -20:0.001:20;
plot(t1,f);
axis([-4 7 -0.1 0.1]);
