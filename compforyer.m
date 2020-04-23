function [  ] = compforyer(  )
syms x
T=4;
w=2*pi/T;
f1=0;
f2=2;
n=-5:5;
Cn=(1/T)*(int(f1.*exp(-1i*w*x*n),x,-2,0)+int(f2.*exp(-1i*w*x*n),x,0,2));
CFS=sum(Cn.*exp(1i*w*x*n));
CFS=simplify(CFS);
disp(CFS)
x=linspace(-2,10,1000);
y=eval(CFS);
plot(x,y,'b');
hold on
clear x
g=@(x)  ((0).*(-2<=x & x<0)+(2).*(0<=x & x<2));
x=linspace(-2,2,1000);
ry=repmat(g(x),1,3);
rx=linspace(-2,10,length(ry));
plot(rx,ry,'r')

end

