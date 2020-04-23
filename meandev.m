function [] = meandev( X )
n=length(X);
mean=sum(X)/n;
std_dev=sqrt(sum((X-mean).^2)/n);
fprintf("%f %f",mean,std_dev);
end

