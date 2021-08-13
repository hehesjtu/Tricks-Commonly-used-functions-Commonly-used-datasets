clc;clear all;warning off;close all;
I = imread('image.png');
%% add the rectangle inside the image, then show the patch and the image with
% the rectangle 
data = I;
figure; imshow(I); 
[c1,c2]= ginput(); 
c1 = floor(c1); c2 = floor(c2);
%%  colors for selected
%   red 255 0 0 // orange 255 128 0 // yellow 255 255 0
%  tomato red 255 99 71 // pink  255 192 203 // green 0 255 0
%  blue 0 0 255 // light blue 0 255 255 // dark blue 25 25 112
%  turkey blue 0 199 140  // purple 138 43 226 // brown 128 42 42
rgb = [255 0 0];
lineSize = 5;
patch = zeros(c2(2)-c2(1)+1+2*lineSize,c1(2)-c1(1)+1+2*lineSize,3);
patch(:,:,1) = rgb(1);
patch(:,:,2) = rgb(2);
patch(:,:,3) = rgb(3);
patch = uint8(patch);
patch(lineSize+1:c2(2)-c2(1)+lineSize+1,lineSize+1:c1(2)-c1(1)+lineSize+1,:) = ...
    data(c2(1):c2(2),c1(1):c1(2),:);
data(c2(1)-lineSize:c2(2)+lineSize,c1(1)-lineSize:c1(2)+lineSize,:)= patch;
figure;
imshow(patch);
figure;
imshow(data);
imwrite(uint8(patch),'image_patch.png');
imwrite(uint8(data),'image_with_rectangle.png');

















% result = add_rectangle(data,pointAll,windSize,rgb,lineSize);
% figure;  
% imshow(result);
% imwrite(uint8(result),'image_add_rectangle.png');