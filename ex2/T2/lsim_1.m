sys = tf([2 1],[1 4 3]);
t = -10:0.001:20;
f = 4 * sin(2 * pi * t) .* heaviside(t);
y = lsim(sys,f,t);
plot(t,y);