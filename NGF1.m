function [ ] = NGF1( x,y )
n=length(x);
d=zeros(n);
disp(d);
d(:,1)=y;
for j=2:n
for i=j:n
        d(i,j)=d(i,j-1)-d(i-1,j-1);
end
end
fprintf('the difference table is \n');
disp(d);
h=x(2)-x(1);
syms t;
p=(t-x(1))/h;
prod=1;
poly=y(1);
for i=2:n
    prod=prod*(p-(i-2))/(i-1);
    poly=poly+prod*d(i,i);
end
fprintf('required interpolating polnomial is\n');
poly=expand(poly);
disp(poly);
t=10;
z=eval(poly);
fprintf('the after 10s, horse will in the position: \n');
disp(z);
v(1)=0;
for i=2:n
    v(i)= y(i)/x(i);
end
fprintf('the speeds at different position of the horse is:\n')
disp(v);
t=[1 2 3 4 5 6 7 8 9 10];
dis=eval(poly);
for i=1:10
    s(i)=dis(i)/i;
end
max = s(1);
for i=1:10
    if s(i)>=max 
        max=s(i);
    end
end
fprintf('max speed of the horse is:\n');
disp(max);
t=[1 2 3 4 5 6 7 8 9 10 11 12 13 14 15];
dis=eval(poly);
for i=1:15
    s(i)=dis(i)/(i);
end

t=x(1):0.001:x(n);
z=eval(poly);
plot(t,z,'r');
hold on;
grid on
plot(x,y,'*');

end

