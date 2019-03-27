g = imread('pout.tif');
g2 = mat2gray(g);   

subplot(1,2,1)
imshow(g);
title('Original')

subplot(1,2,2);
imshow(g2);
title('Normalizada')