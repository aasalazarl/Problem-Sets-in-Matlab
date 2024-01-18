function ps5q4 % Least-squares fit to a linear set of functions.
               % Code based on 'demo_fit_poly.m', provided on eclass
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 4, problem set 5

% Data points
x=[1.14 5.62 0.31 2.21 3.54 2.87]';  % column vector x
y=[3.40 66.2 0.43 8.95 32.8 19.4]'; % column vector y

% Try with y = c1*x^2 + c2x + c3 (linear fit)
linefit(x,y);

% So matrix A of y=Ac is

A = [x.^2, x, ones(size(x))];

% Solve normal equations
c = (A'*A)\(A'*y);

% Plot fit and data
figure(1)
xfit = linspace(0.5,7);
yfit = c(1)*xfit.^2 + c(2)*xfit + c(3);
plot(x,y,'o',xfit,yfit,'-'); 
xlabel('x'); ylabel('y'); legend('data','fit: y = 1.7304x^2 + 2.4971x - 1.5503')

% Coefficients of best fit
a = c(1);
b = c(2);
c = c(3);

% Print coefficients of best fit
fprintf('Coefficients of best fit: \n')
fprintf('a = %g \n', a)
fprintf('b = %g \n', b)
fprintf('c = %g \n', c)

end


