

x = dir('C:\Program Files\MATLAB\R2015b\toolbox\images\imdemos');
sizex; sizey = size(x);
sizex = sizex-1;
for i = 1:sizey
   xstrutt = struct2cell(x(i));
   name = xstrutt{1};
   
   if strfind(name, '.png');
       fprintf(xstrutt{1});
   end
end

