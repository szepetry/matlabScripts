function [ sumhere ] = sumwhere( n )
sumhere=0;
for k=1:n+1
    sumhere=sumhere + ((-1)^k)/factorial(k);


end

