im1 = imread('hanoi_01_10.png');

[sizex, sizey, sizez] = size(im1);


for x = 1:sizex
    for y = 1:sizey
        if x < 100;
            im1(x,y,:) = 0;
        end
        if y < 200
            im1(x,y,:) = 0;
        end
        if x+0.75*y < 470
            im1(x,y,:) = 0; 
        end
        if x+0.75*y > 700
           im1(x,y,:) = 0; 
        end
        if 0.4*x-y > -80
            im1(x,y,:) = 0; 
        end
        
    end    
end

im1 = rgb2hsv(im1);

countcolor1q07 = 0;
for x = 1 :sizex
   for y = 1:350
       if im1(x,y,1) > 0.065 && im1(x,y,1) < 0.075
            countcolor1q07 = countcolor1q07 + 1;
       end
   end
end


countcolor2q07 = 0;

for x = 230:sizex
   for y = 350:sizey
       if im1(x,y,1) > 0.065 && im1(x,y,1) < 0.075
            countcolor2q07 = countcolor2q07 + 1;
       end
   end
end

countcolor3q07 = 0;

for x = 1:230
   for y = 430:sizey
       if im1(x,y,1) > 0.065 && im1(x,y,1) < 0.075
            countcolor3q07 = countcolor3q07 + 1;
       end
   end
end


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%




countcolor1q15 = 0;
for x = 1 :sizex
   for y = 1:350
       if im1(x,y,1) > 0.14 && im1(x,y,1) < 0.16
            countcolor1q15 = countcolor1q15 + 1;
       end
   end
end


countcolor2q15 = 0;

for x = 230:sizex
   for y = 350:sizey
       if im1(x,y,1) > 0.14 && im1(x,y,1) < 0.16
            countcolor2q15 = countcolor2q15 + 1;
       end
   end
end

countcolor3q15 = 0;

for x = 1:230
   for y = 430:sizey
       if im1(x,y,1) > 0.14 && im1(x,y,1) < 0.16
            countcolor3q15 = countcolor3q15 + 1;
       end
   end
end





%%%%%%%%%%%%%%%%%%%

countcolor1q6= 0;
for x = 1 :sizex
   for y = 1:350
       if im1(x,y,1) > 0.59 && im1(x,y,1) < 0.61
            countcolor1q6 = countcolor1q6 + 1;
       end
   end
end


countcolor2q6 = 0;

for x = 230:sizex
   for y = 350:sizey
       if im1(x,y,1) > 0.59 && im1(x,y,1) < 0.61
            countcolor2q6 = countcolor2q6 + 1;
       end
   end
end

countcolor3q6 = 0;

for x = 1:230
   for y = 430:sizey
       if im1(x,y,1) > 0.59 && im1(x,y,1) < 0.61
            countcolor3q6 = countcolor3q6 + 1;
       end
   end
end

%%%%%%%%%%%%%%%%%%%%%5

countcolor1q38 = 0;
for x = 1 :sizex
   for y = 1:350
       if im1(x,y,1) > 0.37 && im1(x,y,1) < 0.39
            countcolor1q38 = countcolor1q38 + 1;
       end
   end
end


countcolor2q38 = 0;

for x = 230:sizex
   for y = 350:sizey
       if im1(x,y,1) > 0.37 && im1(x,y,1) < 0.39
            countcolor2q38 = countcolor2q38 + 1;
       end
   end
end

countcolor3q38 = 0;

for x = 1:230
   for y = 430:sizey
       if im1(x,y,1) > 0.37 && im1(x,y,1) < 0.39
            countcolor3q38 = countcolor3q38 + 1;
       end
   end
end






%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

countcolor1q002 = 0;
for x = 1 :sizex
   for y = 1:350
       if im1(x,y,1) > 0.001 && im1(x,y,1) < 0.01
            countcolor1q002 = countcolor1q002 + 1;
       end
   end
end


countcolor2q002 = 0;

for x = 230:sizex
   for y = 350:sizey
       if im1(x,y,1) > 0.001 && im1(x,y,1) < 0.01
            countcolor2q002 = countcolor2q002 + 1;
       end
   end
end

countcolor3q002 = 0;

for x = 1:230
   for y = 430:sizey
       if im1(x,y,1) > 0.001 && im1(x,y,1) < 0.01
            countcolor3q002 = countcolor3q002 + 1;
       end
   end
end






%%%%%%%%%%%%%%

pin1 = [0 0 0 0 0];
pin2 = [0 0 0 0 0];
pin3 = [0 0 0 0 0];

if countcolor1q002 > countcolor2q002 && countcolor1q002 > countcolor3q002
    pin1(4) = 1;
else
    if countcolor2q002 > countcolor3q002
    pin2(4) = 1;
    else
    pin3(4) = 1;
    end
end 

if countcolor1q07> countcolor2q07 && countcolor1q07 > countcolor3q07
    pin1(1) = 1;
else
    if countcolor2q07 > countcolor3q07
    pin2(1) = 1;
    else
    pin3(1) = 1;
    end
end


if countcolor1q15> countcolor2q15 && countcolor1q15 > countcolor3q15
    pin1(5) = 1;
else
    if countcolor2q15 > countcolor3q15
    pin2(5) = 1;
    else
    pin3(5) = 1;
    end
end

if countcolor1q6> countcolor2q6 && countcolor1q6 > countcolor3q6
    pin1(3) = 1;
else
    if countcolor2q6 > countcolor3q6
    pin2(3) = 1;
    else
    pin3(3) = 1;
    end
end


if countcolor1q38> countcolor2q38 && countcolor1q38 > countcolor3q38
    pin1(2) = 1;
else
    if countcolor2q38 > countcolor3q38
    pin2(2) = 1;
    else
    pin3(2) = 1;
    end
end







































imshow(im1);












