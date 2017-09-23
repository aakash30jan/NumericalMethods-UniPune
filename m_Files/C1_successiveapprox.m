%Program for Successive Approximation Method
clc;
clear all;
eqn=input('\n Enter the equation g(x)','s');
g=inline(eqn);
eqn=input('\n Enter the equation dg(x)','s');
dg=inline(eqn);
x1=input('\n Enter initial guess 1: ');
acc=input('\n Enter accuracy criteria: ');
%itr=input('\n Enter number of iterations: ');
dy1=dg(x1);

while(abs(dy1)>1)
    x1=input('\n Renter initial guess 1: ');
    dy1=dg(x1);
    
end
x2=g(x1);
while(abs(x2-x1)>acc)
%for(i=1:itr)
    x1=x2;
    x2=g(x1);
    %fprintf('\n Root at iteration number %d is %f',i,x2);     
end
fprintf('\n The root of the equation is %f ',x2);