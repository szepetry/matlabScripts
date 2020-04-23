function [ mean,stddev ] = stats(X)
n=length(X);
mean=sum(X)/n;
std=X-mean;
stddev=sqrt(sum(std.^2)/n);

end

