%%Newton method
function root = newton(fun, x0, fprime, tol)
         %f is the function that requires the solution, 
         %fprime is the derivative
         %x0 is the value at the beginning of the iteration
         %tol represents an error
active = 1;
root = x0;
cs = 1;
while active
    if fprime(root) ~= 0
        fa1 = root - fun(root) / fprime(root);    %Newton method iteration formula, root value update
        delta = abs(- fun(root) / fprime(root));  %The formula for error calculation
        root = fa1;     %root value update,for the next iteration
        if delta < tol  %If the error is greater than the required tol, the iteration continues
            active = 0;
        end
        cs = cs+1;
    end
end