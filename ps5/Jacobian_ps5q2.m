function [J, f] = Jacobian_ps5q2(x) % Sets the non-linear system
                                    % y = x^2 + x - 20
                                    % y^2 = x + 12
                                    % and its Jacobian. Called in ps5q2
                                    % Based on 'Jexample.m', by Mathieu Dumberry
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 2, problem set 5

% Initialize
n=length(x);
f = zeros(n,1); % f must be defined as a column vector
J = zeros(n,n);  

% Compute the function f
f(1) = x(1)^2 + x(1) - x(2) - 20;
f(2) = x(1) - x(2)^2 + 12;
 
% Compute the Jacobian matrix
J = [ (2*x(1) + 1)  -1; 1  (-2*x(2)) ];

end

