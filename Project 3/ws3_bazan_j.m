clc
clear 

%Intial Value p0
p(1) = 1.0;

%iterates 10 times and generates p values 
for i = 1:10
    p(i+1) = ((2 - p(i)^4)/3)^(1/2); % equation of the function 
end

%iterates through numbers of values in inital loop above
for j = 1:(i-2)
    %uses values in p array to generate phat( using aitkens method)
    phat(j) = p(j) - ( p(j+1) - p(j) ) ^2 / ( p(j+2) - 2*p(j+1) + p(j));
end

%Diplays values for Fixed point iteration
fprintf('Fixed Point %d\n\n',i);

display([p'])

%Plots the graph with the values in the p array 
plot(p)

hold on 

%Diplays values for Aitken's method
fprintf('Aitkens Method %d\n\n',j);

display([phat'])

%Plots the graph with the values in the phat array 

plot(phat)

hold off