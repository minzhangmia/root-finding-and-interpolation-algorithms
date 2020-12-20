function nd = ninterp(xval,yval)
len_x = length(xval); 
nd = zeros(len_x);
nd(:,1) = yval';
for k = 1 : len_x-1
   for i = 1 : len_x - k
       nd(i,k+1) = (nd(i+1,k) - nd(i,k))/(xval(i+k) - xval(i));
   end
end