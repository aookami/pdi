I = imread('radio.tif');


rmax = double(max(max(I(:,:))))/255;
rmin = double(min(min(I(:,:))))/255;

i4 = imadjust(I,[rmin rmax],[0 1],0.4);
i1 = imadjust(I,[rmin rmax],[0 1],0.1);
i2 = imadjust(I,[rmin rmax],[0 1],2);



figure, subplot(1,3,1), imshow(i4), title('gamma0.4');
subplot(1,3,2), imshow(i1), title('gamma0.1');
subplot(1,3,3), imshow(i2), title('gamma2');