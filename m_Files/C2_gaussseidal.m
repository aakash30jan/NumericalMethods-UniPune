%Program for Gauss Seidal Method
clc;
clear all;
disp('Output');
n=input('\n Enter number of equations: ');
a=input('\n Enter Problem Matrix A: ');
b=input('\n Enter Solution Matrix B: ');
m=input('\n Enter number of iterations: ');
x=zeros(n,1);
for i=1:n;
	fprintf('\t \t x(%d)',1i);
end
for itr=1:m
    for i=1:n
        s=0;
		for j=1:n
            if i~=j
                s=s+a(i,j)*x(j);
            end
        end
        x(i)=(b(i)-s)/a(i,i);
        end
        fprintf('\n iter = %d \t',itr );
        for k=1:n
            fprintf('%f \t',x(k));
        end
 end
		