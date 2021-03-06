I1 = imread('psl1_gray.png');
I2 = imread('psl2_gray.png');
I3 = imread('psl3_gray.png');


t1= graythresh(I1);
t2= graythresh(I2);
t3= graythresh(I3);

I1f = imcomplement(im2bw(I1,t1));
I2f = imcomplement(im2bw(I2,t2));
I3f = imcomplement(im2bw(I3,t3));

se = strel('disk', 10);

I1f = imclose(I1f, se);
I2f = imclose(I2f, se);
I3f = imclose(I3f, se);

s1 = sum(I1f(:) ==1);

s2 = sum(I2f(:) ==1);

s3 = sum(I3f(:) ==1);

figure, subplot(1,3,1), imshow(I1f), title(s1);
subplot(1,3,2), imshow(I2f), title(s2);
subplot(1,3,3), imshow(I3f), title(s3);




