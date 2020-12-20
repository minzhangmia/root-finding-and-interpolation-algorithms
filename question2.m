clc
clear all

%% function 1 with 2 points interpolated
x = [0.5 1.5]; 
for i = 1 : length(x)
    y1(i) = fun1(x(i));
end
l1 = ninterp(x,y1);  %Newton Polynomial coeffs 
fun_fz1 = @(xx) polyeval(l1,x,xx);  %Values of interpolation
b1_1 = bisect(fun_fz1,-1,1,0.0001) %Function used in for the bisection method
b1_2 = bisect(fun_fz1,1,2.5,0.0001)

%% function 1 with 3 points interpolated
x = [0.5 1.5 2]; 
for i = 1 : length(x)
    y1(i) = fun1(x(i));
end
l1 = ninterp(x,y1);  %Newton Polynomial coeffs 
fun_fz1 = @(xx) polyeval(l1,x,xx);
b1_1 = bisect(fun_fz1,-1,1,0.0001)
b1_2 = bisect(fun_fz1,1,2.5,0.0001)

%% function 1 with 4 points interpolated
x = [0.5 1.5 2 2.5]; 
for i = 1 : length(x)
    y1(i) = fun1(x(i));
end
l1 = ninterp(x,y1);  %Newton Polynomial coeffs 
fun_fz1 = @(xx) polyeval(l1,x,xx);
b1_1 = bisect(fun_fz1,-1,1,0.0001)
b1_2 = bisect(fun_fz1,1,2.5,0.0001)

%% function 2 with 2 points interpolated
x = [-3 0]; 
for i = 1 : length(x)
    y2(i) = fun2(x(i));
end
l2 = ninterp(x,y2);  %Newton Polynomial coeffs 
fun_fz2 = @(xx) polyeval(l2,x,xx);
b2_1 = bisect(fun_fz2,-4,-1,0.0001)
b2_2 = bisect(fun_fz2,-1,2,0.0001)
b2_3 = bisect(fun_fz2,2,5,0.0001)

%% function 2 with 3 points interpolated
x = [-3 0 3]; 
for i = 1 : length(x)
    y2(i) = fun2(x(i));
end
l2 = ninterp(x,y2);  %Newton Polynomial coeffs 
fun_fz2 = @(xx) polyeval(l2,x,xx);
b2_1 = bisect(fun_fz2,-4,-1,0.0001)
b2_2 = bisect(fun_fz2,-1,2,0.0001)
b2_3 = bisect(fun_fz2,2,5,0.0001)

%% function 2 with 4 points interpolated
x = [-3 0 3 6]; 
for i = 1 : length(x)
    y2(i) = fun2(x(i));
end
l2 = ninterp(x,y2);  %Newton Polynomial coeffs 
fun_fz2 = @(xx) polyeval(l2,x,xx);
b2_1 = bisect(fun_fz2,-4,-1,0.0001)
b2_2 = bisect(fun_fz2,-1,2,0.0001)
b2_3 = bisect(fun_fz2,2,5,0.0001)

