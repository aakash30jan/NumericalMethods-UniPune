%SIMPSON 3/8TH RULE (SINGLE INTEGRATION)
clc;
s=input('Enter equation f(x): ','s');
f=inline(s);
x0=input('Enter lower limit x0: ');
xn=input('Enter lower limit xn: ');
n=input('Enter no. of strips n(in multiple of 3): ');
h=(xn-x0)/n;
s=0;
for i=1:n-1
    if rem(i,3)==0
        s=s+2*f(x0+i*h);
    else
        s=s+3*f(x0+i*h);
    end
end
s=f(x0)+f(xn)+s;
I=(3*h/8)*s;
fprintf('Integration of given function is: %f',I);