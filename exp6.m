pkg load image;
pkg load matgeom;
clc;
close all;
clear all;
Img=imread('p1.jpg');
subplot(1,2,1);
imshow(Img);
title('Original Image');
l=255;
neg_img=l-Img;
subplot(1,2,2);
imshow(neg_img);
title('Negative Image');
