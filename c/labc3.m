
g = imread('cameraman.tif');
figure, imshow(g);
g1 = double(g);
figure, imshow(g1);
g2 = im2double(g);
figure, imshow(g2);
g3 = mat2gray(g);
figure, imshow(g3);
%classes
%g = uint8 (0:255)
%g1 = double
%g2 = double
%g3 = double 
%g depende do formato da imagem. o valor minimo é 7 e o maximo é 253
%g1 é uma matriz de double representando g. o valor minimo é 7 e o maximo é
%253
%g2 são os valores de g divididos por 255. o valor minimo é 0.0275 e o maximo é 
%0.9922
%g3 é uma distribuição de valores, onde o valor mais alto de g se torna 1,
%o mais baixo 0, e os outros valores são distribuidos em relação à esses
%valores. o valor minimo é 0 e o maximo é 1


%im2double divide todos os pixels por 255, enquanto o mat2grey faz com que o pixel mais escuro da imagem
%seja definido como zero, e o mais claro, como 1.