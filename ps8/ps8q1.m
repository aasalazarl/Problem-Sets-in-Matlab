function ps8q1 % Finds the numerical solution of ODE rhsq1.m
               % for different time-steps h
               % Produces a plot comparing solutions for different
               % h and the analytical solution
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 1, problem set 8

tn = 10; % computes numerical solutions between t=0 and t=10
y0 = 2;  % initial condition
h = [0.1 0.05 0.01]; % time-steps
color = ['b' 'r' 'g'];

for i = 1:1:numel(h)
    [t,y] = odeEuler('rhsq1',tn,h(i),y0); % numerical solution
    figure(1)
    hold on % open figure
    plot(t,y,color(i)) % plot numerical solutions
end

t = linspace(0,10);
y = 2.*sin(t) + cos(t) + 1; % analytical solution of function rhsq1

plot(t,y,'k') % plot exact solutions
title('ODE initial-value problem ps8q1 for different time-steps')
xlabel('t')
ylabel('y')
lgd = legend('h = 0.1','h = 0.05','h = 0.01','Analytical solution','location','best');
lgd.FontSize = 7.3;
hold off % close figure

end

