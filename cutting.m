f = @(x)x^3 + 2*x^2 -3*x -7;
x_old_0 = 1;
x_old_1 = 2;
e = e = 1e-4;
n = 3;

for i=1:n
x_new = (x_old_0*f(x_old_1)-
x_old_1*f(x_old_0))/(f(x_old_1)-f(x_old_0));
fprintf('x%d = %.4f \n',i+1, x_new);
if abs(x_new-x_old_1)<e
break
endif
x_old_0 = x_old_1;
x_old_1 = x_new;
endfor