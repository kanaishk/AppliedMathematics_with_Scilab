clc;

clear;
close;
deff('y=f(x)','y=1/(1+x^2)')
x0=0;
xn=6;
n=6;
h=(xn-x0)/n;
s=0;

for i=1:n
    s=s+f(x0+(i-1)*h)+f(x0+i*h);
end

integral=(h*s)/2;
printf('\nThe value of integral is=%g\n',integral)
