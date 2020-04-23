function [  ] = praci(  )
x=linspace(-1,1,10);
y=linspace(-1,1,10);
z=linspace(-1,1,10);
[x,y,z]=meshgrid(x,y,z);
f1=x.*y;
f2=x-y;
f3=z;
quiver3(x,y,z,f1,f2,f3);

end

