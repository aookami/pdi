I = imread('pout.tif');


hist = double(zeros([1 256]));

for x = 1:291
    for y = 1:240
        val = uint8(I(x,y));
        hist(val) = hist(val) + 1;
    end
end

figure, subplot(1,3,1), imshow(I), title('pout');
subplot(1,3,2), bar(hist), title ('bar handmade');
subplot(1,3,3), imhist(I), title('imhist');