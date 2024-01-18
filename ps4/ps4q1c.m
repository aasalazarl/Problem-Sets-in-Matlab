function ps4q1c % Finds the roots of function tan(x)
                % in the interval -2pi <= x <= 2pi
                % by using the bisection method (calls 'bisect')

% ID: 1517982, Alejandro Salazar
% Solution to question 1c, problem set 4

% Define tolerance on x and f
tolx = 1.e-15;
tolf = 1.e-15;

% Take a look at the plot
%x = linspace(-2*pi,2*pi,1000);
%y = tan(x);
%plot(x,y)

% Get first root
xb = [-0.05-2*pi,-0.05-3*pi/2]; % Bracket containing root
x_root1 = bisect('tan',xb,tolx,tolf); % First root found with function 'bisect'

% Get second root
xb = [0.05-3*pi/2,-0.05-pi/2];   
x_root2 = bisect('tan',xb,tolx,tolf); % Second root

% Get third root
xb = [0.05-pi/2,-0.05+pi/2];
x_root3 = bisect('tan',xb,tolx,tolf); % Third root

% Get fourth root
xb = [0.05+pi/2,-0.05+3*pi/2];
x_root4 = bisect('tan',xb,tolx,tolf); % Fourth root

% Get fifth root
xb = [0.05+3*pi/2,+0.05+2*pi];
x_root5 = bisect('tan',xb,tolx,tolf); % Fifth root

% Print out of answer
fprintf('The 1st root is %15.8e \n', x_root1)
fprintf('The 2nd root is %15.8e \n', x_root2)
fprintf('The 3rd root is %15.8e \n', x_root3)
fprintf('The 4th root is %15.8e \n', x_root4)
fprintf('The 5th root is %15.8e \n', x_root5)

end

