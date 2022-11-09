f = @(x) 1/1+7*x;
N = 3
a = 0;
b = 1;
h = (b-a)/N;

sum = 0;
for i = 1:N-1
sum = sum + f(a+i*h);
endfor
TR = (h/2)*(f(a)+2*sum+f(b));
fprintf('Result using trapezoidal rule is: %.6f\n',TR);