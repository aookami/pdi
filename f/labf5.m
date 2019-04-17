%O tamanho da máscara deve ser grande o suficiente para conter a curva
%Se o sigma for muito grande, a mascara pode acabar sendo preenchida com
%1's (se tornando um filtro de media), ou se for muito pequeno, com zeros, e 1 no centro ( que retornaria a imagem original).

H1 = fspecial('gaussian', 3, 0.000000000001);

H2 = fspecial('gaussian', 3, 1000000000000000);


