% EULER METHOD
clc;
s=input('Enter the equation dy/dx: ','s');
f=inline(s);
x0=input('Enter the value of x0: ');
y0=input('Enter the value of y0: ');
xg=input('Enter the value of xg: ');
h=input('Enter the value of stepsize h: ');
acc=input('Enter accuracy: ');
n=(xg-x0)/h;
for i=1:n
    yg=y0+h*f(x0,y0);
	ygg=y0+h/2*(f(x0,y0)+f(x0+h,yg));
	while abs(ygg-yg)>acc
		yg=ygg;
		ygg=y0+h/2*(f(x0,y0)+f(x0+h,yg));
	end
    x0=x0+h;
    y0=yg;
    fprintf('The value of y(%f): %f\n',x0,yg);
end
