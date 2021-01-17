function b = ws1_bazan_j(a,b,N,tol)
for i =1:N
    
    g(i) = b; %f(b)
    f(i) = a; %f(a)
    m(i) = (a+b)/2; % calculates the midpoint
    y(i) = m(i)^3-m(i)-1; % f(y(i)), 

    if y(i) < 0 % if f(y(i)) is less than 0 swap m(i) with a
        a = m(i);

    else % if (y(i)) is greater than 0 swap m(i) with b
        b = m(i);
    end
    
    if abs(y(i)) <  tol %Checks to see if y(i) is less than the tolerance
        break
    end
end
display([f' g' m' y']) % diplays the output of each array 



