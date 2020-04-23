function [  ] = testcase( t0,tn,x0,xn,h,k,c )
a=c*k/h^2;
t=t0:k:tn;
x=x0:h:xn;
n=length(t);
m=length(x);
f=@(x) (x/2).*(2-x);
u=zeros(m,n);
u(:,1)=f(x);
if a>0.5
    return
end    
for j=1:n-1
   for i=2:m-1
       u(i,j+1)=a*(u(i+1,j)+u(i-1,j))+(1-2*a)*u(i,j);
   end    
end
disp(u)
surf(t,x,u)
end

