function [  ] = methodRangeKutta( a,b,y0,h )
f = @(t,y) 2*t.*y^2;
t=a:h:b;
n=length(t);
y=zeros(1,n);
y(1)=y0;
for i=1:n-1
    k1=h*f(t(i),y(i));
    k2=h*f(t(i)+h/2,y(i)+k1/2);
    k3=h*f(t(i)+h/2,y(i)+k2/2);
    k4=h*f(t(i)+h,y(i)+k3);
    y(i+1)=y(i)+(1/6)*(k1+2*k2+2*k3+k4);
    fprintf('Approx value of y(%f)=%f\n',t(i+1),y(i+1));
end
plot(t,y,'*')
hold on
y=dsolve('Dy=2*t*y^2','y(0)=0.5','t');
t=linspace(0,0.3,50);
y=eval(y);
plot(t,y,'r')
end
