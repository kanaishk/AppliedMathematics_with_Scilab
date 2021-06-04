clc
m=input("Enter number of rows:")
n=input("Enter number of columns:")
a=zeros(m,n)
b=zeros(n,m)

disp("Enter the elements of matrix A:");
for i=1:m
    for j=1:n
        a(i,j)=input("");
    end;
end;

for i=1:m
    for j=1:n
        b(j,i)=a(i,j);
    end;
end;

disp("Matrix A:");
disp(a);
disp("Transpose Matrix B:");
disp(b);
