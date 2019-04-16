I1 = imread('cameraman.tif');

Ibicubic = imresize(I1, 0.5, 'bicubic');
Inearest = imresize(I1, 0.5, 'nearest');

imshow(cat(2, Ibicubic, Inearest));