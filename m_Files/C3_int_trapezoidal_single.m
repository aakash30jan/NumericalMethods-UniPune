%TRAPEZOIDAL SINGLE INTEGRATION (as per requirement change 'n' & 'h')
clc;
s=input('Enter equation f(x): ','s');
f=inline(s);
x0=input('Enter lower limit x0: ');
xn=input('Enter lower limit xn: ');
%n=input('Enter no. of strips n: ');
%h=(xn-x0)/n;
h=input('Enter stepsize h: ');
n=(xn-x0)/h;
s=0;
for i=1:n-1
    s=s+2*f(x0+i*h);
end
s=f(x0)+f(xn)+s;
I=(h/2)*s;
fprintf('Integration of given function is: %f',I);
