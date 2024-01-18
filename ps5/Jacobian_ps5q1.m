function [J, f] = Jacobian(x)% Sets the non-linear system
                                    % y = xcos(x) + (1/2)x^2
                                    % y^2 = -x^2 + 12
                                    % and its Jacobian. Called in ps5q1
                                    % Based on 'Jexample.m', by Mathieu Dumberry
% ID : 1517982, Alejandro Salazar Lobos
% Solution to question 1, problem set 5

% Initialize
n=length(x);
f = zeros(n,1); % f must be defined as a column vector
J = zeros(n,n);  

% Compute the function f
f(1) = x(1)*cos(x(1)) + (1/2)*x(1)^2 - x(2); 
f(2) = -x(1)^2 - x(2) + 12;
 
% Compute the Jacobian matrix
J = [ (x(1) + x(1)*sin(x(1)) + cos(x(1)))  -1; (-2*x(1))  -1 ];

end

