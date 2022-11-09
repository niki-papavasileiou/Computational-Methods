%Newton-Raphson

f =   @(x)x^2-x-7;
df =  @(x)2*x -1;
x_old =0;
e = 1e-4;
n = 3;

if df(x_old)~=0
for i=1:n
x_new = x_old -f(x_old)/df(x_old);
fprintf('x%d = %.4f \n',i,x_new);
if abs(x_new-x_old)<e
break
endif
x_old = x_new;
endfor
else
disp('Newton Raphson Method Failed');
endif