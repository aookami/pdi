I1 = imread('contrast.jpg');
I2 = imread('mask.jpg');
I1d = im2double(I1);

I2d = im2double(I2);

%I3 = imabsdiff(I1d, I2d);
I3 = I1d - I2d;

imshow(cat(2, I1d, I2d, I3, mat2gray(I3)))