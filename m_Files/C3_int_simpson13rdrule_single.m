%SIMPSON 1/3RD RULE (SINGLE INTEGRATION)
clc;
s=input('Enter equation f(x): ','s');
f=inline(s);
x0=input('Enter lower limit x0: ');
xn=input('Enter lower limit xn: ');
n=input('Enter no. of strips n(in multiple of 2): ');
h=(xn-x0)/n;
s=0;
for i=1:n-1
    if rem(i,2)==0
        s=s+2*f(x0+i*h);
    else
        s=s+4*f(x0+i*h);
    end
end
s=f(x0)+f(xn)+s;
I=(h/3)*s;
fprintf('Integration of given function is: %f',I);