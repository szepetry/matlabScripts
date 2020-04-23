function [  ] = consistencyprac( A,b )
[m,n]=size(A);
M=[A b];
rA=rank(A);
rM=rank(M);
if(rA==rM)
   disp('The system is consistent') ;
   if(rA==n)
       disp('The solution is unique');
       X=A\b
      
   else
       disp('The system has infinite solutions');
   end
else
    disp('The system has no solutions');
end
rref(M)
end

