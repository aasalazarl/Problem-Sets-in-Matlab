function ps5q3 % Performs a least-square linear fit
               % by calling the function 'linefit.m', provided on eclass
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 3, problem set 5

% Data points
x = 0:10:50;
y1 = [1276.03, 1270.11, 1264.02, 1258.09, 1252.01, 1244.96];

[c, norm_r] = linefit(x,y1);

% Regression line
y2 = c(1).*x + c(2);

% Plot the data points and regression line
plot(x,y1,'o',x,y2)
xlabel('Temperature (in degrees Celsius)')
ylabel('Density \rho in kg/m^3')
legend('Data points', 'Regression line y = -0.62x + 1276.27','location','best')

% Print coefficients of best fit
fprintf('Coefficients of linear fit: \n')
fprintf('c1(slope) = %g \n', c(1))
fprintf('c2(y-intercept) = %g \n', c(2))

end

