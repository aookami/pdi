A = ones(5,5);

H = [5,5,-3; 5, 0 ,-3 ; -3, -3, -3];

C = imfilter(A,H, 'conv');

C2 = imfilter(A,flip(flip(H,1),2));

B = imfilter(A,H);

D = imfilter(A,H*.0);

E = imfilter(A,H,'full');