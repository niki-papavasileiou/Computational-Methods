f = @(x,y) -7*x*y^2;
x0 = 0;
y0 = 2;
h = 0.1;
xn = 0.2;
n = 4;

x(1) = x0;
y(1) = y0;
for i = 1:n
x(i+1) = x0 + i*h;
k1 = h*f(x(i),y(i));
k2 = h*f(x(i+1),y(i)+k1);
y(i+1) = y(i)+(1/2)*(k1+k2);
fprintf('y(%.2f) = %.4f\n',x(i+1),y(i+1));
endfor