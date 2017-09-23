%GAUSS LEGENDRE 3PT FORMULA
clc;
s=input('Enter the equation f(x): ','s');
f=inline(s);
x0=input('Enter lower limit x0: ');
xn=input('Enter upper limit xn: ');
c=(xn-x0)/2;
d=(xn+x0)/2;
x1=c*sqrt(3/5)+d;
x2=-c*sqrt(3/5)+d;
x3=d;
y1=f(x1);
y2=f(x2);
y3=f(x3);
I=((5/9)*(y1+y2)+(8/9)*(y3))*c;
fprintf('Integration of given function is: %f',I);