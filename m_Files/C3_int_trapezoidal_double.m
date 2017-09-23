%TRAPEZOIDAL DOUBLE INTEGRATION
clc;
s=input('Enter equation f(x): ','s');
f=inline(s);
x0=input('Enter lower limit x0: ');
xn=input('Enter lower limit xn: ');
y0=input('Enter lower limit y0: ');
ym=input('Enter lower limit ym: ');
n=input('Enter no. of strips for x: ');
m=input('Enter no. of strips for y: ');
h=(xn-x0)/n;
k=(ym-y0)/m;
x=x0;
y=y0;
for i=1:m+1
    for j=1:n+1
        a(i,j)=f(x,y);
        x=x+h;
    end
    y=y+k;
    x=x0;
end
disp(a);
s=0;
for i=1:m
    for j=1:n
        s=s+a(i,j)+a(i,j+1)+a(i,j+1)+a(i+1,j+1);
    end
end
I=(h*k/4)*s;
fprintf('Integration of given function is: %f',I);