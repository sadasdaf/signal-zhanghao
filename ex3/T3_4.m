A1 = [1 1 2 6];
B1 = [1 2];
H1 = tf(B1,A1);
A2 = [3 5 4 6];
B2 = [1 0 1];
H2 = tf(B2,A2);
subplot(2,1,1);
pzmap(H1);
hold on;
subplot(2,1,2);
pzmap(H2);