function [FSeries] = fourierqs(f1, f2, l1, l2, K, T, intv)
    % K:    Number of summations 
    % T:    Time period
    % f1:   The first function handle
    % f2:   The second function handle
    % l1:   first limit ; l2:   second limit:
    % intv: interval for plotting
    syms x;
    w = (2*pi)/T;
    n = 1:K;
    a0=(2/T)*(int(sym(f1),x,0,l1)+int(sym(f2),x,pi,l2));
    an = (2/T)*(int(sym(f1)* cos(n*w*x),x,0,l1)+int(sym(f2)*(cos(n*w*x)),x,pi,l2));
    bn = (2/T)*(int(sym(f1)*sin(n*w*x),x,0,l1)+int(sym(f2)*(sin(n*w*x)),x,pi,l2));
    v1 = [a0 an bn];
    v2 = [1/2 cos(n*w*x) sin(n*w*x)]';
    FSeries = vpa(v1 * v2, 5);
    x = linspace(intv(1), intv(2), 500);     
    plot(x, eval(FSeries), 'r');
    hold on;
    g = @(x) f1(x).*(0<=x & x<l1) + f2(x).*(l1<=x & x<l2);
    x1 = linspace(0, l2, 500);
    ry1 = repmat(g(x1),1,diff(intv)/l2);
    rx1 = linspace(intv(1),intv(2),length(ry1));
    plot(rx1, ry1, 'b');
    end
