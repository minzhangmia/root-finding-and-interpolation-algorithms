%%bisection methos
function [x,cs] = bisect(f,a,b,tol)
         %Fun is the equation to be solved. It is the x value when fun=0. 
         %A and B are the initial intervals. 
         %Tol represents an error.
active = 1;
cs = 1;
while active
    x = (a+b)/2;                   %step1: x=(a+b)/2
    obj(cs) = x;
    f1(cs) = f(a) * f(x);          %Step3: if sign[f(b)]* sign[f(x)]<=0, a=x, stop
    f2(cs) = f(b) * f(x);          %Step4: if sign[f(b)]* sign[f(x)]>0, b=x, start from step1
    if f1(cs) < 0
        b = x;
    else
        a = x;
    end
    cs = cs + 1;
    if abs(f(x)) < tol || cs > 200 %Step2: if b-x<=error, root=x, stop/if b-x>error, continue 
        active = 0;
    end
end