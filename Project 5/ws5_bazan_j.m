clear 
clc 


%Matrix A of the equation Ax= b
A = [1 0 0; 2 1 2; 0 0 1];

%Resulting Vector from multiplying A and x
b = [0; -4.5; 0];

%Values for the numbers c0, c1, c2, 
%c2 is the only non-zero number
c = A\b

%Step function, i.e. the steps between each point
h = 2;

% (0,1) (.25,1.64872) (.5,2.71828)

%Initial values for the a constants
a0 = 1; a1 = 2; a2 = 0; 

%Linear equation to get constant value of b0
b0 =  (a1 - a0)/h - h*(c(2) + 2*c(1))/3

%Linear equation to get constant value of b1
b1 =  (a2 - a1)/h - h*(c(3) + 2*c(2))/3

%Linear equation to get constant value of d0
d0 = (c(2) - c(1)) / (3*h)

%Linear equation to get constant value of d1
d1 = (c(3)-c(2))/(3*h)


