function [  ] = RkuttaIVP( t0,n0,tn,h )
t=t0:h:tn;
n=length(t);
r=0.5;
K=5000;
f=@(t,N) (r*N*(1-(N/K)));
N(1)=n0;
for i=1:n-1
    K1=h*f(t(i),N(i));
    K2=h*f(t(i)+(h/2),N(i)+(K1/2));
    K3=h*f(t(i)+(h/2),N(i)+(K2/2));
    K4=h*f(t(i)+h,N(i)+K3);
    N(i+1)=N(i)+(1/6)*(K1+2*K2+2*K3+K4);
end
fprintf('The appropriate value of p(%f) = %f \n',t(end),N(end));
plot(t,N,'b*'),xlabel('Time(in years)'),ylabel('Population (in Millions)')
hold on
t=linspace(t0,tn,200);
u=dsolve('DN=r*N*(1-(N/K))','N(t0)=n0','t');
u=eval(u);
plot(t,u,'r')
legend('Approximate solution','Exact solution')
grid on
hold off
end



