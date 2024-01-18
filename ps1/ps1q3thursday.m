function ps1q3thursday
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 3, problem set 1

x = linspace(-pi,pi,11)'; % Creates column vector w/ 11 values from -pi to pi, equally spaced
%x = x'; % Column vector
alpha = 0.2:0.2:1.0; % Set values of alpha
colnumber = 1; % Variable to extract the element from a in function for k = 1:length(alpha)
M = [x]; % Set matrix to be used as a table

for k = 1:length(alpha)
    y = sinh(x * alpha(1,colnumber)); % Set the function. Multiply the elemnts of x by alpha
    A = [M y]; % Create a matrix A as a concatenation of M and y
    
    % The following function stores A into M. If all elements of a have
    % been evaluated, the matrix is displayed in Command Window
    if colnumber == 5
        M = A
    else
        M = A;
    end
    
    colnumber = colnumber + 1; % Increase the column number by 1, in order to extract element
                               % n + 1 from alpha in the next loop
end

