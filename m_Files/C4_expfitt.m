%Program for exponential curve fitting
clc;
clear all;
x=input('enter values of x matrix');
y=input('enter value of y matrix');
y=log(y);
xx=x.^2;
xy=x.*y;
n1=length(x);
a=[n1 sum(x);sum(x) sum(xx)];
b=[sum(y);sum(xy)];
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
a=exp(x(1));
b=x(2);
fprintf('y=%f *e^ (%f*x) \n', a, b);

