% bisection method

f = @(x)x^3 + 2*x^2 -3*x -7;
a = 1;
b = 2;
e = 1e-4;
n = 2;

if f(a)*f(b) < 0
for i = 0:n
c = (a+b)/2;
fprintf('C%d = %.4f \n',i,c);

fprintf('F(C%d) = %.4f \n',i,f(c));

if abs(c-b)<e || abs(c-a)< e
break
endif
if f(a)*f(c) < 0
b = c;
elseif f(b)*f(c) < 0
a = c;
endif

endfor
else
disp('No root in the given interval');
endif

