%NEWTON FORWARD INTERPOLATION
clc;
x=input('enter value of x: ');
y=input('enter value of y: ');
n=length (x);
xg=input('Enter value of x at which y is to be found: ');
h=x(2)-x(1);
p=(xg-x(1))/h;
for j=1:1:n-1
    for i=1:1:n-j
        if j==1
            nfd(i,j)=y(i+1)-y(i);
        else
            nfd(i,j)=nfd(i+1,j-1)-nfd(i,j-1);
        end
    end
end
disp(nfd);
yg=y(1)+p*nfd(1,1);
p1=p;
m=1;
for k=2:1:n-1
    if m<k
        p=p*(p1-m);
    end
    fact=1;
    for i=1:k
        fact=fact*i;
    end
    yg=yg+(p/fact)*nfd(1,k);
    m=m+1;
end
fprintf('yg= %f\n',yg);
    