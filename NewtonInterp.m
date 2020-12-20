function nd_y = NewtonInterp(xval,yval,xi)
len_x = length(xval); 
nd = zeros(len_x);
nd(:,1) = yval';
for k = 1 : len_x-1
   for i = 1 : len_x - k
       nd(i,k+1) = (nd(i+1,k) - nd(i,k))/(xval(i+k) - xval(i));
   end
end
input_len = length(xi); 
nd_y = zeros(1,input_len);
for a = 1 : len_x 
   cz = ones(1,input_len);
   for k = 1 : a-1
       cz = cz .* (xi - xval(k));
   end
   nd_y = nd_y + nd(1,a) * cz;
end