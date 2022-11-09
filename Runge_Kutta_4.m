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
k2 = h*f(x(i)+(h/2),y(i)+(k1/2));
k3 = h*f(x(i)+(h/2),y(i)+(k2/2));
k4 = h*f(x(i)+h, y(i) + k3);
y(i+1) = y(i)+(1/6)*(k1+2*k2+2*k3+k4);
fprintf('y(%.2f) = %.4f\n',x(i+1),y(i+1));
endfor