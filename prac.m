function [ sum ] = prac( n )
sum=0;
for k=1:n+1
    sum = sum + ((-1)^k)/factorial(k); 
       
end

