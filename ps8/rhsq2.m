function dydt = rhsq2(t,y)  % Used in ps8q2
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 2, problem set 8

% ODE
dydt = 2*y - ((y^2)/10);

% Analytical solution: y(t) = 20/(1 + 19exp(-2t))


end

