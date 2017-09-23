%Program for Gauss Elimination Method
clc;
clear all;
a=input('\n Enter Problem Matrix');
b=input('\n Enter Solution Matrix');
[m,n]=size(a);
if(m~=n)
    error('\n problem Matrix must be square');
end
%pivoting
for i=1:1:n-1
    for u=i+1:1:n
        if (abs(a(u,i))>abs(a(i,i)))
            for v=1:1:n
                temp=a(i,v);
                a(i,v)=a(u,v);
                a(u,v)=temp;
            end
            temp=b(i);
            b(i)=b(u);
            b(u)=temp;
        end
        
    end
    
    % gauss elimination
    for k=i+1:1:n
        factor=a(k,i)/a(i,i);
        for j=1:1:n
            a(k,j)=a(k,j)-factor*a(i,j);
        end
        b(k)=b(k)-factor*b(i);
    end
end
%back substitution
disp('Final Augumented Matrix is: ');
disp([a,b]);
for i=n:-1:1
    temp=b(i);
    for j=i+1:1:n
        temp=temp-a(i,j)*x(j);
    end
    x(i)=temp/a(i,i);
end
disp('Answer is:');
disp(x);
