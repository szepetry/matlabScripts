function [ sinsum ] = somesum( n )
sinsum=0;
for k=1:n
    sinsum = sinsum + ((-1)^k)/factorial(k) ;
end
end

