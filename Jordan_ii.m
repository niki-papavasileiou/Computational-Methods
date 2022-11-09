A = [ -1 2 -1;2 -1 0;1 7 -3];
B = [0;7;7];
N = length(B); %number of unknowns
X = zeros(N,1); %N rows, 1 columns
Aug = [A B];

for j = 1:N %for columns
Aug(j,:) = Aug(j,:)/Aug(j,j);
for i = 1:N %for rows
if i!=j
m = Aug(i,j);
Aug(i,:) = Aug(i,:) - m*Aug(j,:);
endif
endfor
endfor
X = Aug(:,N+1)