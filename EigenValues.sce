disp('Enter the 2 by 2 Matrix row-wise')
for i=1:2
    for j=1:2
        A(i,j)=input('.');
    end
end

b=A(1,1)+A(2,2);
c=A(1,1)*A(2,2)-A(1,2)*A(2,1);

e1 = (b + sqrt(b^2 - 4*c))/2;
e2 = (b - sqrt(b^2 - 4*c))/2;

if A(1, 2) ==0
    X1 = [A(1,2); e1-A(1,1)];
    X2 = [A(1,2); e2-A(1,1)];
elseif A(2, 1) ==0
    X1 = [e1-A(2,2); A(2,1)];
    X2 = [e2-A(2,2); A(2,1)];
else
    X1 = [1; 0];
    X2 = [0; 1];
end

disp('First Eigen value is:');
disp(e1)
disp('First Eigen vector is:');
disp (X1)
disp('Second Eigen value is:');
disp(e2)
disp('Second Eigen vector is:');
disp (X2)
