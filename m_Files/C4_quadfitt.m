%Program for quadratic curve fitting
clc;
clear all;
x=input('enter values of x matrix');
y=input('enter value of y matrix');
xx=x.^2;
xxx=x.^3;
xxxx=x.^4;
xy=x.*y;
xxy=x.*x.*y;
n1=length(x);
a=[sum(x) sum(x) n1;sum(xxx) sum(xx) sum(x); sum(xxxx) sum(xxx) sum(xx)];
b=[sum(y);sum(xy); sum(xxy)];
[m,n]=size(a);
for i=1:1:n-1
    for k=i+1:1:n
        factor=a(k,i)/a(i,i);
        for j=1:1:n
            a(k,j)=a(k,j)-factor*a(i,j);
        end
        b(k)=b(k)-factor*b(i);
    end
end
disp(' Final Augumented Matrix is:');
disp([a,b]);
for i=n:-1:1
    temp=b(i);
    for j=i+1:1:n
        temp=temp-a(i,j)*x(i);
    end
    x(i)=temp/a(i,i);
end
fprintf('y=%fx2  + %fx + %f\n', x(1), x(2), x(3));