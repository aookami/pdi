
g = imread('flowervaseg.png');
gd = im2double(g);

h = fspecial('laplacian', 0);
hext = [1 1 1; 1 -8 1; 1 1 1];
hinv = h.*-1;
hextinv = hext.*-1;
    


lh = mat2gray(imfilter(gd, h, 'replicate'));
lhext = mat2gray(imfilter(gd, hext, 'replicate'));
lhinv = mat2gray(imfilter(gd, hinv, 'replicate'));
lhextinv = mat2gray(imfilter(gd, hextinv, 'replicate'));

figure, subplot(1,4,1), imshow(lh);
subplot(1,4,2), imshow(lhext);
subplot(1,4,3), imshow(lhinv);
subplot(1,4,4), imshow(lhextinv);




gdLs = gd - gdL;
gdLsu = im2uint8(gdLs); %trunca