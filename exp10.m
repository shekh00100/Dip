pkg load image;
pkg load matgeom;
clc;
close all;
clear all;
Img=imread('p1.jpg');
subplot(4,3,9);
imshow(Img);
title('Original Image');
%Performing gamma correction with gamma value 1.5
g=1.5;
img_gamma=imadjust(Img,[],[],g);
subplot(4,3,10);
imshow(img_gamma);
title('Gamma Corrected Image');
%Calculating FFT of an Image
img_fft=fft2(double(img_gamma));
fft_shift=fftshift(img_fft);
fft_log=log(1+abs(fft_shift));
final_fft=mat2gray(fft_log)*255;
subplot(4,3,11);
imshow(uint8(final_fft));
title('FFT of an Image');
%Perform Bit-Plane Slicing on Green Channel of Gamma corrected Image
greenCh=img_gamma(:,:,2);
for i=1:8
 bit_plane=bitget(greenCh,i);
 subplot(4,3,i);
 imshow(bit_plane);
 title(sprintf('Bit Plane %d',i));
end
