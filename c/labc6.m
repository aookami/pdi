g = zeros(50, 255);

for i = 1:255
    g(1:50, i) = 255-i;
end

g1 = mat2gray(g);

imshow(g1);