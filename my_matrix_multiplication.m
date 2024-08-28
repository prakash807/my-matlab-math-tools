% Matrix Multiplication
% Multiply A_m,k by B_k,n (#columns of A=#rows of B)to obtain matrix C_m,n

A=[1 2 3 4 5; 6 7 8 9 10]; % A_2,5
B=[1 2 3; 4 5 6; 7 8 9; 10 11 12; 13 14 15]; % B_5,3

[m,p]=size(A)
[p,n]=size(B)

for i=1:m
    for j=1:n
        C(i,j)=0;
        for k=1:p
            C(i,j)=C(i,j)+A(i,k)*B(k,j);
        end
    end
end
C