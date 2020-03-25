t = -10:0.01:10;
g2 = heaviside(t + 2) - heaviside(t - 2);
g4 = heaviside(t + 4) - heaviside(t - 4);
f = g2 + g4;
plot(t,f);
axis([-11 11 -1 3]);
xlabel("f(t) = ¦Å(t),t = -1 ~ 10");
title('f3');