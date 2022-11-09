%fixed point method

g = @(x) (x^3 + 2*x^2 - 7)/3;
x_old = 0;
e = 1e-4;
n =  3;



for i=1:n
x_new = g(x_old);
fprintf('x%d = %.4f \n', i,x_new);

fprintf('F(x%d) = %.4f \n',i,g(x_new));

if abs(x_new - x_old) < e
break
endif
x_old = x_new;
endfor