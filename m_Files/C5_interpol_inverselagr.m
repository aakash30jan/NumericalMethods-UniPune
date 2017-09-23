%LAGRANGE'S INTERPOLATION
clc;
clear all;
x=input('Enter value of x(in row matrix):');
y=input('Enter value of y(in row matrix):');
n=length(x);
yg=input('Enter value of y at which x is to be found: ');
xg=0;
for i=1:1:n
    L(i)=1;
        for j=1:1:n
        if j~=i
            L(i)=L(i)*(yg-y(j))/(y(i)-y(j));
        end
        end
fprintf('L(%d)=%f\n',i,L(i));
xg=xg+L(i)*x(i);
end
fprintf('Value of x at y=%f is %f\n',yg,xg);    