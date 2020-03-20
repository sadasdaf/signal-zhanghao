k = -10:10;
f = heaviside(k + 2) - heaviside(k - 5);
stem(k,f);
axis([-4 7 0 2]);
xlabel("f(k) = ¦Å(k + 2) - ¦Å(k - 5)");
title('f4');