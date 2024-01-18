function demoTaylorlog(x0,dx) % Evalues tha Taylor series approximation
                              % of f(x) = ln(x) expanded about a given
                              % value of x
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 4, problem set 3

% Code based on "demoTaylor.m", by Mathieu Dumberry

% Synopsis:  demoTaylorlog
%            demoTaylorlog(x0,dx)
%
% Input:  x0 = Point about which the Taylor Series expansion is
%              made
%         dx = Size of neighborhood over which the expansion
%              is evaluated
%
%  Output:  a plot of f(x) and its Taylor Series approximations

% --- Set a default x0 and dx
if nargin < 2,  x0 = 0.9;  dx = 1.6;  end

x = linspace(x0-dx/2,x0+dx/2,20);   %  x-values at which f(x) is evaluated
fx = log(x);                        %  Exact f(x); notice the array operator

% --- Taylor expansion:
h = x - x0;                         %  Avoid recomputing intermediate values
p0x = log(x0);                          % Zero-order Taylor polynomial
p1x = p0x + (x0^(-1)).*h;               % First-order Taylor polynomial
p2x = p1x -((x0^(-2)).*h.^2)./factorial(2); % Second-order
p3x = p2x +((2*x0^(-3)).*h.^3)./factorial(3); % Third-order


plot(x,fx,'-',x,p1x,'o-',x,p2x,'^-',x,p3x,'s-');
legend('exact  ','P_1(x)','P_2(x)','P_3(x)','Location','BEST');
xlabel('x');    ylabel('Approximations to f(x) = ln(x)');

end

