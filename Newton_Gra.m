function [ x ] = Newton_Gra( f,df,x0 )
x(1)=x0;
MAXIT=10; 
TOL=10^(-6);
for i=1:MAXIT 
    x(i+1)=x(i)-f(x(i))/df(x(i));
    err(i+1)=abs((x(i+1)-x(i))/x(i+1))*100;
    if err(i+1)<TOL 
        fprintf("The required root at %d iteration is %.5f",i,x(i+1));
        break;
    
    end  
end           
end      

