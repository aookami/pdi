
clear all; close all; clc
g = imread('rice.png');
figure, imshow(g);

s = strel('disk', 10);

gs = imopen(g, s);

gf = g - gs;

t = graythresh(gf);
bw = im2bw(gf, t);
figure, imshow(bw)
% Observe que os grãos da parte
% inferior não são mantidos
% na imagem limiarizada