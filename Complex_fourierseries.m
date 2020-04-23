function [  ] = Complex_fourierseries(  )
syms x
f1=-x;
f2=x;
T=8;
w=2*pi/T;
k=5;
n=-k:k;
Cn=(1/T)*(int(f1*exp(-1i*w*n*x),x,-4,0)+int(f2*exp(-1i*w*n*x),x,0,4));
CFs=sum(Cn.*exp(1i*w*n*x));
disp(vpa(CFs,5));
x= linspace(-12,12,1000);
y=eval(CFs);
hold on
plot (x,y,'b')
x1=linspace(-4,4,1000);
g=@(x1) ((-x1).*(-4<=x1 & x1<0)+(x1).*(0<=x1 & x1<=4));
y1=g(x1);
%hold on
rfx=repmat(y1,1,3);
rx=linspace(-12,12,length(rfx));
plot (rx,rfx,'r')
end

