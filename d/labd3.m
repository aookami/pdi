I1 = imread('cameraman.tif');
I2 = imread('cameraman2.tif');
I3 = imabsdiff(I2, I1);

imshow(I3);

I4 = mat2gray(I3);

imshow(I4); 