I1 = imread('psl1_gray.png');
I2 = imread('psl2_gray.png');
I3 = imread('psl3_gray.png');


t1= graythresh(I1);
t2= graythresh(I2);
t3= graythresh(I3);

I1f = imcomplement(im2bw(I1,t1));
I2f = imcomplement(im2bw(I2,t2));
I3f = imcomplement(im2bw(I3,t3));

se = strel('disk', 15);

I1f = imclose(I1f, se);
I2f = imclose(I2f, se);
I3f = imclose(I3f, se);


I1f = imopen(I1f, se);
I2f = imopen(I2f, se);
I3f = imopen(I3f, se);

figure, subplot(1,3,1), imshow(I1f);
subplot(1,3,2), imshow(I2f);
subplot(1,3,3), imshow(I3f);




