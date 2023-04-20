clc;
clear all;
close all;
pkg load image;
n=8;

img = rgb2gray(imread('p1.jpg'));
img1=imread('p1.jpg');
a=size(img);
w=a(2);
h=a(1);
im=zeros(100);
for i=1:n:h
 for j=1:n:w
     for k=0:n-1
         for l=0:n-1
             im(i+k,j+l)=img(i,j);

 end
 end
 end
end
%Quantization
img2=img;
img2(img<=63) = 32  ; %% 00
img2(img<=127&img>63)  = 85  ; %% 01
img2(img<=191&img>127) = 159 ; %% 10
img2(img<=255&img>191) = 223 ; %% 11
subplot(1,3,1);
imshow(uint8(img1));title('Original Image');
subplot(1,3,2);
imshow(uint8(im));title('Sampled Image');
subplot(1,3,3);
imshow(img2);
title('Quantized Image Using 2-Level Quantizer');
