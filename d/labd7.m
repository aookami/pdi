I1 = imread('obj_gray.png');
I2 = imread('msk_gray_bw.png');

I2uint8 = uint8(I2)*255;

[sizex, sizey] = size(I1);

I3 = zeros(sizex, sizey);


for x = 1:sizex
    for y = 1:sizey
           aux = bitand(I1(x,y), I2uint8(x,y));
           I3(x,y) = aux;
    end
    
end

imshow(cat(2, I1, I2uint8, uint8(I3)))