

clear all, close all
clc
% Cria imagem sintética g
w = 256;
objt = 192; fundo = 64; rdn = 10;
g = makeImSynthHex(w,objt,fundo,rdn);
g = im2double(g);
Sh = fspecial('sobel');
gSh = imfilter(g,Sh,'replicate','conv');
gSh2 = imfilter(g, Sh, 'replicate');
    
% Normaliza
gSh = mat2gray(gSh);
gSh2 = mat2gray(gSh2);

figure, subplot(1,2,1), imshow(gSh);
subplot(1,2,2), imshow(gSh2);

%os valores negativos e positivos da imagem se invertem. Isso acontece
%porque a mascara de detecção se inverte, e produz valores negativos para
%variações positivas na linha.

%nao tem impacto porque no calculo final é utilizado o valor elevado ao
%quadrado.





