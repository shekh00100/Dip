pkg load image;
pkg load matgeom;
clc;
close all;
clear all;
Img=imread('p1.jpg');
subplot(5,1,1);
imshow(Img);
title('Original Image');
B = strel("line", 7, 7);
dilate_img= imdilate(Img,B);
eroded_img= imerode(Img,B);
open_img=imopen(Img,B);
close_img=imclose(Img,B);
subplot(5,1,2);
imshow(dilate_img);
title('Dilated Image');
subplot(5,1,3);
imshow(eroded_img);
title('Eroded Image');
subplot(5,1,4);
imshow(open_img);
title('Opened Image');
subplot(5,1,5);
imshow(close_img);
title('Closed Image');
