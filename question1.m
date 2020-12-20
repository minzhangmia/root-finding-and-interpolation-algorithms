clc
clear all
close all

 %plot function 1
 %x = -5:0.01:5;
 %for i = 1:length(x)
 %    y(i) = fun1(x(i));
 %end
 %plot(x,y)
 %title("function 1")
 
 %plot function 2
 %x = -5:0.01:5;
 %for i = 1:length(x)
 %    y(i) = fun2(x(i));
 %end
 %plot(x,y)
 %title("function 2")

 syms x
 y = diff(fun2(x))
 k = subs(y,x,1)

%bisection method for function 1
b1 = bisect(@fun1,-1,1,0.0001);
b2 = bisect(@fun1,1,3,0.0001);
%newton method for function 1
n1 = newton(@fun1,0,@fun1_deriv,0.0001);
n2 = newton(@fun1,3,@fun1_deriv,0.0001);
fprintf('b1 = %f\n',b1)
fprintf('b2 = %f\n',b2)
fprintf('n1 = %f\n',n1)
fprintf('n2 = %f\n',n2)

fprintf('-----------------------------------\n')
%bisection method for function 2
b3 = bisect(@fun2,-4,-1,0.0001);
b4 = bisect(@fun2,-1,2,0.0001);
b5 = bisect(@fun2,2,5,0.0001);
%newton method for function 2
n3 = newton(@fun2,-2,@fun2_deriv,0.0001);
n4 = newton(@fun2,-0,@fun2_deriv,0.0001);
n5 = newton(@fun2,3,@fun2_deriv,0.0001);
fprintf('b3 = %f\n',b3)
fprintf('b4 = %f\n',b4)
fprintf('b5 = %f\n',b5)
fprintf('n3 = %f\n',b3)
fprintf('n4 = %f\n',b4)
fprintf('n5 = %f\n',b5)