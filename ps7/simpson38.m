function I = simpson38(fun,a,b,npanel)
% simpson    Composite Simpson's 3/8 rule
% based on function simpson.m provided on eClass
%
% Synopsis:  I = simpson38(fun,a,b,npael)
%
% Input:     fun    = (string) name of m-file that evaluates f(x)
%            a, b   = lower and upper limits of the integral
%            npanel = number of panels to use in the integration
%                     Total number of nodes = 2*npanel + 1
%
% Output:    I = approximate value of the integral from a to b of f(x)*dx

n = 3*npanel + 1;   % total number of nodes
h = (b-a)/(n-1);    % stepsize
x = a:h:b;          % divide the interval
f = feval(fun,x);   % evaluate integrand

% Composite Simpson's 3/8 rule

for i = 1:1:npanel-1
    alpha(i,1) = 3*i+1;           % Stores indices at which the function is
                                  % multiplied by 2 in the composite
                                  % solution
    beta1(i,1) = 2*f(alpha(i,1)); % Create vector beta1 with elements that
                                  % are multiplied by 2 in the composite
                                  % solution
    beta2(i,1) = 3*f(alpha(i,1)); % Create vector beta 2 with elements that
                                  % are to be multiplied by 2, but instead
                                  % multiply them by 3
end

omega = 3*sum(f(2:1:n-1)); % Sum of data points of the function evaluated
                           % at all points except the first and last ones
                           % Multiply it by 3

SUM = omega - sum(beta2) + sum(beta1); % Calculate sum of function evaluations
                                       % between the first and last points
                                       % according to composite solution

I = (3*h/8)*( f(1) + SUM + f(n) ); % Calculate the integral
%             f(a)  a<x<b  f(b)

end

