pkg load image;
pkg load matgeom;
clc;
close all;
clear all;
Img=imread('p1.jpg');
subplot(3,2,1);
imshow(Img);
title('Original Image');
%Image Filtering
filter=fspecial('average',5);
filteredImg= imfilter(Img,filter,'replicate');
subplot(3,2,2);
imshow(filteredImg);
title('Filtered Image');
%Filling up a ROI in an Image
a=Img;
for i=1:500
 for j=1:500
  a(i,j)=255;
 end
end
subplot(3,2,3);
imshow(a);
title('ROI filled Image');
%Drawing a line on an Image
b=Img;
for i=1:500
 for j=1:500
  if abs(i-j)<100
   b(i,j)=255;
  end
 end
end
subplot(3,2,4);
imshow(b);
title('Drawing a line on an Image');
%Drawing a rectangle on an Image
c=Img;
function rgbI=drawRectangleOnImg (box,rgbI)
    x = box(2); y = box(1); w = box(4); h = box(3);
    rgbI(x:x+w,y,1)   = 255;
    rgbI(x:x+w,y+h,1) = 255;
    rgbI(x,y:y+h,1)   = 255;
    rgbI(x+w,y:y+h,1) = 255;
    rgbI(x:x+w,y,2)   = 255;
    rgbI(x:x+w,y+h,2) = 255;
    rgbI(x,y:y+h,2)   = 255;
    rgbI(x+w,y:y+h,2) = 255;
    rgbI(x:x+w,y,3)   = 255;
    rgbI(x:x+w,y+h,3) = 255;
    rgbI(x,y:y+h,3)   = 255;
    rgbI(x+w,y:y+h,3) = 255;
end
box=[100 100 800 800];
c=drawRectangleOnImg(box,c);
subplot(3,2,5);
imshow(c);
title('Drawing a rectangle on an Image');
