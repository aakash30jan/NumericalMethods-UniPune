%Program for Newton Raphson Method
clc;
clear all;
eqn=input('\n Enter the equation f(x)','s');
f=inline(eqn);
eqn=input('\n Enter the equation df(x)','s');
df=inline(eqn);
eqn=input('\n Enter the equation ddf(x)','s');
ddf=inline(eqn);
x1=input('\n Enter initial guess 1: ');
%acc=input('\n Enter accuracy criteria: ');
itr=input('\n Enter number of iterations: ');
y1=f(x1);
dy1=df(x1);
ddy1=ddf(x1);
conv=(y1*ddy1)/(dy1*dy1);
while(abs(conv)>1)
    x1=input('\n Renter initial guess 1: ');
    y1=f(x1);
    dy1=df(x1);
    ddy1=ddf(x1);
    conv=(y1*ddy1)/(dy1*dy1);  
end
x2=x1-(y1/dy1);
%while(abs(x2-x1)>acc)
for(i=1:itr)
    x1=x2;
    y1=f(x1);
    dy1=df(x1);
    x2=x1-(y1/dy1);
    fprintf('\n Root at iteration number %d is %f',i,x2);     
end
fprintf('\n The root of the equation is %f ',x2);