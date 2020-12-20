function nd_y = polyeval(nd,xval,xi)
len_x = length(xval);
input_len = length(xi); 
nd_y = zeros(1,input_len);
for a = 1 : len_x 
   cz = ones(1,input_len);
   for k = 1 : a-1
       cz = cz .* (xi - xval(k));
   end
   nd_y = nd_y + nd(1,a) * cz;
end