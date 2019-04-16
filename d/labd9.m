I1 = imread('cameraman.tif');

Ibicubic = imrotate(I1, 30, 'bicubic');
Inearest = imrotate(I1, 30, 'nearest');

imshow(cat(2, Ibicubic, Inearest));