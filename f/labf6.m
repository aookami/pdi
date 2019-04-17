I = imread('salt-and-pepper1.tif');

H3 = fspecial('average', 3);
H5 = fspecial('average', 5);

A = imfilter(I,H3);
B = imfilter(I,H5);

C = medfilt2(I);

figure, subplot(1,3,1), imshow(A);
subplot(1,3,2), imshow(B);
subplot(1,3,3), imshow(C);