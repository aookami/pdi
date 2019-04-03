I1 = imread('earth1.tif');
I2 = imread('earth2.tif');
I1d = im2double(I1);
Ifinal = immultiply(I1d, double(I2));

imshow(uint8(cat(2, I1, Ifinal)))