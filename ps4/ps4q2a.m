function ps4q2a % Finds the roots of the function f2a (sin(x^2) + x^2 - 2x = 0.09)
                % in the interval -1 <= x <= 3
                % by using newton's method (calls 'netwon')

% Define tolerance on x and f
tolx = 1.e-15;
tolf = 1.e-15;

% Take a look at the plot
%x = linspace(-1,3,100);
%f = f2a(x);
%plot(x,f)

% Get first root
x0 = 0; % Guess
x_root1 = newton('f2a',x0,tolx,tolf); % First root found with function 'newton'

% Get the second root
x0 = 1.3;
x_root2 = newton('f2a',x0,tolx,tolf); % Second root

% Get the third root
x0 = 1.6;
x_root3 = newton('f2a',x0,tolx,tolf);

% Get the fourth root
x0 = 2.5;
x_root4 = newton('f2a',x0,tolx,tolf);

fprintf('The 1st root is %15.8e \n', x_root1)
fprintf('The 2nd root is %15.8e \n', x_root2)
fprintf('The 3rd root is %15.8e \n', x_root3)
fprintf('The 4th root is %15.8e \n', x_root4)


end

