clc;

deff('y=f(x)','y=x^3+x^2-3*x-3') 
a =input('Enter initial interval value: ');
b =input('Enter ﬁnal interval value: ');

fa = f(a);
fb = f(b);
if sign(fa) == sign(fb)
    disp('f must have diﬀerent signs at the endpoints a and b')
    error
end

e=input(' Answer correct upto : ');
iter=0;
printf('Iteration \t a \t\t b \t \t root \t \t f(root)\n')
while abs(a-b)>2*e
    root = (a + b)/2
    printf(' %i\t\t %f \t %f \t %f \t %f \n' ,iter,a,b,root,f(root)) 
    if (root)*f(a) > 0
        a = root
    else
        b = root
    end
    iter=iter+1
end

printf("\n\n The solution of given equation is %f after %i iterations", root,iter-1)
