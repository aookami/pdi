I = imread('whitecells4.png');


t = graythresh(I);

I = im2bw(I,t);
I2 = bwlabel(I);

imshow(I), title(max(I2(:)));