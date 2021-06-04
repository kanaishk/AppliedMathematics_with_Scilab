clc
m=input("Enter number of rows for A:")
n=input("Enter number of columns for A:")
a=zeros(m,n)
disp("Enter the elements of matrix A:");
for i=1:m
    for j=1:n
        a(i,j)=input("");
    end;
end;

o=input("Enter number of rows for B:")
p=input("Enter number of columns for B:")
b=zeros(o,p)
disp("Enter the elements of matrix B:");
for i=1:o
    for j=1:p
        b(i,j)=input("");
    end;
end;

disp("Matrix A:");
disp(a);
disp("Matrix B:");
disp(b);

if n==o then
    c=zeros(m,p)
    for i=1:m
        for j=1:p
            for k=1:n
                c(i,j)=c(i,j)+a(i,k)*b(k,j);
            end;
        end;
    end;
    disp("Multiplication Matrix C:");
    disp(c);
else 
    disp("Matrix cannot be multiplied");
end;
