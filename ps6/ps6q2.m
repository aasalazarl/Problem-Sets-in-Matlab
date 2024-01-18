function ps6q2 % Geneterates a linear interpolation and a
               % spline interpolation for a given set of data
               % Calls function 'newlineterp.m' and built-in 
               % 'spline'

% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 2, problem set 6

% Data points
x = -3:0.6:3.0;
y = [0.2545 0.4193 0.7784 1.4480 1.5894 1.3715 2.5612 4.9576 1.5744 0.6154 0.3253]';
xhat = [ ];
yhat_linterp = [ ];
yhat_splinterp = [ ];

% Generate xhat points
    % To be used in both linear and cubic spline interpolations
for i = 1:1:(numel(x)-1)
    v = linspace(x(i),x(i+1),100);
    xhat = [xhat v];    

end

% Generate yhat_linterp for linear interpolation
% and yhat_splinterp for cublic spline ('not-a-knot' end) interpolation
for i = 1:1:(numel(xhat))
    % Linear interpolation
        % Calls function 'newlinterp.m'
    v1 = newlinterp(x,y,xhat(i)); % Genetare vector to store values of yhat_linterp in a single matrix
    yhat_linterp = [yhat_linterp v1];
    
    % Cubic spline interpolation ('not-a-knot' end)
        % Calls built-in function 'spline'
    v2 = spline(x,y,xhat(i)); % Generate vector to store values of yhat_slpinterp in a single matrix
    yhat_splinterp = [yhat_splinterp v2];

end

% Plot the data points and interpolations
plot(x,y,'ok',xhat,yhat_linterp,'-b',xhat,yhat_splinterp,'-r')
xlabel('x')
ylabel('y')
legend('Data points','Linear interpolation','Cubic spline interpolation','location','best')
title('Cubic-spline and linear interpolations for 11 data points')

end

