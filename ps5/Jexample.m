function [J,f] = Jexample(x,alpha,bbeta,sigma,tau )
%  computes the Jacobian and function evaluation for 
%  example 8.13 of the textbook
% 
% input x = variable x (2 element vector)
%       alpha = parameter
%       bbeta = parameter
%       sigma = parameter
%       tau = parameter
% output f = function evaluation (2 function)
%        J = Jacobian matrix of derivatives

% initialize
n=length(x);
f = zeros(n,1); % f must be defined as a column vector
J = zeros(n,n);  

% compute the function f
 f(1) = alpha*x(1) - x(2) + bbeta;
 f(2) = x(1)^2 + sigma*x(1) - x(2) + tau;
 
% compute the Jacobian matrix
 J = [ alpha  -1; (2*x(1)+sigma)  -1 ];

end

