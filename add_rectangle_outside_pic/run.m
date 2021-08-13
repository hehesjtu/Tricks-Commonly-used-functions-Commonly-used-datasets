clc;clear all;warning off;close all;
data = double(imread('image.png'));
rgb = [255 0 0];
lineSize = 5;
outimg = add_rectangle_outside(data,lineSize,rgb);
outimg = uint8(outimg);
imwrite(uint8(outimg),'image_add_rectangle_outside.png');
figure;
imshow(outimg);

