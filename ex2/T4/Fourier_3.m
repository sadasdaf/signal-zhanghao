t = -10:0.001:10;
t1 = 0:0.001:2 * pi;
y = (pi - t1) / 2;
f = 0;
for i = 1:1:50
    f = f + sin(i * t) ./ i;
end
subplot(5,1,1);
plot(t,f);
hold on;
plot(t1,y,'r');
title("N = 50");

subplot(5,1,2);
f = 0;
for i = 1:1:100
    f = f + sin(i * t) ./ i;
end
plot(t,f);
hold on;
plot(t1,y,'r');
title("N = 100");

subplot(5,1,3);
f = 0;
for i = 1:1:200
    f = f + sin(i * t) ./ i;
end
plot(t,f);
hold on;
plot(t1,y,'r');
title("N = 200");

subplot(5,1,4);
f = 0;
for i = 1:1:1000
    f = f + sin(i * t) ./ i;
end
plot(t,f);
hold on;
plot(t1,y,'r');
title("N = 1000");

subplot(5,1,5);
f = 0;
for i = 1:1:10000
    f = f + sin(i * t) ./ i;
end
plot(t,f);
hold on;
plot(t1,y,'r');
title("N = 10000");