function [  ] = eulMethod( x0,xn,y0,h )
x=x0:h:xn;
f=@(x,y)(y-x);
n=length(x);
y(1)=y0;
for i=2:n
    y(i)=y(i-1) + h*f(x(i-1),y(i-1));
end
disp(y);
plot(x,y,'b--');
hold on
u=eval(dsolve('Dy=y-x','y(0)=1/2','x'));
plot(x,u,'r--');
end

