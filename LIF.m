function [  ] = LIF( x,y )
n=length(x);
pro=0;
%prod=1;
syms t
for i=1:n
    prod =1;
    for k=1:n
       if(i~=k) 
         prod =prod*(t-x(k))/(x(i)-x(k));
       end    
    end   
    pro=pro+prod*y(i);
end
pro=expand(pro);
display(pro);
end

