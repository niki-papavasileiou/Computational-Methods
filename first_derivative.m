f = @(x) 7*x^(e^(x));
h = 1;
x1 =1.7;
x2 = 3.2;


  
  Fd2_x1 = (f(x1+h)-f(x1))/h; %forward 2-point
  Bd2_x1 = (f(x1)-f(x1-h))/h; %backward 2-point
  Cd2_x1 = (f(x1+h)-f(x1-h))/(2*h); %central 2-point
  
  Fd3_x1 = (4*f(x1+h)-f(x1+2*h)-3*f(x1))/(2*h); %forward 3-point
  Bd3_x1 = (-4*f(x1-h)+f(x1-2*h)+3*f(x1))/(2*h); %backward 3-point

Fd2_x2 = (f(x2+h)-f(x2))/h; %forward 2-point
  Bd2_x2 = (f(x2)-f(x2-h))/h; %backward 2-point
  Cd2_x2 = (f(x2+h)-f(x2-h))/(2*h); %central 2-point
  
  Fd3_x2 = (4*f(x2+h)-f(x2+2*h)-3*f(x2))/(2*h); %forward 3-point
  Bd3_x2 = (-4*f(x2-h)+f(x2-2*h)+3*f(x2))/(2*h); %backward 3-point
 
disp('Results for 1st derivative using 2-point formulas for x1')
fprintf('Forward: %.4f\n',Fd2_x1);
fprintf('Backward: %.4f\n',Bd2_x1);
fprintf('Central: %.4f\n',Cd2_x1);

disp('Results for 1st derivative using 3-point formulas for x1')
fprintf('Forward: %.4f\n',Fd3_x1);
fprintf('Backward: %.4f\n',Bd3_x1);

disp('Results for 1st derivative using 2-point formulas for x2')
fprintf('Forward: %.4f\n',Fd2_x2);
fprintf('Backward: %.4f\n',Bd2_x2);
fprintf('Central: %.4f\n',Cd2_x2);

disp('Results for 1st derivative using 3-point formulas for x2')
fprintf('Forward: %.4f\n',Fd3_x2);
fprintf('Backward: %.4f\n',Bd3_x2);

