clc;

n = input('Enter the no. of pairs of values (x,y):')
disp('Enter the values of x:')
for i=1:n
    x(i)=input('..')
end

disp('Enter the corresponding values of y:')
for i=1:n
    y(i)=input('..')
end

sumx=0; sumx2=0; sumy=0; sumxy=0
for i=1:n
    sumx = sumx+x(i);
    sumx2 = sumx2+x(i)*x(i);
    sumy = sumy+y(i);
    sumxy = sumxy+x(i)*y(i);
end

A=[sumx n; sumx2 sumx];
B=[sumy;sumxy];
C=inv(A)*B

printf("The line of best fit is y =(%g)x+(%g)",C(1,1),C(2,1))
