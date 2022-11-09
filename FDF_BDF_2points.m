h=1;
x0=3;
x1=4;
f(2) = 30;
f(3) = 7;
f(4) = 7;
f(4+h) =0;

Fd2_x0 = (f(x0+h)-f(x0))/h; %forward 2-point
Bd2_x0 = (f(x0)-f(x0-h))/h; %backward 2-point

Fd2_x1 = (f(x1+h)-f(x1))/h; %forward 2-point
Bd2_x1 = (f(x1)-f(x1-h))/h; %backward 2-point

disp('Results for 1st derivative using 2-point formulas for x0')
fprintf('Forward: %.4f\n',Fd2_x0);
fprintf('Backward: %.4f\n',Bd2_x0);

disp('Results for 1st derivative using 2-point formulas for x1')
fprintf('Forward: %.4f\n',Fd2_x1);
fprintf('Backward: %.4f\n',Bd2_x1);