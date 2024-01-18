function p = hornerv(b,x) % Creates a vector with the values of a polynomial
                          % degree numel(b) evaluated at different values
                          % of x
% ID: 1517982, Alejandro Salazar
% Solution to question 3, problem set 2   

 n = numel(b); % Find number of entries in vector b
 m = numel(x); % Find number of entries in vector x
 p = []; % Create vector of evaluated polynomials at x
 
 for i = 1:1:m
    v = b(n); % Set the final entry of the polynomial
    for j = n-1:-1:1
        v = v*x(i) + b(j); % Value of the polynomial evaluated at x
    end
    u = [p v]; % Create a vector that stores the values of v at different x's
    p = u; % Set p equal to the value of 
 end

end

