clc
m=input("Enter number of rows:")
n=input("Enter number of columns:")
a=zeros(m,n)
b=zeros(m,n)
c=zeros(m,n)

disp("Enter the elements of matrix A:");
for i=1:m
    for j=1:n
        a(i,j)=input("");
    end;
end;

disp("Enter the elements of matrix B:");
for i=1:m
    for j=1:n
        b(i,j)=input("");
    end;
end;

for i=1:m
    for j=1:n
        c(i,j)=a(i,j)+b(i,j);
    end;
end;

disp("Matrix A:");
disp(a);
disp("Matrix B:");
disp(b);
disp("Addition Matrix C:");
disp(c);
