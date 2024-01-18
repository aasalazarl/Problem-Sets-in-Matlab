function plotDataAve
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 7, problem set 2

% plotDataAve is based on function myplotData, by Mathieu Dumberry

% Plot data (x,y) from an external file and add data points from a
% function "t" that uses the values of "x" in the external file

data = load('xy.dat');    % Load contents of file into data matrix  

x = data(:,1);         % x and y are in first two columns of data
y = data(:,2);
t = pi*(sin(x) + cos(x)); % Create data points for function "t" with "x" values from xy.dat file
y_ave = linspace(mean(y),mean(y),numel(x)); % Calculate the average "y" value of xy.dat file
plot(x,y,'o blue',x,t,'- red',x,y_ave,'-- black');
legend('xy, y = t + noise','xt, t = \pi(sin(x)+cos(x))','average y value = 0.8698','location','Best');
xlabel('0 ≤ x ≤ 5\pi');
ylabel('y-axis');

% Save data to external file
plotDataAve_out = [x,y,t];
save plotDataAve_out.dat plotDataAve_out -ascii  % for a readable ascii file
save plotDataAve_out.mat plotDataAve_out % for a binary file
end

