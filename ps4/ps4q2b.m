function ps4q2b % Finds the roots of the function f2a ((1-x)(3+x)^(1/2) = 3.06x(1+x)^(1/2))
                % in the interval 0.1 <= x <= 10
                % by using newton's method (calls 'netwon')

% Define tolerance on x and f
tolx = 1.e-15;
tolf = 1.e-15;

% Take a look at the plot
%x = linspace(0.1,10,100);
%f = f2b(x);
%plot(x,f)

% Get first (unique) root
x0 = 0; % Guess
x_root1 = newton('f2b',x0,tolx,tolf); % First root found with function 'newton'


fprintf('The only root is %15.8e \n', x_root1)

end

