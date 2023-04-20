%Image Compliment Flip Rotate
pkg load image;
clc;
close all;
clear all;
A = imread ("p1.jpg");
subplot(2,2,1);
B = imshow (A);
title('original img');

C = imcomplement(A);
subplot(2,2,2);
D = imshow(C);
title('complement');

E = imrotate(C , 80);
subplot(2,2,3);
P = imshow(E);
title('rotated');

F = flipdim(A , 2);
subplot(2,2,4);
G = imshow(F);
title('flipped');

