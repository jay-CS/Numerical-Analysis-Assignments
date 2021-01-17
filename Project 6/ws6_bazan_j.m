function [ ] = Three_points( )

clc 
clear

syms 'x' 

f(x) = 1/(x^2); %Given function

f_1p(x) = diff(f(x)); %first derivative of function 

f_3p(x) = diff(diff(f_1p(x))); %second derivative of the function

x_0 = 1.2; %initial x value

h_1 = .05; %intial h value

disp('h = .05');

%Derivative approximation 

f_p_1_2_h1 = (1 / ( 2* h_1)) * ((-3 * f(x_0)) + (4 * f(x_0 + h_1)) - (f(x_0 + (2*h_1)))); 

fprintf('The derivative approximation at 1.2 is %.6f\n', f_p_1_2_h1); %Display approximation 



if abs(f_3p(1.2)) > abs(f_3p(1.2 + 2 * h_1))
    
    xi = 1.2;
    
else xi = 1.2 + 2 * h_1;

end

E_h1 = abs((h_1^2 / 3) * f_3p(xi)); %Truncation Error

fprintf('The truncation error is %.6f\n', E_h1);

Abs_E_h1 = abs(f_1p(1.2) - f_p_1_2_h1); %Absolute Error

fprintf('The absolute error is %.6f\n', Abs_E_h1);

%%%%%%%2

h_2 = .1; %second value of h

%display values

fprintf('\n');  

disp('h = .1') 

%Derivative approximation 

f_p_1_2_h2 = (1 / ( 2* h_2)) * ((-3 * f(x_0)) + (4 * f(x_0 + h_2)) - (f(x_0 + (2*h_2))));

fprintf('The derivative approximation at 1.2 is %.6f\n', f_p_1_2_h2); %display approximation 

if abs(f_3p(1.2)) > abs(f_3p(1.2 + 2 * h_2))
    
    xi = 1.2;
    
else xi = 1.2 + 2 * h_2;

end

E_h2 = abs((h_2^2 / 3) * f_3p(xi)); %Truncation Error

fprintf('The truncation error is %.6f\n', E_h2); %display truncation error

Abs_E_h2 = abs(f_1p(1.2) - f_p_1_2_h2); %Absolute Error

fprintf('The absolute error is %.6f\n', Abs_E_h2); %display absolute error

%%%%%%%%%%% 3

fprintf('\n');

h_3 = .2; %third value of h

disp('h = .2')

%derivative approximation 

f_p_1_2_h3 = (1 / ( 2* h_3)) * ((-3 * f(x_0)) + (4 * f(x_0 + h_3)) - (f(x_0 + (2*h_3))));

fprintf('The derivative approximation at 1.2 is %.6f\n', f_p_1_2_h3); %display approximation 


if abs(f_3p(1.2)) > abs(f_3p(1.2 + 2 * h_3))
    
    xi = 1.2;
    
else xi = 1.2 + 2 * h_3;

end

E_h3 = abs((h_3^2 / 3) * f_3p(xi)); %Truncation Error

fprintf('The truncation error is %.6f\n', E_h3); %display truncation error

Abs_E_h3 = abs(f_1p(1.2) - f_p_1_2_h3); %Aboslute Error 

fprintf('The absolute error is %.6f\n', Abs_E_h3); %display truncation error


%%%%%%%%%%% 4

fprintf('\n');

h_4 = .4; %fourth value of h

disp('h = .4')

%derivative approximation 

f_p_1_2_h4 = (1 / ( 2* h_4)) * ((-3 * f(x_0)) + (4 * f(x_0 + h_4)) - (f(x_0 + (2*h_4))));

fprintf('The derivative approximation at 1.2 is %.6f\n', f_p_1_2_h4); %display approximation



if abs(f_3p(1.2)) > abs(f_3p(1.2 + 2 * h_4))
    
    xi = 1.2;
    
else xi = 1.2 + 2 * h_4;

end

E_h4 = abs((h_4^2 / 3) * f_3p(xi)); %Truncation Error

fprintf('The truncation error is %.6f\n', E_h4); %display truncation error

Abs_E_h4 = abs(f_1p(1.2) - f_p_1_2_h4); %Absolute Error 

fprintf('The absolute error is %.6f\n', Abs_E_h4); %display absolute error






