%Contrast stretching
%Aloca uint8
%para depopis usar funcao intlut (y1 é a LUT)
y1 = uint8(zeros([1 256]));
%Equação da reta inferior y = (1/3)*x
y1(1:97) = (1/3)*(0:96);
%Equação da reta intermediária y = 3*x -256
y1(98:161) = 3*(97:160) - 256;
%Equação da reta superior y = (1/3)*x + 170
y1(162:256) = (1/3)*(161:255) + 170;
%Display
y1;

I = imread('moon.tif');
y = uint8(0:255);
plot(y); xlim([0 255]); ylim([0 255]);
Ia = intlut(I,y1);
figure, subplot(1,2,1), imshow(I), title('Original');
subplot(1,2,2), imshow(Ia), title('Transformação');


