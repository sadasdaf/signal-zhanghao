t = -10:0.001:10;
f = 0;
for i = 1:1:10000
    f = f + sin(i * t) ./ i;
end
subplot(3,1,1);
plot(t,f);
title("f(t)的傅立叶级数");
subplot(3,1,2);
plot(t,f);
hold on;
t = 0:0.001:2 * pi;
y = (pi - t) / 2;
plot(t,y,'r');
%f(t) = (pi - t) / 2,  0 < t < 2 * pi
subplot(3,1,3);
plot(t,y);
axis([-10 10 -2 2]);
title("f(t) = (pi - t) / 2,  0 < t < 2 * pi");
