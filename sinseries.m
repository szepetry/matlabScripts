function [ sinsum ] = sinseries( x,n )
sinsum=0;
for k=1:n+1
    sinsum = sinsum + ((-1)^(k-1))*(x.^(2*k-1))/factorial(2*k-1) ;
end
end

