clc;

deff('y=f(x)','y=x^3+x^2-3*x-3') 
deff('y=df(x)','y=3*x^2+2*x-3') 
x(1)=input('Enter Initial Guess:');
e= input("Answer correct upto : ");

for i = 1 : 100
    x(i+1)=x(i)-f(x(i))/df(x(i));
    err(i)=abs((x(i+1)-x(i))/x(i));
    if err(i) < e
        break;
    end
end

printf('The solution is %f',x(i))
