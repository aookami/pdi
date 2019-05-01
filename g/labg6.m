I = imread('cameraman.tif');

h = fspecial('log',[10 10], 0.5);
lap = edge(I,'log', 0.01,2); %t é um limiar que atua na sensibilidade da
 %detecção das passagens por zero
 
sob = edge(I,'sobel');


figure, imshow(lap), title('log');

figure, imshow(sob), title('sob');