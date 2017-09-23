%RK2nd Order
clc;
a=input('Enter the equation dy/dx: ','s');
df=inline(a);
b=input('Enter the equation dy/dx: ','s');
dg=inline(b);
x0=input('Enter the value of x0: ');
y0=input('Enter the value of y0: ');
z0=input('Enter the value of z0: ');
xn=input('Enter the value of xn: ');
h=input('Enter the value of stepsize h: ');
n=(xn-x0)/h;
for i=1:n
    k1=h*df(x0,y0,z0);
	L1=h*dg(x0,y0,z0);
    k2=h*df(x0+h,y0+k1,z0+L1);
    L2=h*dg(x0+h,y0+k1,z0+L1);
    k=(k1+k2)/2.0;
	y1=y0+k;
	L=(L1+L2)/2.0;
	z1=z0+L;
	x0=x0+h;
	y0=y1;
	z0=z1;
	fprintf('The value of y(%f)= %f\n',x0,y0);
	fprintf('The value of z(%f)= %f\n',x0,z0);
end
