%LAGRANGE'S INTERPOLATION
clc;
clear all;
x=input('Enter value of x(in row matrix):');
y=input('Enter value of y(in row matrix):');
n=length(x);
xg=input('Enter value of x at which y is to be found: ');
yg=0;
for i=1:1:n
    L(i)=1;
        for j=1:1:n
        if j~=i
            L(i)=L(i)*(xg-x(j))/(x(i)-x(j));
        end
        end
fprintf('L(%d)=%f\n',i,L(i));
yg=yg+L(i)*y(i);
end
fprintf('Value of y at x=%f is %f\n',xg,yg);    