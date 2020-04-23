function [  ] = consistency( A,b )
[m,n]=size(A);
M=[A b];
rA=rank(A);
rM=rank(M);
if(rA==rM)
    disp('This system is consistent');
if(rM==n)
   disp('Solution is unique'); 
    X=A\b;
else
    disp('The system can take infinite values');
end
else 
    disp('The system has no solutions');
    
end
rref(M)
end

