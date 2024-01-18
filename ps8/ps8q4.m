function ps8q4  % Numerical solution to Reyleigh's oscillator
                % given by the non-linear 2nd order ODE
                % (1/5)d2y/dt2 = dy/dt - (dy/dt)^3 - y
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 4, problem set 8

% initial conditions
dydt0 = 1; y0 = 0;
yy0 = [ y0; dydt0];

% interval
t0 = 0; tn = 20;

[t,yy] = ode45('rhsq4',[t0 tn],yy0);

%t = linspace(t0,tn,numel(yy(:,1)))';
% correcion: don't redefine the time variable,
% the one output vy ODE45 is the correct one to use

figure(1)
subplot(2,1,1)
plot(t,yy(:,1),'-')
xlabel('0 ≤ t ≤ 20')
ylabel('y')
title('Position (y vs t)')

subplot(2,1,2)
plot(t,yy(:,2),'-')
xlabel('0 ≤ t ≤ 20')
ylabel('dy/dt')
title('Velocity (dy/dt vs t)')
suptitle('Reyleigh oscillator')

end

