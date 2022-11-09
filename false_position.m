% false-position method

f = @(x)x^3 + 2*x^2 -3*x -7;
a = 1;
b = 2;
e = 1e-4;
n = 2;




if f(a)*f(b) < 0
for i = 0:n
x = (a*f(b)-b*f(a))/(f(b)-f(a));
fprintf('x%d = %.4f \n', i,x);

fprintf('F(X%d) = %.4f \n',i,f(x));

if abs(f(x))< e
break
endif
if f(a)*f(x) < 0
b = x;
elseif f(b)*f(x) < 0
a = x;
endif
endfor
else
disp('No root in the given interval');
endif