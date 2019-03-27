
g = imread('pout.tif');
a = figure;

g2 = g(78:108, 78:146);
g(78:108, 78:146)  = 0;
imshow(g);

b = figure;
imshow(g2);

saveas(b, 'C:\Users\DAELN\Desktop\labs\pdi\aaa.png', 'png');