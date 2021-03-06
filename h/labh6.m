I = imread('whitecells4.png');


t = graythresh(I);

I = im2bw(I,t);
I2 = bwlabel(I);

uniques = unique(I2(:));
[sizex, sizey] = size(uniques);

% get 30% numeric quantity
nq = uint8(floor(0.3*(sizex-1)));

for i = 1:sizex
   uniques2(i) = sum(I2(:) == i);


end

for i = 1:nq
   [val, idx] = max(uniques2); 
   uniques2(idx) = 0;
   maxes(i) = uniques(idx);
end

[sizx, sizy] = size(I2);

for i = 1:sizx
    for j = 1:sizy
        
        if ~(ismember(I2(i,j), maxes))
            I2(i,j) = 0;
        
        end
        
    end
    
    
end

imshow(I2);



