f = @(x) 1/1+7*x;
N = 3
a = 0;
b = 1;
h = (b-a)/N;

sum3 = 0;
for l = 3:3:N-1
sum3 = sum3 + f(a+l*h);
endfor
SUM = 0;
for m = 1:N-1
SUM = SUM + f(a+m*h);
endfor
sumnot3 = SUM - sum3;
Sim38 = (3*h/8)*(f(a)+3*sumnot3+ 2*sum3+f(b));
fprintf('Result using Simpson 3/8th rule is: %.4f\n',Sim38);