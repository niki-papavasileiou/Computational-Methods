A = [ -1 2 -1;2 -1 0;1 7 -3];
B = [0;7;7];
N = length(B); %number of unknowns
X = zeros(N,1); %N rows, 1 columns
Aug = [A B];

for j = 1:N-1 %for columns
for i = j+1:N %for rows
m = Aug(i,j)/Aug(j,j);
Aug(i,:) = Aug(i,:) - m*Aug(j,:);
endfor
endfor
X(N) = Aug(N,N+1)/Aug(N,N);
for k = N-1:-1:1
X(k) = (Aug(k,N+1) - Aug(k,k+1:N)*X(k+1:N))/Aug(k,k);
endfor