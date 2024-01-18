function ps4q1b % Finds the roots of function f1b (f(x) = sin(1/x)
                % in the interval pi/50 <= x <= pi/3
                % by using the bisection method (calls 'bisect')

% ID: 1517982, Alejandro Salazar
% Solution to question 1b, problem set 4

% Define tolerance on x and f
tolx = 1.e-15;
tolf = 1.e-15;

% Take a look at the plot
%x = linspace(pi/50,pi/3,1000);
%y = f1b(x);
%plot(x,y);

% Get first root
xb = [0.06283,0.06973]; % Bracketing containing root
x_root1 = bisect('f1b',xb,tolx,tolf); % First root found using function 'bisect'

% Get the second root
xb = [0.07367,0.08648];
x_root2 = bisect('f1b',xb,tolx,tolf); % Second root

% Get the third root
xb = [0.09436,0.122];
x_root3 = bisect('f1b',xb,tolx,tolf); % Third root

% Get the fourth root
xb = [0.1259,0.2];
x_root4 = bisect('f1b',xb,tolx,tolf); % Fourth root

% Get fifth root
xb = [0.3052,0.3437];
x_root5 = bisect('f1b',xb,tolx,tolf);


% Print out of answer
fprintf('The 1st root is %15.8e \n', x_root1)
fprintf('The 2nd root is %15.8e \n', x_root2)
fprintf('The 3rd root is %15.8e \n', x_root3)
fprintf('The 4th root is %15.8e \n', x_root4)
fprintf('The 5th root is %15.8e \n', x_root5)


end

