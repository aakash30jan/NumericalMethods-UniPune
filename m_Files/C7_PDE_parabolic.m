%PARABOLIC EQUATION
clc;
s=input('Enter the function: ','s');
f=inline(s);
x0=input('enter the value of x0: ');
t0=input('enter the value of t0: ');
xn=input('enter the value of xn: ');
tn=input('enter the value of tn: ');
h=input('enter the value of h: ');
k=input('enter the value of k: ');
ui=input('enter the value of ui: ');
ue=input('enter the value of ue: ');
c=input('enter the value of diffusivity: ');
n=(xn-x0)/h;
m=(tn-t0)/k;
for i=1:m+1
    x(i)=(x0+h*(i-1));
end
for i=1:m+1
    t(i)=(t0+k*(i-1));
end
for i=1:m+1
    a(i,1)=(ui);
    a(i,n+1)=(ue);
end
for j=2:n
        a(1,j)=f(x0+h*(j-1));
end
v=(k*c*c)/(h*h);
for i=2:m+1
    for j=2:n
        a(i,j)=v*(a(i-1,j-1))+(1-2*v)*(a(i-1,j))+v*a(i-1,j+1);
    end
end
for i=1:m+1
    for j=1:n+1
        fprintf('\t\t%.4f',a(i,j));
    end
    fprintf('\n\n');
end
    