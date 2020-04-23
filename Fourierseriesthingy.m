function [ ] = Fourierseriesthingy(  )
syms x 
f1= x;
f2=-x;
n=1:5; %here 5 represents the number of harmonics. its a replacement for the infinity to avoid lags
T=2; % this is the timeperiod
w=2*pi/T;%the obvious
%coef ka pardaphas
a0=(2/T)*(int(f1,x,-1,0)+int(f2,x,0,1));
an=(2/T)*(int(f1*cos(w*n*x),x,-1,0)+int(f2*cos(w*n*x),x,0,1));
bn=(2/T)*(int(f1*sin(w*n*x),x,-1,0)+int(f2*sin(w*n*x),x,0,1));
%vector creation to create fourier coef
V1=[a0/2,an,bn];
V2=[1,cos(w*x*n),sin(w*x*n)];
FS=sum(V1.*V2); % fourier series with the sigma's limit as 5 and not infinity.same as line 5 above
fprintf('Fourier series for the given function is \n');
disp(vpa(FS,5)); % this 5 stops after 5 non zero places
x=linspace(-1,1,500);
y=eval(FS);
ry=repmat(y,1,5); %number of cycles 
rx=linspace(-5,5,length(ry));
plot(rx,ry,'g','Linewidth',2.5);
hold on
grid on
g=@ (x) x.*(-1<=x & x<0) +(-x).*(0<=x & x<=1);
ry1=repmat(g(x),1,5);
rx1=linspace(-5,5,length(ry1));
plot(rx1,ry1,'b');
legend('Fourier series','Given function','Location','best');
end

