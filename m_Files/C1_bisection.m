%Program for Bisection Method
clc;
clear all;
eqn=input('\n Enter the equation f(x)','s');
f=inline(eqn);
x1=input('\n Enter initial guess 1: ');
x2=input('\n Enter initial guess 2: ');
%acc=input('\n Enter accuracy criteria: ');
itr=input('\n Enter number of iterations: ');
y1=f(x1);
y2=f(x2);
while(y1*y2>0)
    x1=input('\n Renter initial guess 1: ');
    x2=input('\n Renter initial guess 2: ');
    y1=f(x1);
    y2=f(x2);
end
%while(abs(x2-x1)>acc)
for(i=1:itr)
    x3=(x1+x2)/2;
    y3=f(x3);
    if (y1*y3<0)
        x2=x3;
        y2=y3;
    else
        x1=x3;
        y1=y3;
    end
    fprintf('\n Root at iteration number %d is %f',i,x3);
end
fprintf('\n The root of the equation is %f ',x3);