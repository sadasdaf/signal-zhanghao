B1 = [1 1];
B2 = [1 4];
A1 = [1 0];
A2 = [1 2];
A3 = [1 3];
B = conv(B1,B2);
A = conv(A1,A2);
A = conv(A,A3);
[r,p] = residue(B,A);
r
p