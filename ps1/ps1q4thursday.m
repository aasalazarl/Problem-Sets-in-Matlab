function ps1q4thursday
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 4, problem set 1

x = linspace(-pi,pi,100)'; % Creates column vector w/ 100 values from -pi to pi, equally spaced
%x = x'; % Column vector
alpha = 0.2:0.2:1.0; % Set values of alpha = a
colnumber = 1; % Variable to extract the element from a in function for k = 1:length(a)
Y = []; % Create the matrix to be filled with values of y = sinh(ax)

for k = 1:length(alpha)
    y = sinh(x * alpha(1,colnumber)); % Set the function. Multiply the elemnts of x by a\
    A = [Y y]; % Create a matrix A as a concatenation of Y and y
    
    % The following function stores A into Y. If all elements of a have
    % been evaluated, the matrix is displayed in Command Window
    if colnumber == 5
        Y = A;
        plot(x,Y); % Plots matrix Y vs vector x
        legend('alpha = 0.2','alpha = 0.4','alpha = 0.6','alpha = 0.8','alpha = 1','location','Best') % Add legend
        xlabel('-\pi ≤ x ≤ \pi') % Add label on x-axis
        ylabel('y = sinh(\alphax)') % Add label on y-axis
    else
        Y = A;
    end
     colnumber = colnumber + 1; % Increase the column number by 1, in order to extract element
                               % n + 1 from alpha in the next loop
end

