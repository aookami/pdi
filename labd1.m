
I = imread('rice.png');
I2 = imread('cameraman.tif');
K = imdivide(imadd(I,I2), 2);
K2 = imlincomb(.5,I,.5,I2); % recommended

K3 = cat(2, K, K2);
imshow(K3)