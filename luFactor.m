function [L, U, P] = luFactor(A)
% luFactor(A)
%	LU decomposition with pivotiing
% inputs:
%	A = coefficient matrix
%determine size of A
[m,n]=size(A);
A1=A;
%error, LU decomposition will not work if not a square matrix
if m~=n
    error('Matrix dimensions must match, square matrices');
end
% outputs:
%	L = lower triangular matrix
%	U = upper triangular matrix
%       P = the permutation matrix
s=ones(1,length(A));
P=diag(s);
L=diag(s);
%check for pivoting here
for c=1:length(A)
    for r=c:length(A)
        if (abs(A(r,c))>(abs(A(c,c))))
            old=A(c,:);
            A(c,:)=A(r,:);
            A(r,:)=old;
            old=P(c,:);
            P(c,:)=P(r,:);
            P(r,:)=old;
        end
    end

            
%Guass Elimination
for r=(c+1):length(A)
   row1=((A(r,c))/(A(c,c))*(A(c,:)));
   L(r,c)=(A(r,c))/(A(c,c));
   A(r,:)=(A(r,:))-(row1);
end
end
%enter values of A into the upper tridiagonal matrix
U=A;
L=(P*A1)/U;
end
