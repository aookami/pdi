%Imagem:
%http://www.digitalcamerainfo.com/
%content/Samsung-WB150F-Digital-Camera-
%Review/Sample-Photos.htm
g = imread('flowervaseg.png');
%Imfilter retorna imagem da mesma clase da
%de entrada. Se g fosse uint8 o imfilter
%truncaria os valores de sa�da e a
%visualiza��o da convolu��o
%seria comprometida. Por isso:
gd = im2double(g);
h = fspecial('laplacian', 0);
gdL = -imfilter(gd, h, 'replicate');
gdLs = gd + gdL;
gdLsu = im2uint8(gdLs); %trunca
%Display
figure, imshow(g)
title('Original')
%mat2gray apenas para a
%visualiza��o do Laplaciano
gdLn = mat2gray(gdL);
figure, imshow(gdLn)
title('Laplaciano')
figure, imshow(gdLsu)
title('Realce')
