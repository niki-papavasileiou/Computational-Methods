 a = 3;
 b = 6;
 
 f= @(x) e^7*x;
 F = @(x) f(((b-a)*x + (b+a))/2);

 
 w1 = 1;
w2 = 1;
x1 = 1/sqrt(3);
x2 = -1/sqrt(3);
G2 = ((b-a)/2)*(w1*F(x1)+w2*F(x2));
fprintf('Result using gauss 2 point formula is: %.4f\n',G2);