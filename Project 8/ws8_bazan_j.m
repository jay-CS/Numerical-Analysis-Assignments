clc 
clear 
%This program uses function hadnlers to simplify things
%i.e. @(x,y,...,n) which are inputs for a given equation and solves it
%It does not store them like an array, jsut calculates on the go 
syms y(t)
ode = diff(y,t) == t*y
ySol(t) = dsolve(ode)


%This is the solution to the differential equation  
y = @(t) ((1/25) *exp(-2*t)) + ((1/25) * (exp(3*t) * ((5 * t) - 1)));

%This is the initial ODE with a function handler
yp = @(t,y) t*exp(3*t) - 2*y;

%This is the second derivative of the differntial equation
ypp = @(t,y) exp(3*t) + 3*t*exp(3*t) - 2*yp(t,y);

%Intial value condition for differntial equation 
y0 = 0;

%Creates an array with values from 0 - 20 (inclusive)
%Each value is spaced equally since the step value is 
%h = .1 and the range of t is 0<=t<=2
t = 0 : 0.1 : 2;


fprintf('ti\t\tTaylors Method with 2nd Order\t\tError\n');

%Iterates through every possile value t can have in the array above
for i=1:length(t)-1
    
    
    %Finds the taylor 2 seconds expansion by plugging in 
    %the t(i) values and y
    f = y0 + .1 *(yp(t(i),y0)) + ((0.1^2)/2) * (ypp(t(i),y0));
    
    %Subtracts the taylor approximation from the ODE solution
    %at a step higher to see the absolute difference
    error = abs(y(t(i+1))- f);
    
    %Displays the step value, and the approximations solution and the error 
    fprintf('%f\t\t%f\t\t\t%f\n',t(i+1),f,error);
    
    fprintf("\n");
    
    %updates y0 so that at next iteration is the y0 going in, is the value
    %of the previous function w(i+1) = (wi) + ....
  
    y0 = f;

end