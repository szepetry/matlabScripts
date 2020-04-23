function [ exp_sum ] = funcexp( x,n )
exp_sum=0;
for k=1:n+1
    exp_sum= exp_sum + x.^(k-1)/factorial(k-1);

end
end

