function ps5q6b % Performs unweighted and weighted fits
                % of the data in file 'earthquake.dat'
                % Calls functions 'linefit.m' for unweighted fit
                % and 'linefiterr.m' for weighted fit
                % Data file and functions were provided on eclass
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 6b, problem set 5

% Import data
% Import data
filename = 'earthquake.dat';
delimiterIn = ' ';
data = importdata(filename,delimiterIn);

% Set variables
    % x = Horizontal distance (km)
    % y1 = Depth (km)
    % s = error (sigma) (km)
x = data(:,1);
y1 = data(:,2);
s = y1./20;

% Perform unweighted linear fit (least-squares)
    % Call function 'linefit.m'
[a,norm_r] = linefit(x,y1);

    % Set equation of best fit line (unweighted)
y2 = a(1).*x + a(2);

% Perform weighted linear fit (least-squares)
    % Call function 'linefiterr.m'
[b,norm_r] = linefiterr(x,y1,s);
    % Print fit results
fprintf('Weighted linear fit results: \n')
fprintf('slope (weighted) = %g \n',b(1))
fprintf('y-intercept (weighted) = %g km \n',b(2))
    % Set equation of best fit (weighted)
y3 = b(1).*x + b(2);

% Plot data points and unweighted and weighted fits
figure(1)
errorbar(x,y1,s,'o')
hold on
plot(x,y2,x,y3)
xlabel('Horizontal distance (km)')
ylabel('Depth (km)')
legend('Data points (earthquake)','Unweighted fit y = 0.314x + 8.06','Weighted fit y = 0.313x + 6.23','location','best')
hold off

end

