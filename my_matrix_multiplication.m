% Matrix Multiplication
% Multiply A_m,k by B_k,n (#columns of A=#rows of B)to obtain matrix C_m,n

function C = my_matrix_multiplication(A, B)
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
end