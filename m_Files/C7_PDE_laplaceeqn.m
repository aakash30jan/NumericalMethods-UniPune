%LAPLACE EQUATION
clc;
Trhs=input('\n Enter value of Trhs: ');
Tlhs=input('\n Enter value of Tlhs: ');
Tupp=input('\n Enter value of Tupp: ');
Tlow=input('\n Enter value of Tlow: ');
a= [4 -1 -1 0;
    -1 4 0 -1;
    -1 0 4 -1;
    0 -1 -1 4];
b(1,1)=Tlhs+Tupp;
b(2,1)=Tupp+Trhs;
b(3,1)=Tlhs+Tlow;
b(4,1)=Tlow+Trhs;
v=linsolve(a,b);
fprintf('\nResult= \n');
for i=1:4
    fprintf('\n T%d : %0.4f',i,v(i));
end