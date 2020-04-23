function [  ] = Complex_fourierseriesvspitopi(  )
syms x
f1=-1;
f2=1;
T=2*pi;
w=2*pi/T;
k=5;
n=-k:k;
Cn=(1/T)*(int(f1*exp(-1i*w*n*x),x,-pi,0)+int(f2*exp(-1i*w*n*x),x,0,pi));
CFs=sum(Cn.*exp(1i*w*n*x));
disp(vpa(CFs,5));
x= linspace(-3*pi,3*pi,1000);
y=eval(CFs);
hold on
plot (x,y,'b')
x1=linspace(-pi,pi,1000);
g=@(x1) ((-1).*(-pi<=x1 & x1<0)+(1).*(0<=x1 & x1<=pi));
y1=g(x1);
hold on
rfx=repmat(y1,1,3);
rx=linspace(-3*pi,3*pi,length(rfx));
plot (rx,rfx,'r')
end

