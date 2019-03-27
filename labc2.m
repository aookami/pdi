%Conversões sobre uma imagem de entrada double
clear all, close all, clc
a = [-3 0; 0.25 63.6; 0.5 270.9]
%im2double
%http://www.mathworks.com/help/toolbox/images/ref/im2double.html
%I2 = im2double(I) converts the intensity image I to double precision,
%rescaling the data if necessary. If the input image is of class double,
%the output image is identical.
%Como a entrada é double, a saída é idêntica.
c = im2double(a)
%Livro OM Example 4.2
%Como a entrada é double, considera que a matriz de entrada tem valores
%na faixa [0 1] e faz 0->0, ... , 0.25->64, ... , 0.5->127, ... ,
%0.75->191, ... , 1->255.
%Valores menores ou iguais 0 -> 0, maiores ou iguais 1 -> 255
d = im2uint8(a)
%Convert matrix to grayscale image
%http://www.mathworks.com/help/toolbox/images/ref/mat2gray.html
%minimo(a)->0, maximo(a)->1. Isto é chamado de 'normalização' ou 'ajuste
%de contraste'
g = mat2gray(a)
g2 = (a-min(a(:))) / (max(a(:))-min(a(:))) * 1 %igual ao mat2gray(a);