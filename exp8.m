clc;
close all;
clear all;
pkg load image;
figure;
subplot(3,2,1);
a=imread('edgedetect.jpg');
imshow(a);
title('Original Image');
subplot(3,2,2);
c=rgb2gray(a);
c=medfilt2(c);
e=edge(c,'sobel');
f=edge(c,'prewitt');
g=edge(c,'roberts');
h=edge(c,'log');
d=edge(c,'canny'); % prewitt sobel and roberts are first order edge detections
imshow(e);
title('Sobel Filter');
subplot(3,2,3);
imshow(f);
title('Prewitt Filter');
subplot(3,2,4);
imshow(g);
title('Roberts Filter');
subplot(3,2,5);
imshow(h);
title('Laplacian Edge detection');
subplot(3,2,6);
imshow(d);
title('Canny Edge Detection');
figure;
img1=rgb2gray(imread('p1.jpg'));
img2=rgb2gray(imread('p2.jpg'));
if size(img1, 3) == 3
  img1 = rgb2gray(img1);
end
if size(img2, 3) == 3
  img2 = rgb2gray(img2);
end
subplot(3,2,1);
imshow(img1);
title('Image-1 for Logical Operation');
subplot(3,2,2);
imshow(img2);
title('Image-2 for Logical Operation');
%for logical operations both image should be of same size
img3=imresize(img2, size(img1));
subplot(3,2,3);
imshow(img3);
title('Resized second Image');
or_img=bitor(img1,img3);
subplot(3,2,4);
imshow(or_img);
title('Bit-Wise OR image');
and_img= bitand(img1,img3);
subplot(3,2,5);
imshow(and_img);
title('Bit-Wise and Operation');
xor_img=bitxor(img1,img3);
subplot(3,2,6);
imshow(xor_img);
title('Bit-Wise XOR operation');



