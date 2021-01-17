clc 
clear 


p(1) = 1; %P0
i = 1;
%Newtons Method
while i < 10
    %the next value P1 is equal to the previous entry subtracted from the
    % (previous entrie's value plugged into the function / derivative of
    % the function with the previous entried value plugged in 
    p(i+1)= p(i) - (p(i)^3 - p(i)-1)/((3*(p(i)^2)-1));
        
        if abs( p(i+1) - p(i)) < .0001 %Checks to see if the difference between
                                        %the values in 2 iterations is less
                                        %than 10^-4. If it is break,
                                        %otherwise continue 
            break
        end
        
    i = i + 1; %Increment
end


%Secant Method

q(1) = 1; %P0
q(2) = 2; %P1

j = 2; %iteration starts at 2 

while j < 10
    %the next value is equal to the current value subtracted from function
    %with (q(j) plugged in the function times q(j)-q(j-1)) finally divided by the
    %difference of q(j) in the function and q(j-1) in the function. 
    q(j+1) = q(j) - ((q(j)^3 - q(j)-1) * (q(j)-(q(j-1)))/(((q(j)^3 - q(j)-1))-((q(j-1)^3 - q(j-1)-1))));
    
    if abs( q(j+1) - q(j)) < .0001 %Checks to see if the difference between
                                    %the values in 2 iterations is less
                                    %than 10^-4. If it is break,
                                    %otherwise continue
            break
    end
        
    j = j + 1; %Increment 
    
end

%Fixed iteration method
pp(1) = 1; %P0
k = 1; %Iteration starts at 1

while k < 10
    %the next value is equal to the square root of 1 + 1/previous value
    pp(k+1) = sqrt(1+1/(pp(k)))
    
    if abs( pp(k+1) - pp(k)) < .0001    %Checks to see if the difference between
                                        %the values in 2 iterations is less
                                        %than 10^-4. If it is break,
                                        %otherwise continue
            break
    end
        
    k = k + 1; %Increment 
    
end

%Diplays the values frmo Newton's Method
fprintf('Newton Method %d\n',i);

display([p']);

%Diplays the values from the Secant Method
fprintf('Secant Method %d\n',j);

display([q']);

%Diplays the values from the Fixed Point Iteration Method
fprintf('Fixed Point Iteration Method %d\n',k);

display([pp']);