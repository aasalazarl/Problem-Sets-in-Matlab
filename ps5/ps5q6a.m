function ps5q6a % Performs a least-squares fit
                % of the data in file 'earthquake.dat'
                % using the function 'linefit.m'
                % Both dat. and function were provided on eclass
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 6a, problem set 5

% Import data
filename = 'earthquake.dat';
delimiterIn = ' ';
data = importdata(filename,delimiterIn);

% Set variables
    % x = Horizontal distance (km)
    % y1 = Depth (km)
x = data(:,1);
y1 = data(:,2);

% Perform the linear fit (least-squares)
    % Call function 'linefit.m'
[c,norm_r] = linefit(x,y1);

% Set equation of best fit line
y2 = c(1).*x + c(2);

% Plot the data points and the best fit regression line
plot(x,y1,'o',x,y2)
xlabel('Horizontal distance (km)')
ylabel('Depth (km)')
legend('Data points (eartquake)', 'Least-squares fit y = 0.31x + 8.06','location','SouthEast')

% Print fit results
fprintf('slope = %g \n',c(1))
fprintf('y-intercept = %g km \n', c(2))

end

