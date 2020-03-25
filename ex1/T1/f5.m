a = nthroot(0.6,k);
f = 7 * a .* cos(0.9 * pi * k);
stem(k,f);
axis([-10 10 -12 10]);
xlabel("f(t) = 7 * 0.6^k .* cos(0.9 * ¦Ð * k)");
title('f5');