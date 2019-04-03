I1 = imread('obj_bw.png');
I2 = imread('msk_bw.png');

[sizex, sizey] = size(I1);
notA = zeros(sizex, sizey);
notB = zeros(sizex, sizey);
AandB = zeros(sizex, sizey);
AorB = zeros(sizex, sizey);
AxorB = zeros(sizex, sizey);
AandnotB = zeros(sizex, sizey);

for x = 1:sizex
    for y = 1:sizey
        notA(x,y) = not(I1(x,y));
        notB(x,y) = not(I2(x,y));
        AandB(x,y) = (I1(x,y)) & (I2(x,y));
        AorB(x,y) = (I1(x,y)) | (I2(x,y));
        AxorB(x,y) = xor(I1(x,y), I2(x,y));
        AandnotB(x,y) = (I1(x,y) & not(I2(x,y)));
    end
    
end

imshow(cat(2, notA, notB, AandB, AorB, AxorB, AandnotB))
