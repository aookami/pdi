

I = imread('cameraman.tif');

k0 = [-3 -3 5; -3 0 5; -3 -3 5]; 

k1 =[-3 5 5; -3 0 5 ; -3 -3 -3];
k2=[ 5 5 5 ; -3 0 -3; -3 -3 -3];
k3=[5 5 -3; 5 0 -3 ; -3 -3 -3];
k4=[5 -3 -3; 5 0 -3; 5 -3 -3];
k5=[-3 -3 -3; 5 0 -3; 5 5 -3];
k6=[-3 -3 -3; -3 0 -3; 5 5 5];
k7=[-3 -3 -3; -3 0 5; -3 5 5];

kirschT(:,:,1) = imfilter(I, k0, 'conv');
kirschT(:,:,2) = imfilter(I, k1, 'conv');
kirschT(:,:,3) = imfilter(I, k2, 'conv');
kirschT(:,:,4) = imfilter(I, k3, 'conv');
kirschT(:,:,5) = imfilter(I, k4, 'conv');
kirschT(:,:,6) = imfilter(I, k5, 'conv');
kirschT(:,:,7) = imfilter(I, k6, 'conv');
kirschT(:,:,8) = imfilter(I, k7, 'conv');

kirsch = max(kirschT, [], 3);

figure, imshow(kirsch);


