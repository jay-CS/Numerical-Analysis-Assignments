clc;

%the amount to increment step by 
h=0.2;

%Array of the step sizes
step = zeros(1,6);

%Array of the exact solutions
exact=zeros(1, 6);

%Array of the approximate solutions
approx=zeros(1, 6);

%Array of the error solutions
error=zeros(1, 6);

%First value in step size is 2 where the range begins
step(1)=2;

%Function handler for solving exact solution
%This is the solution to ODE
sol = @(t) (t + (1/(1-t)));


%Populates array of the step sizes where each value is different by .2
for i=2:n

    step(i)=step(i-1)+h;

end

%First two value are the same as the exact solution, w0,w1 values
approx(1) = sol(2);
approx(2) = sol(2.2);

%Populate the exact solution array
for j=1:n

    exact(j)=sol(step(j));

end

%Hardcoding values for w2, and w3 are being hardcoded
approx(3) = 1.70;
approx(4) = 1.97255;

fprintf('ti\t\t     Adams-Bashforth\t\t \tError\n');

for k=5:n
    
    %Adams-Bashforth Four step formula
    approx(k)= approx(k-1) + (h/24)*( 55*(1+power(t(k-1)-approx(k-1), 2)) - 59*(1+power(t(k-2)-approx(k-2), 2)) + 37*(1+power(t(k-3)-approx(k-3), 2)) - 9*(1+power(t(k-4)-approx(k-4), 2)) );

end

for l=1:n
    %Calculate absolute difference by subtracting exact from the
    %approximate
    error(l)=abs(exact(l)-approx(l));
    %Display the results 
    fprintf('%f\t\t%f\t\t\t%f\n',t(l),approx(l),error(l));
    fprintf("\n");
    
end
