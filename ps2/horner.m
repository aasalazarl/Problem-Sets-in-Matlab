function [p] = horner(b,x) % Horner function to evaluate polynomials
% ID: 1517982, Alejandro Salazar
% Solution to question 2, problem set 2

 n = numel(b); % Find the number of entries in vector b
 p = b(n); % Set the final entry value of the polynomial
 
 for k = n-1:-1:1
         p = p*x + b(k);
 end
 
end