function c = parabola(x,y)
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 5, problem set 4

X = [x(1)^2 x(1) 1; x(2)^2 x(2) 1; x(3)^2 x(3) 1]; % Set the matrix
c = X\y; % Find vector of coefficients ci

end