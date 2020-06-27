I1=imread('33.png');
g1=rgb2gray(I1);
s=fftshift(fft2(g1));
[M,N]=size(s);
n1=fix(M/2);
n2=fix(N/2);

d0=10;
for i=1:M
    for j=1:N
        d=sqrt((i-n1)^2+(j-n2)^2);
        if d<d0
            h=1;
        else
            h=0;
        end
        s(i,j)=h*s(i,j);
    end
end
s=ifftshift(s);
s4 = s;
s=uint8(real(ifft2(s)));
figure(1);
imshow(s);
imwrite(s,'11.jpg','JPG')
