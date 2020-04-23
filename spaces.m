function [ cs,ns,rs ] = spaces( A )
[V, pivot]=rref(A);
%r=length(pivot);
cs=A(:,pivot);
rs=V(1:r,:);
ns=null(A,'r');
end

