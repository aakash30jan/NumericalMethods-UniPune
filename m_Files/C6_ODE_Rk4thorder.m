%RK4th Order
clc;
s=input('Enter the equation dy/dx: ','s');
f=inline(s);
x0=input('Enter the value of x0: ');
y0=input('Enter the value of y0: ');
xg=input('Enter the value of xg: ');
h=input('Enter the value of stepsize h: ');
n=(xg-x0)/h;
for i=1:n
    k1=h*f(x0,y0);
    k2=h*f(x0+(h/2),y0+(k1/2));
    k3=h*f(x0+(h/2),y0+(k2/2));
    k4=h*f(x0+h,y0+k3);
    k=(k1+2*k2+2*k3+k4)/6;
    yg=y0+k;
    x0=x0+h;
    y0=yg;
    fprintf('The value of y(%f): %f\n',x0,yg);
end
