%GAUSS LEGENDRE 2PT FORMULA
clc;
s=input('Enter the equation f(x): ','s');
f=inline(s);
x0=input('Enter lower limit x0: ');
xn=input('Enter lower limit xn: ');
c=(xn-x0)/2;
d=(xn+x0)/2;
x1=c/sqrt(3)+d;
x2=-c/sqrt(3)+d;
y1=f(x1);
y2=f(x2);
I=(y1+y2)*c;
fprintf('Integration of given function is: %f',I);