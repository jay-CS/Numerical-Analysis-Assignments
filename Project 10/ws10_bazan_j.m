% Gauss-Jordan method

clc 
clear

a = [1 1 -1 1 -1 2
    2 2 1 -1 1 4
    3 1 -3 -2 3 8
    4 1 -1 4 -5 16
    16 -1 1 -1 -1 32];


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Gauss-Jordan method
m = 5;
n = 6;
%iterates through each row in the matrix 
for j=1:m-1
    %iterates through each row in the matrix
      %if the row has a zero (pivot) then it is swapped 
    for z=2:m
        if a(j,j)==0
            t=a(1,:);
            a(1,:)=a(z,:);
            a(z,:)=t;
        end
    end
    
    %Goes through all the diagonal elements in the matrix and performs
    %arithmetics so that each entry underneath the current one is set to 0
    for i=j+1:m
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end


%Was debeugging trying to figure out what was wrong?
for j=m:-1:2
    %goes through every remaining row to make sure entries below are 0?
    % still kinda working
    for i=j-1:-1:1
        a(i,:)=a(i,:)-a(j,:)*(a(i,j)/a(j,j));
    end
end

%Goes through every diagonal that is supposed to be one and finds out the
%solution 
x = zeros(m,1);
for sol=1:m
    %goes through every row in the diagonalized matrix and find the
    %solutions to the matrix 
    a(sol,:)=a(sol,:)/a(sol,sol);
    x(sol)=a(sol,n);
end

disp('Gauss-Jordan method:');
%Goes through every row and subtracts the equation value in the augmented matrix 
%to get the correct solution 
for l = 2:m
    b = a(1,l)
    x(l) = x(l) - (a(l,1) * 13.5);
end


a
x