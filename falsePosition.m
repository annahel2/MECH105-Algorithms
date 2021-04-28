function [root, fx, ea, iter] = falsePosition(func, xl, xu, es, maxit, varargin)
%falsePosition finds the root of a function using false position method

if func(xu)*func(xl)>0
    error('Root is not inside given bounds, enter new ones')
end
if nargin<3
    error ('Enter function, upper and lower bounds')
    es=0.0001;
    maxit=200;
end
if nargin<4
    es=0.0001;
    maxit=200;
end
if nargin<5
    maxit= 200;
end
                iter=0; root=xl; ea=100; fx=func(root);
            while (iter<maxit)&&(ea>=es)
                    
                    rootold=root;
                    %evaluate root using false position function
                    root= xu-((func(xu)*(xl-xu))/(func(xl)-func(xu)));
                    fx=func(root);
                    iter=iter+1;
                    ea=abs(((root-rootold)/root)*100);
                    if fx*func(xu)<0 % determining if root will be xu or xl
                        xl=root;
                    elseif fx*func(xl)<0
                        xu=root;
                    elseif fx==0                         
                        ea=0;
                    end
                    if ea<=es || iter==maxit,break,end
                      
                                        
                    end
                    
end
           
            



