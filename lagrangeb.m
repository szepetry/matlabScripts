function [y]=lagrangeb(x,x1,y1)

n=size(x1,2);
L=ones(n,size(x,2));
if (size(x1,2)~=size(y1,2))
   fprintf(1,'\nERROR!\nx1 and y1 must have the same number of elements\n');
   y=NaN;
else
   for i=1:n
      for j=1:n
         if (i~=j)
            L(i,:)=L(i,:).*(x-x1(j))/(x1(i)-x1(j));
         end
      end
   end
   y=0;
   for i=1:n
      y=y+y1(i)*L(i,:);
   end
end