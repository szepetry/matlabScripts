function []=assignmentsem3_2()
syms t
T = 2*pi;
x = [0 T/6 T/3 T/2 2*T/3 5*T/6];
y = [1.98 1.30 1.05 1.30 -0.88 -0.25];
W = 2*pi/T;   %1
h = 2; %Stops at 2nd harmonic
a = zeros(1,h);
b = zeros(1,h);
ao = 2*mean(y);
HarmonicS = ao/2;
for i = 1:h
    a(i) = 2*mean(y.*cos(i*W*x));
    b(i) = 2*mean(y.*sin(i*W*x));
    HarmonicS = HarmonicS + a(i)*cos(i*W*t)+b(i)*sin(i*W*t);
end
F=HarmonicS;
O = [1.98 1.30 1.05 1.30 -0.88 -0.25]
t=[0 T/6 T/3 T/2 2*T/3 5*T/6];
F=eval(F)
E=0;
for i=1:6
    E=E+(O(i)-F(i)).^2;
end    
fprintf('The error E generated according to given formula is %f',E);
end
