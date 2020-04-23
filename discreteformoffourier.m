function [ f ] = discreteformoffourier( x,y )
syms t
T=2*pi;
W=2*pi/T;
h=3;
a=zeros(1,h);
b=zeros(1,h);
a0=2*mean(y);
HarmonicSeries=a0/2;
for i=1:h
    a(i)=2.*mean(y.*cos(i*W*x));
    b(i)=2.*mean(y.*sin(i*W*x));
    HarmonicSeries=HarmonicSeries+a(i)*cos(i*W*t)+b(i)*sin(i*W*t);
end    
    f=vpa(HarmonicSeries,3);
    plot(x,y,'*')
    hold on
t=linspace(x(1),x(end),1000);    
y1=eval(HarmonicSeries);
plot(t,y1,'r')
legend('DiscretePoints','HarmonicSeries','Location','best')
end

