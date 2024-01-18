function ps3q2thursday
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 2, problem set 3

% --- Set angles
xdeg = logspace(-12, 0, 50); % Set degrees
xrad = xdeg * (pi/180); % Convert to radians

% --- Approximation funtion and calculation of errors
s = (exp(xrad) - exp(-xrad))./2; % Hyperbolic sine with exponentials
Eabs = abs(s - sinh(xrad)); % Absolute error
Erel = abs((s - sinh(xrad))./sinh(xrad)); % Relative error

% --- Plot the graph
loglog(xrad,Eabs,'+',xrad,Erel,'v'); xlabel('x (radians)'); ylabel('Error')
legend('Absolute error', 'Relative error')


end

