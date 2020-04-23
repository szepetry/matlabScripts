function [  ] = heat_eq(x0,xn,t0,tn,h,k,c)
x=x0:h:xn;
t=t0:k:tn;
m=length(x);
n=length(t);
u=zeros(m,n);
a=(c*k)/(h^2);
f=@(x)((4*x) - (0.5.*x.^2));
if a > 0.5
        fprintf("method fails for a>0.5");
        return;
end
u(:,1) = f(x); 
for j=1:n-1
    for i=2:m-1
         u(i,j+1)= a*u(i+1, j) + (1-2*a)*u(i, j) + a*u(i-1,j);
    end
end
disp(u)
surf(t,x,u)
legend('Temperature','location','best')
xlabel('t')
ylabel('x')
zlabel('u')
end