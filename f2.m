t = 0:0.01:10;
f = 4 * exp(-0.5 * t) .* cos(pi * t);
plot(t,f);
axis([-1 11 -3 5]);
xlabel("f(t) = 4 * exp(-0.5t) .* cos(¦Ðt),t = 0 ~ 10");
title('f2');