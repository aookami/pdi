
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
%g depende do formato da imagem. o valor minimo � 7 e o maximo � 253
%g1 � uma matriz de double representando g. o valor minimo � 7 e o maximo �
%253
%g2 s�o os valores de g divididos por 255. o valor minimo � 0.0275 e o maximo � 
%0.9922
%g3 � uma distribui��o de valores, onde o valor mais alto de g se torna 1,
%o mais baixo 0, e os outros valores s�o distribuidos em rela��o � esses
%valores. o valor minimo � 0 e o maximo � 1


%im2double divide todos os pixels por 255, enquanto o mat2grey faz com que o pixel mais escuro da imagem
%seja definido como zero, e o mais claro, como 1.