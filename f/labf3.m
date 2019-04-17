I1 = imread('b5s.40.bmp');
I2 = imread('b5s.100.bmp');

boxfilter5 = fspecial('average', 5);
boxfilter7 = fspecial('average', 7);

I15 = imfilter(I1, boxfilter5);
I17 = imfilter(I1, boxfilter7);

I25 = imfilter(I2, boxfilter5);
I27 = imfilter(I2, boxfilter7);


figure, subplot(1,4,1), imshow(I15);

subplot(1,4,2),imshow(I17);

subplot(1,4,3),imshow(I25);

subplot(1,4,4),imshow(I27);
