clear all, close all
I = imread('Fig0304(a)(breast_digital_Xray).tif');
y = uint8(0:255);

for x = 1:255
    y(x) = 255-y(x);
end



plot(y); xlim([0 255]); ylim([0 255]);
Ia = y(I + 1);
figure, subplot(1,2,1), imshow(I), title('Original');
subplot(1,2,2), imshow(Ia), title('Transformação');
