I = imread('cameraman.tif');

h = fspecial('laplacian',0);
lap = edge(I,'zerocross',0.9,h); %t � um limiar que atua na sensibilidade da
 %detec��o das passagens por zero
 
sob = edge(I,'sobel');


figure, imshow(lap), title('lap');

figure, imshow(sob), title('sob');