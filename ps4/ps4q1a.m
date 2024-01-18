function ps4q1a % Finds the roots of the function f1a (f(x) = cos(5x) - x)
                % in the interval -2pi <= x <= 2pi
                % by using the bisection method (calls 'bisect')

% ID: 1517982, Alejandro Salazar
% Solution to question 1a, problem set 4

% Define tolerance on x and f
tolx = 1.e-15;
tolf = 1.e-15;

% Take a look at the plot
%x = linspace(-2*pi,2*pi,100);
%y = f1a(x);
%plot(x,y)

% Get first root
xb = [-1.5,-0.5]; % Bracketing containing root
x_root1 = bisect('f1a',xb,tolx,tolf); % First root by calling function 'bisect'

% Get the second root
xb = [-0.5,0];
x_root2 = bisect('f1a',xb,tolx,tolf); % Second root

% Get the third root
xb = [0,0.5];
x_root3 = bisect('f1a',xb,tolx,tolf); % Third root


% Print out of answer
fprintf('The 1st root is %15.8e \n', x_root1)
fprintf('The 2nd root is %15.8e \n', x_root2)
fprintf('The 3rd root is %15.8e \n', x_root3)


end

