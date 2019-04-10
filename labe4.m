Io = imread('pout.tif');
I = Io;

rmax = max(max(I(:,:)));
rmin = min(min(I(:,:)));
L = 256;

%o = ((L-1)/(rmax-rmin))*(i-rmin);
    
for x = 1:291
    for y = 1:240
        I(x,y) = ((L-1)/(rmax-rmin))*(I(x,y)-rmin);
    
    end
end

Im = mat2gray(Io);
Ia = imadjust(Io);

figure, subplot(1,3,1), imshow(I), title('handmade');
subplot(1,3,2), imshow(Im), title('mat2gray');
subplot(1,3,3), imshow(Ia), title('imadjust');