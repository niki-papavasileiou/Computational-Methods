f = @(x,y) -7*x*y^2; %input('Enter your function: '); %right hand side of ODE
x0 =0;
y0 =2;
h = 0.1;
xn = 0.2;
%n = (tn-t0)/h;
n = 4;

x(1) = x0;
y(1) = y0;
for i = 1:n
y(i+1) = y(i)+h*f(x(i),y(i));
x(i+1) = x0 + i*h;
fprintf('y(%.2f) = %.4f\n',x(i+1),y(i+1));
endfor