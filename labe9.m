I = imread('pout.tif');



figure, subplot(1,2,1), imshow(I), title('pout');
subplot(1,2,2), plot(imhist(I)),title('hist');

figure, subplot(1,2,1), imshow(histeq(I, 255)), title('pouthisteq');
subplot(1,2,2), imhist(histeq(I,255));