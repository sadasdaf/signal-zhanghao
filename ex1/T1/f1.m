t = -1:0.01:10;
f = heaviside(t);
plot(t,f);
axis([-2 11 -1 2]);
xlabel("f(t) = ¦Å(t),t = -1 ~ 10");
title('f1');