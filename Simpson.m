function [I] = Simpson(x, y)
% Numerical evaluation of integral by Simpson's 1/3 Rule
% Inputs
  %x = the vector of equally spaced independent variable
 % y = the vector of function values with respect to x

xlength=length(x);
 if length(x)~= length(y)
     error ('Size of inputs do not match')
 end

  h=x(2)-x(1);
if xlength ==2
    warning('Trapezoid rule will be used.')
    I=h*(y(1)+y(2))/2;
else
   for i=2:(xlength-1)
       check= x(i+1)-x(i);
       if check~=h
           error ('inputs are not equally sized')
       end
   end
    
trap=0;
if mod(xlength,2)==0
    warning ('trapezoid rule will be used')
    trap=1;
    a=(xlength-1);
else
    a=(xlength);
end
I=0;
for j=1:2:(a-2)
    I=I+y(j)+4*y(j+1)+y(j+2);
end
I=h*I/3;
if trap==1
    I=I+(y(xlength)-y(xlength-1))/h;
end
end

end