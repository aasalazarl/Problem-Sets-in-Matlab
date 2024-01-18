function ps5q5 % Performs a curve fit by finding the
               % fit coefficients through linearization techniques
               % Calls function 'linefit.m', provided on eclass
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 5, problem set 5

% Data points
x1 = 1.0000:1.5000:7.0000;
y1 = [2.2851,1.4176,0.8794,0.5455,0.3384];

% Call expFit to obtain the coefficients of best fit
c = expFit(x1,y1);

% Print coefficients of best fit
fprintf('Coefficients of best fit: \n')
fprintf('c1 = %g \n', c(1))
fprintf('c2 = %g \n', c(2))

% Plot the data points and the best fit
    % Best fit
x2 = linspace(0,8,100);
y2 = c(1) * exp(c(2) .* x2);

plot(x1,y1,'o',x2,y2)
xlabel('x')
ylabel('y')
legend('Data points', 'Best fit curve y = 3.14169e^{-0.318326x}', 'location', 'best')

end

