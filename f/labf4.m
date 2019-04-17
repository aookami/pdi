I1 = imread('b5s.40.bmp');
I2 = imread('b5s.100.bmp');

H = fspecial('average', 5);

Hg = fspecial('gaussian', 5, 1);

figure, subplot(1,6,1) ,imshow(imfilter(I1, Hg));
subplot(1,6,2) ,imshow(imfilter(I1, H));
subplot(1,6,3), imshow(imfilter(I2, Hg));
subplot(1,6,4) ,imshow(imfilter(I2, H));
subplot(1,6,5), imshow(I1);
subplot(1,6,6), imshow(I2);
