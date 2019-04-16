i = double(imread('cameraman.tif'));
q = 0;

trmat = [cos(q), sin(q), 0 ; -sin(q), cos(q), 0; 0, 0, 1];

[sizex, sizey] = size(i);
io = zeros(sizex, sizey);
for x = 1:sizex
    for y = 1:sizey
    io([x y]*trmat) = i(x,y)
    
    end
end
