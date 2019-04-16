gmb = imread('gDSC04422.png');
m = size(gmb,1);
n = size(gmb,2);
p = m/4;
q = n/4;
X = gmb;
Y = reshape( X, [ p m/p n ] );
Y = permute( Y, [ 1 3 2 ] );
Y = reshape( Y, [ p q m*n/(p*q) ] );
meanImg = zeros(240, 320);
meanImg = double(meanImg);
Y = double(Y);
[sizex,  sizey] = size(Y(:,:,1));
for x = 1:sizex
    for y = 1:sizey
       meanImg(x,y) = sum((Y(x,y,1:16))./16);
        
    end
    
    
end

imf = cat(2, meanImg/255, Y(:,:,1)/255);
imshow(imf);