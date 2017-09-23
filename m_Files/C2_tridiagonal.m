%Program for Tridiagonal Method
clc;
clear all;
disp('Output');
a=input('\n Enter Coefficient Matrix A: ');
b=input('\n Enter Solution Matrix B: ');
[m,n]=size(a);
if(m~=n)
    error('\n problem Matrix must be square');
end
for i=2:1:n
    factor=a(i,i-1)/a(i-1,i-1);
    for j=1:1:n
        a(i-1,j)=a(i-1,j)*factor;
    end
    b(i-1)=b(i-1)*factor;
    for k=1:1:n
        a(i,k)=a(i,k)-a(i-1,k);
    end
    b(i)=b(i)-b(i-1);
end
for i=n:-1:1
    sum=b(i);
    for j=i+1:1:n
        sum=sum-a(i,j)*x(j);
    end
    x(i)=sum/a(i,i);
end
for i=1:1:n
    fprintf('\n Value of x %d=%f',i,x(i));
end
