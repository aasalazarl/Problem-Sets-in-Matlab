function [p,pp] = hornerDer(b,x) % Creates a vector for the values of:
                                 % (p) A polynomial degree numel(b)
                                 % evaluated at different values of x
                                 % (pp) The derivative of a polynomial
                                 % degree numel(b) evualted at different
                                 % values of x
% ID: 1517982, Alejandro Salazar
% Solution to question 4, problem set 2

 n = numel(b); % Find the number of entries in vector b
 m = numel(x); % Find the number of entries in vector x
 p = []; % Create the vector of polynomial values
 pp = []; % Create the vector of the values of the first derivative of the polynomial
 
 for i = 1:1:m
    v1 = b(n); % Set the final entry of the polynomial
    v2 = (n-1)*b(n); % Set the final entry of the first derivative of v1
    for j = n-1:-1:1
        v1 = v1*x(i) + b(j); % Value of the polynomial evaluated at x
        v2 = v2*x(i)+ (j-1)*b(j); % Value of the first derivative of the polynomial v1 evaluated at x
    end
    u1 = [p v1]; % Create a vector that stores the values of v1 at different x's
    p = u1;
    u2 = [pp v2]; % Create a vector that stores the values v2 at different x's
    pp = u2;
 end
 
end

