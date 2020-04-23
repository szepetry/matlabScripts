function [  ] = methodWave( t0,tn,x0,xn,h,k,c )
t=t0:k:tn;
x=x0:h:xn;
m=length(x);
n=length(t);
a=c*(k^2)/(h^2);
u=zeros(m,n);
f=@(x) x.*(1-x);
u(:,1)=f(x);
if a>1
   disp('Method fails')
   return
end
for j=1:n-1
   for i=2:m-1
       if j==1
           u(i,j+1)=(a/2)*(u(i+1,j)+u(i-1,j))+ (1-a)*u(i,j);
       else
           u(i,j+1)=a*(u(i+1,j)+u(i-1,j))+ 2*(1-a)*u(i,j) - u(i,j-1);
       end
   end 
end
disp(u)
surf(t,x,u)
end

