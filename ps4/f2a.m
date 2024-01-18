function [f,fder] = f2a(x)
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 2a, problem set 4

% Set function
f = sin(x.^(2))+x.^(2)-2.*x-0.09;

% Derivative of function f
fder = 2.*x.*cos(x.^(2))+2.*x-2;

end

