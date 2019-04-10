    clear all, close all
I = imread('radio.tif');
y = uint8(0:255);
y = double(y);

for x = 1:255
    y(x) = log(y(x)+1);
end

hold on;
plot(y); xlim([0 255]); ylim([0 255]);
hold off;

Ia = y(I + 1);
figure, subplot(1,3,1), imshow(I), title('Original');
subplot(1,3,2), imshow(Ia), title('Transformação');
subplot(1,3,3),  plot(y); xlim([0 255]); ylim([0 255]);