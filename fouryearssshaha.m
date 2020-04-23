function [  ] = fouryearssshaha(  )
syms x
f1=0;
f2=2;
T=4;
w=2*pi/T;
n=1:5;
a0=(2/T).*(int(f1,x,-2,0)+int(f2,x,0,2));
an=(2/T).*(int(f1*cos(n*w*x),x,-2,0)+int(f2*cos(n*w*x),x,0,2));
bn=(2/T).*(int(f1*sin(n*w*x),x,-2,0)+int(f2*sin(n*w*x),x,0,2));
V1=[a0/2,an,bn];
V2=[1,cos(n*w*x),sin(n*w*x)];
FS=sum(V1.*V2);
disp(FS);
x=linspace(-2,2,1000);
y=eval(FS);
ry=repmat(y,1,3);
rx=linspace(-2,10,length(ry));
plot(rx,ry)
hold on
grid on
g=@(x) (0.*(-2<=x & x<0)  +  2.*(0<=x & x<2));
x=linspace(-2,2,1000);
ry1=repmat(g(x),1,3);
rx1=linspace(-2,10,length(ry1));
plot(rx1,ry1,'r')
legend('Fourier','Given function','location','best');
