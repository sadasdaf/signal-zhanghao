clc;clear;close all;
alpha = 1;

im = double(imread('gl1.jpg'))/255;
mark = double(imread('watermark.jpg'))/255;
figure, imshow(im),title('original image');
figure, imshow(mark),title('watermark');

imsize = size(im);

TH=zeros(round(imsize(1)*0.5),round(imsize(2)),round(imsize(3)));
TH1 = TH;
TH1(1:size(mark,1),1:size(mark,2),:) = mark;
M=randperm(round(0.5*imsize(1)));
N=randperm(round(imsize(2)));
save('encode.mat','M','N');
for i=1:imsize(1)*0.5
    for j=1:imsize(2)
        TH(i,j,:)=TH1(M(i),N(j),:);
    end
end

mark_ = zeros(imsize(1),imsize(2),imsize(3));
mark_(1:round(imsize(1)*0.5),1:round(imsize(2)),:)=TH;
for i=1:imsize(1)*0.5
    for j=1:imsize(2)
        mark_(imsize(1)+1-i,imsize(2)+1-j,:)=TH(i,j,:);
    end
end
figure,imshow(mark_),title('encoded watermark');

FA=fft2(im);
figure,imshow(FA);title('spectrum of original image');
FB=FA+alpha*double(mark_);
figure,imshow(FB); title('spectrum of watermarked image');
FAO=ifft2(FB);
figure,imshow(FAO); title('watermarked image');

RI = FAO-double(im);
figure,imshow(uint8(RI)); title('residual');


xl = 1:imsize(2);
yl = 1:imsize(1);
[xx,yy] = meshgrid(xl,yl);
figure, plot3(xx,yy,FA(:,:,1).^2+FA(:,:,2).^2+FA(:,:,3).^2),title('spectrum of original image');
figure, plot3(xx,yy,FB(:,:,1).^2+FB(:,:,2).^2+FB(:,:,3).^2),title('spectrum of watermarked image');
figure, plot3(xx,yy,FB(:,:,1).^2+FB(:,:,2).^2+FB(:,:,3).^2-FA(:,:,1).^2+FA(:,:,2).^2+FA(:,:,3).^2),title('spectrum of watermark');


FA2=fft2(FAO);
G=(FA2-FA)/alpha;
GG=G;
for i=1:imsize(1)*0.5
    for j=1:imsize(2)
        GG(M(i),N(j),:)=G(i,j,:);
    end
end
for i=1:imsize(1)*0.5
    for j=1:imsize(2)
        GG(imsize(1)+1-i,imsize(2)+1-j,:)=GG(i,j,:);
    end
end
figure,imshow(GG);title('extracted watermark');

C=double(im);
RC=double(FAO);
MSE=0; PSNR=0;
for i=1:imsize(1)
    for j=1:imsize(2)
        MSE=MSE+(C(i,j)-RC(i,j)).^2;
    end
end
MSE=MSE/360.^2;
PSNR=20*log10(255/sqrt(MSE));
MSE
PSNR
