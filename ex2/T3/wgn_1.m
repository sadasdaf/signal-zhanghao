x = wgn(1,1000,0);
subplot(2,1,1);
plot(x);
n = length(x);
[y,t] = autocorr(x,n-1);
subplot(2,1,2);
plot(t,y);
axis([0 1000 -0.25 0.5]);