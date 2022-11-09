f =  @(x) x^3 +2*x^2 -3*x -7;

h = 0.01;


x1=1.7;
x2=3.2;


Fd3_x1 = (f(x1+2*h)-2*f(x1+h)-f(x1))/(h^2); %forward 3-point
Bd3_x1 = (f(x1-2*h)-2*f(x1-h)+f(x1))/(h^2); %backward 3-point
Cd3_x1 = (f(x1+h) - 2*f(x1) - f(x1-h))/(h^2); %central 3-point



Fd3_x2 = (f(x2+2*h)-2*f(x2+h)-f(x2))/(h^2); %forward 3-point
Bd3_x2 = (f(x2-2*h)-2*f(x2-h)+f(x2))/(h^2); %backward 3-point
Cd3_x2 = (f(x2+h) - 2*f(x2) - f(x2-h))/(h^2); %central 3-point


disp('Results for 2nd derivative using 3-point formulas for x1')
fprintf('Forward: %.4f\n',Fd3_x1);
fprintf('Backward: %.4f\n',Bd3_x1);
fprintf('Central: %.4f\n',Cd3_x1);


disp('Results for 2nd derivative using 3-point formulas for x2')
fprintf('Forward: %.4f\n',Fd3_x2);
fprintf('Backward: %.4f\n',Bd3_x2);
fprintf('Central: %.4f\n',Cd3_x2);
