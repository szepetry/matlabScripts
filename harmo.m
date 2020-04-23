function [ ] = harmo(  )
x=[30 60 90 120 150 180 210 240 270 300 330 360];
x=x*pi/180;
syms t
y=[2.34 3.01 3.68 4.15 3.69 2.20 0.83 0.51 0.88 1.09 1.91 1.64];
T=2*pi;
w=2*pi/T;
h=3;
a=zeros(1,h);
b=zeros(1,h);
a0=2*mean(y);
HS=a0/2;
for i=1:h
    a(i)=2*mean(y.*cos(i*w*x));
    b(i)=2*mean(y.*sin(i*w*x));
    HS=HS+a(i).*cos(i*w*t)+b(i).*sin(i*w*t);
end
disp(vpa(HS,5));
plot(x,y,'*');
hold on
grid on
t=linspace(x(1),x(end),50);
y1=eval(HS);
plot(t,y1,'r')
legend('Origrinal','Harmo','location','best');
end

