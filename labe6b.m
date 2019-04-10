%Intensity-level slicing
%Aloca uint8
%para depopis usar funcao intlut (y2 � a LUT)
y2 = uint8(zeros([1 256]));
%Equa��o da reta inferior y = x (identidade)
y2(1:97) = 0:96;
%Equa��o da reta intermedi�ria
%y = 250(um �nico n�vel de cinza cte)
y2(98:161) = 250;
%Equa��o da reta superior y = x (identidade)
y2(162:256) = 161:255;


I = imread('Fig0310(b)(washed_out_pollen_image).tif');
y = uint8(0:255);
plot(y); xlim([0 255]); ylim([0 255]);
Ia = intlut(I,y2);
figure, subplot(1,2,1), imshow(I), title('Original');
subplot(1,2,2), imshow(Ia), title('Transforma��o');


