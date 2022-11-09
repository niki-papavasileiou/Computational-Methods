f = @(x) 1/1+7*x;
N = 3
a = 0;
b = 1;
h = (b-a)/N;


oddsum = 0;
for j = 1:2:N-1
oddsum = oddsum + f(a+j*h);
endfor
evensum=0;
for k=2:2:N-2
evensum = evensum + f(a+k*h);
endfor
Sim13 = (h/3)*(f(a)+4*oddsum+2*evensum+f(b));
fprintf('Result using Simpson 1/3rd rule is: %.6f\n',Sim13);