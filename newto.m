function [ x ] = newto( f,df,x0 )
x(1)=x0;
MAX=10;
tol=10^(-6);
for n=1:MAX
    x(n+1)=x(n)-(f(x(n))/df(x(n)));
    err(n+1)=abs((x(n+1)-x(n))/x(n+1))*100;
    if tol>err(n+1)
       fprintf('The required root at the %d iteration is %.4f ',n+1,x(n+1)); 
        break;
    end    
end    
end

