function ps5q2 % Finds the roots of 
               % the non-linear system of equations 
               % in Jacobian_ps5q2
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 2, problem set 5

% Take a look at the graph
%x = linspace(-6,5);
%y2 = linspace(-5,5);
%y1 = x.^2 + x - 20;
%x1 = y2.^2 - 12;
%plot(x,y1,x1,y2)

% Get 1st root
x_root1 = newtonSys('Jacobian_ps5q2', [-5.279, -5.278]');

% Get 2nd root
x_root2 = newtonSys('Jacobian_ps5q2', [-4.68865, -4.68855]');

% Get 3rd root
x_root3 = newtonSys('Jacobian_ps5q2', [3.53817, 3.538175]);

% Get 4th root
x_root4 = newtonSys('Jacobian_ps5q2', [4.429668, 4.429669]);

% Print out the answer
fprintf('The first root is \n')
fprintf('x = %15.12f\n', x_root1(1))
fprintf('y = %15.12f\n', x_root1(2))
fprintf('The second root is \n')
fprintf('x = %15.12f\n', x_root2(1))
fprintf('y = %15.12f\n', x_root2(2))
fprintf('The third root is \n')
fprintf('x = %15.12f\n', x_root3(1))
fprintf('y = %15.12f\n', x_root3(2))
fprintf('The fourth root is \n')
fprintf('x = %15.12f\n', x_root4(1))
fprintf('y = %15.12f\n', x_root4(2))

end

