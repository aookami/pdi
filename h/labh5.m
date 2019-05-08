I = imread('whitecells4.png');


t = graythresh(I);

I = im2bw(I,t);
I2 = bwlabel(I);

uniques = unique(I2(:));
[sizex, sizey] = size(uniques);

for i = 1:sizex
   uniques(i) = sum(I2(:) == i);


end



histogram(uniques);