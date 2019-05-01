I1 = imread('cameraman.tif');
I2 = imread('pout.tif');

I1s =   edge(I1, 'sobel', 0.045);
I1c = edge(I1, 'canny');


figure, subplot(1,2,1), imshow(I1s), title('sob');
subplot(1,2,2), imshow(I1c), title('can');