function [  ] = methodHeat( t0,tn,x0,xn,h,k,c )
t=t0:k:tn;
x=x0:h:xn;
m=length(x);
n=length(t);
a=c*k/h^2;
f=@(x) 2*(1+sin(pi*x));
u=zeros(m,n);
u(:,1)=f(x);
if a>.5
    disp('The method fails')
    return
end
for j=1:n-1
    for i=2:m-1
        u(i,j+1)=a*(u(i+1,j)+u(i-1,j))+(1-2*a)*(u(i,j));
    end
end
disp(u)
surf(t,x,u)

end

