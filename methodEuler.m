function [  ] = methodEuler( a,b,y0,h )
f=@(t,y) cos(t)+sin(t);
t=a:h:b;
n=length(t);
y=zeros(1,n);
y(1)=y0;
for i=1:n-1
    y(i+1)=y(i) + h*f(t(i),y(i));
    fprintf('Approx value of y(%f)=%f \n',t(i+1),y(i+1))
end
plot(t,y,'-*')


end

