t = -10:0.001:10;
f = 0;
F = 0;
for i = 1:1:50
    f = f + sin(i * t) ./ i;
    F = F + f;
end
F = F / 50;
subplot(5,1,1);
plot(t,f);
hold on;
plot(t,F,'r');
title("N = 50");

for i = 1:1:100
    f = f + sin(i * t) ./ i;
    F = F + f;
end
F = F / 100;
subplot(5,1,2);
plot(t,f);
hold on;
plot(t,F,'r');
title("N = 100");

for i = 1:1:200
    f = f + sin(i * t) ./ i;
    F = F + f;
end
F = F / 200;
subplot(5,1,3);
plot(t,f);
hold on;
plot(t,F,'r');
title("N = 200");

for i = 1:1:1000
    f = f + sin(i * t) ./ i;
    F = F + f;
end
F = F / 1000;
subplot(5,1,4);
plot(t,f);
hold on;
plot(t,F,'r');
title("N = 1000");

for i = 1:1:10000
    f = f + sin(i * t) ./ i;
    F = F + f;
end
F = F / 10000;
subplot(5,1,5);
plot(t,f);
hold on;
plot(t,F,'r');
title("N = 10000");