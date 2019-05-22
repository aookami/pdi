


im1 = imread('C:\Users\DAELN\pdi\i\mugs\mug_11\mug_11_01.png');
im2 = imread('C:\Users\DAELN\pdi\i\mugs\mug_11\mug_11_02.png');
im3 = imread('C:\Users\DAELN\pdi\i\mugs\mug_11\mug_11_03.png');
im4 = imread('C:\Users\DAELN\pdi\i\mugs\mug_11\mug_11_04.png');
im5 = imread('C:\Users\DAELN\pdi\i\mugs\mug_11\mug_11_05.png');
im6 = imread('C:\Users\DAELN\pdi\i\mugs\mug_11\mug_11_06.png');
im7 = imread('C:\Users\DAELN\pdi\i\mugs\mug_11\mug_11_07.png');
im8 = imread('C:\Users\DAELN\pdi\i\mugs\mug_11\mug_11_08.png');


de = 0

mask = uint8(zeros(480,640));

for x = 120:500
   for y = 240:400
      mask(y,x) = 255; 
   end
end


im1 = im1*3-(255-mask);
im2 = im2*3-(255-mask);
im3 = im3*3-(255-mask);
im4 = im4*3-(255-mask);
im5 = im5*3-(255-mask);
im6 = im6*3-(255-mask);
im7 = im7*3-(255-mask);
im8 = im8*3-(255-mask);

valsoma = double(0);

for x = 1:640
   for y = 1:480
       valsoma = valsoma + double(im3(y,x));
   end
end



valaj1 = 127;
for x = 1:640
   for y = 1:480
       if(im1(y,x) > valaj1)
           im1(y,x) = 255;
       end
       if(im1(y,x) <= valaj1)    
        im1(y,x) = 0; 
       end
       
        if(im2(y,x) > valaj1)
           im2(y,x) = 255;
       end
       if(im2(y,x) <= valaj1)    
        im2(y,x) = 0; 
       end
       
        if(im3(y,x) > valaj1)
           im3(y,x) = 255;
       end
       if(im3(y,x) <= valaj1)    
        im3(y,x) = 0; 
       end
       
       
        if(im4(y,x) > valaj1)
           im4(y,x) = 255;
       end
       if(im4(y,x) <= valaj1)    
        im4(y,x) = 0; 
       end
        if(im5(y,x) > valaj1)
           im5(y,x) = 255;
       end
       if(im5(y,x) <= valaj1)    
        im5(y,x) = 0; 
       end
        if(im6(y,x) > valaj1)
           im6(y,x) = 255;
       end
       if(im6(y,x) <= valaj1)    
        im6(y,x) = 0; 
       end
        if(im7(y,x) > valaj1)
           im7(y,x) = 255;
       end
       if(im7(y,x) <= valaj1)    
        im7(y,x) = 0; 
       end
        if(im8(y,x) > valaj1)
           im8(y,x) = 255;
       end
       if(im8(y,x) <= valaj1)    
        im8(y,x) = 0; 
       end
       
       
       
       
       
   end
end

se = strel('disk', 5);
im1 = imopen(im1, se);
im2 = imopen(im2, se);
im3 = imopen(im3, se);
im4 = imopen(im4, se);
im5 = imopen(im5, se);
im6 = imopen(im6, se);
im7 = imopen(im7, se);
im8 = imopen(im8, se);
im1 = imopen(im1, se);
im2 = imopen(im2, se);
im3 = imopen(im3, se);
im4 = imopen(im4, se);
im5 = imopen(im5, se);
im6 = imopen(im6, se);
im7 = imopen(im7, se);
im8 = imopen(im8, se);
im1 = imopen(im1, se);
im2 = imopen(im2, se);
im3 = imopen(im3, se);
im4 = imopen(im4, se);
im5 = imopen(im5, se);
im6 = imopen(im6, se);
im7 = imopen(im7, se);
im8 = imopen(im8, se);
im1 = imopen(im1, se);
im2 = imopen(im2, se);
im3 = imopen(im3, se);
im4 = imopen(im4, se);
im5 = imopen(im5, se);
im6 = imopen(im6, se);
im7 = imopen(im7, se);
im8 = imopen(im8, se);






histo1 = zeros([1, 640]);
histo2 = zeros([1, 640]);
histo3 = zeros([1, 640]);
histo4 = zeros([1, 640]);
histo5 = zeros([1, 640]);
histo6 = zeros([1, 640]);
histo7 = zeros([1, 640]);


histo8 = zeros([1, 640]);

for x = 1:640
      histo1(x) =sum(im1(:,x)); 
      histo2(x) =sum(im2(:,x));
      histo3(x) =sum(im3(:,x));
      histo4(x) =sum(im4(:,x));
      histo5(x) =sum(im5(:,x));
      histo6(x) =sum(im6(:,x));
      histo7(x) =sum(im7(:,x));
      histo8(x) =sum(im8(:,x));
end


sd1 = sum(histo1(:,320:640));
se1 = sum(histo1(:,1:320));
sd2 = sum(histo2(:,320:640));
se2 = sum(histo2(:,1:320));
sd3 = sum(histo3(:,320:640));
se3 = sum(histo3(:,1:320));
sd4 = sum(histo4(:,320:640));
se4 = sum(histo4(:,1:320));
sd5 = sum(histo5(:,320:640));
se5 = sum(histo5(:,1:320));
sd6 = sum(histo6(:,320:640));
se6 = sum(histo6(:,1:320));
sd7 = sum(histo7(:,320:640));
se7 = sum(histo7(:,1:320));
sd8 = sum(histo8(:,320:640));
se8 = sum(histo8(:,1:320));

disp('esq->dir');
    for x = 1:640
        if histo1(x) > 0
          	disp(1);
            break;
        end
        if histo2(x) > 0
           disp(2);
           break;

        end
        if histo3(x) > 0
           disp(3);   break;

        end
        if histo4(x) > 0
            disp(4);   break;

        end
        if histo5(x) > 0
           disp(5);   break;

        end
        if histo6(x) > 0
           disp(6); break;

        end
        if histo7(x) > 0
            disp(7);  break;
        
        end
        if histo8(x) > 0
            disp(8)                
            break;
        end
       
    end
    
   disp('dir->esq');

     for x = 1:640
        if histo1(641-x) > 0
          	disp(1);
            break;
        end
        if histo2(641-x) > 0
           disp(2);
           break;

        end
        if histo3(641-x) > 0
           disp(3);   break;

        end
        if histo4(641-x) > 0
            disp(4);   break;

        end
        if histo5(641-x) > 0
           disp(5);   break;

        end
        if histo6(641-x) > 0
           disp(6); break;

        end
        if histo7(641-x) > 0
            disp(7);  break;
        
        end
        if histo8(641-x) > 0
            disp(8)                
            break;
        end
       
    end




figure,subplot(1,8,1), imshow(im1),title(1);
subplot(1,8,2),imshow(im2),title(2);
subplot(1,8,3),imshow(im3),title(3);

subplot(1,8,4),imshow(im4),title(4);

subplot(1,8,5),imshow(im5),title(5);
subplot(1,8,6),imshow(im6),title(6);
subplot(1,8,7),imshow(im7),title(7);
subplot(1,8,8),imshow(im8),title(8);



