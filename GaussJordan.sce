clc

disp('Enter a 3 by 3 matrix row-wise, make sure that diagonal elements are non zero')
for i=1:3
    for j=1:3
        A(i,j)=input('..');
    end
end

disp('Entered Matrix is')
disp(A)

if det(A)==0
    disp('Matrix is singular, Inverse does not exist')
break;
end

//Taking the augmented matrix
B=[A eye(3,3)]
disp('Augumented matrix is:')
disp(B)

// Making B(1,1)=1
B(1,:) = B(1,:)/B(1,1);
//Making B(2,1) and B(3,1)=0
B(2,:) = B(2,:) - B(2,1)*B(1,:);
B(3,:) = B(3,:) - B(3,1)*B(1,:);
//Making B(2,2)=1 and B(1,2), B(3,2)=0
B(2,:) = B(2,:)/B(2,2);
B(1,:) = B(1,:) - B(1,2)*B(2,:);
B(3,:) = B(3,:) - B(3,2)*B(2,:);
//Making B(3,3)=1 and B(1,3), B(2,3)=0
B(3,:) = B(3,:)/B(3,3);
B(1,:) = B(1,:) - B(1,3)*B(3,:);
B(2,:) = B(2,:) - B(2,3)*B(3,:);

disp('Augumented matrix after row operations is:')
disp(B)
B(:,1:3)=[ ]

disp('Inverse of the Matrix is')
disp(B)
