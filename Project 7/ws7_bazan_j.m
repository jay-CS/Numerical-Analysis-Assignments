clc 
clear 

%Composite simpsons rules

%initial integral values
a = 0;
b = 4;

%amount of steps in between a and b
n = 8;

%values for the equation f(x) = 2x / x^2 + 2 with each step as the x value
f = [.444444 .666666 .705882 .666666 .606060 .545454 .491228 .444444];

%the distance between each step 
h = (b-a)/n;

%initial f(a) and f(b) 
a_b = .44444;
a_a = 0;

a_summation1 = 0;
a_summation2 = 0;

i = 1;

%Sums over values in the f(x) list
% i <= n-1 becuase we want to exclude the last value f(b), and the
% constraint for one of the summations is (n/2 - 1)
while(i<=n-1)
    
    %if i is an even number then add it to the first summation that will be
    %multiplied by 2 in the end 
    if(mod(i,2)==0)
        a_summation1 = a_summation1 + f(i);
    %if i is odd then add the number in the second summation that will be
    %multiplied by 4 in the end 
    else
        a_summation2 = a_summation2 + f(i);
    end
    i = i+1;
end

%Calculates the total using the Simspons equation
total = (h/3)*(a_a + 2*a_summation1 + 4*a_summation2 + a_b);

%Displays Simpsons approximation and actual value of integral 
fprintf('The Composite Simpsons approximation is %.6f\n',total)
disp('Exact Solution is 2.1972245');



%Composite Trapezoidal Rule

%initial integral values
a = 0;
b = 4;

%amount of steps in between a and b
n = 8;

%values for the equation f(x) = 2x / x^2 + 2 with each step as the x value
f = [0 .444444 .666666 .705882 .666666 .606060 .545454 .491228 .444444];

%the distance between each step 
h = (b-a)/n;

%initial f(a) and f(b) 
a_b = .44444;
a_a = 0;

a_summation = 0;
i = 2;

%Iterates and sums values of the f(x) list excluding the first and last
%value 
while(i<=n)
    a_summation = a_summation + f(i);
    i = i+1;
end

%Calculates the total using the Simspons equation
total = h/2 * (a_a + 2*(a_summation) + a_b);

%Displays Trapezoidal approximation and actual value of integral 
fprintf('\nThe Trapezoidal approximation is %.6f\n',total)
disp('Exact Solution is 2.1972245');


