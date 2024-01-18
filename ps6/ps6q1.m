function ps6q1 % Generates a linear interpolation for a given
               % set of data
               % Calls function 'newlinterp.m'

% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 1, problem set 6

% Data points
x = -3:0.6:3.0;
y = [0.2545 0.4193 0.7784 1.4480 1.5894 1.3715 2.5612 4.9576 1.5744 0.6154 0.3253]';
xhat = [ ];
yhat = [ ];

% Generate xhat points
for i = 1:1:(numel(x)-1)
    v = linspace(x(i),x(i+1),100);
    xhat = [xhat v];    
    
end

% Generate yhat points
    % Calls 'newlinterp.m'
for i = 1:1:(numel(xhat))
    v = newlinterp(x,y,xhat(i));
    yhat = [yhat v];
    
end

% Generate plot of data points and interpolation
plot(x,y,'ok',xhat,yhat,'-b')
xlabel('x')
ylabel('y')
legend('Data points','Linear interpolation','location','best')
title('Linear interpolation for 11 data points')

end

