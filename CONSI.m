function [  ] = CONSI( A,b )
X=[A b];
[m n]=size(A);
rX=rank(X);
rA=rank(A);
if rX==rA
    if rA==n
    fprintf('The system is consistent and has a unique solution which is:');
    Solution=A\b
    else 
        fprintf('The system is consistant but has infinite solutions');   
    end
else 
    fprintf('The system has infinite solutions');
end
RREF= rref(X)
end

