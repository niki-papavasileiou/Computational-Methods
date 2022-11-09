A=[14 -1 0;-1 14 -1; 0 -1 14];
B=[7;7;0];
P=[1;0;1];
 n = 3;
 e=1e-4;
 N= length(B);
 X= zeros (N,1);
 
 for j=1:n
 for i=1:N
 X(i)= (B(i)/A(i,i))-(A(i,[1:i-1,i+1:N])*P([1:i-1,i+1:N]))/A(i,i);
 end
 fprintf('epanalipsi %d\n',j)
 X
 if abs(X-P)<e 
 break
 end 
 P=X;
 end 