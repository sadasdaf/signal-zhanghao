I2=imread('33.png');
g2=rgb2gray(I2);
s2=fftshift(fft2(g2));
[M2,N2]=size(s2);
n12=fix(M2/2);
n22=fix(N2/2);

d02=10;
for i=1:M2
    for j=1:N2
        d=sqrt((i-n12)^2+(j-n22)^2);
        if d<d02
            h=0;
        else
            h=1;
        end
        s2(i,j)=h*s2(i,j);
    end
end
s2=ifftshift(s2);
s2=uint8(real(ifft2(s2)));
figure(2);
imshow(s2);
imwrite(s2,'22.jpg','JPG')