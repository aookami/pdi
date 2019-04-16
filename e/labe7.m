coins = imread('coins.png');
pout = imread('pout.tif');

coinshist = imhist(coins);
pouthist = imhist(pout);

imshow(pouthist)
figure, subplot(1,2,1), imshow(coins);
subplot(1,2,2), imhist(coins);

figure, subplot(1,2,1), imshow(pout);
subplot(1,2,2), plot(pouthist);