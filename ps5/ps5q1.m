function ps5q1 % Finds the roots of 
               % the non-linear system of equations 
               % in Jacobian_ps5q1
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 1, problem set 5

% Take a look at the graph of the functions
%x = linspace(-10,10);
%y1 = x.*cos(x) + (1/2).*x.^2;
%y2 = -x.^2 + 12;
%plot(x,y1,x,y2)

% Get 1st root
x_root1 = newtonSys('Jacobian_ps5q1', [-3.5,0]);

% Get 2nd root
x_root2 = newtonSys('Jacobian_ps5q1', [0,3.5]');

% Print out the answer
fprintf('The first root is \n')
fprintf('x = %15.12f\n', x_root1(1))
fprintf('y = %15.12f\n', x_root1(2))

fprintf('The second root is \n')
fprintf('x = %15.12f\n', x_root2(1))
fprintf('y = %15.12f\n', x_root2(2))

end

