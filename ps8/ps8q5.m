function ps8q5    % Numerical solution to system of coupled oscillators
                  % described by the 2n order ODE's
                  % m1(d2x1/dt2) = -k1x1 + k2(x2 - x1) 
                  % m2(d2x2/dt2) = -k2(x2 - x1) - k3x2
% ID: 1517982, Alejandro Salazar
% Solution to question 5, problem set 8

k1 = 1; k2 = 5; k3 = 10; % spring constants
m1 = 2; m2 = 3;          % masses

% initial conditions
x1_0 = 1; dx1dt0 = 0; x2_0 = 1; dx2dt0 = 0;
x0 = [x1_0 dx1dt0 x2_0 dx2dt0]; % initial conditions vector

% limits
t0 = 0; tn = 100;

[t,x] = ode45('rhsq5',[t0 tn],x0,[],k1,k2,k3,m1,m2);

t = linspace(t0,tn,numel(x(:,1)))';

figure(1)
subplot(2,1,1)
plot(t,x(:,1),'-')
xlabel('0 ≤ t ≤ 100')
ylabel('x_1(t)')
title('Mass 1 displacement (x_1 vs t)')

subplot(2,1,2)
plot(t,x(:,3),'-')
xlabel('0 ≤ t ≤ 100')
ylabel('x_2(t)')
title('Mass 2 displacement (x_2 vs t)')
suptitle('Coupled oscillators')

end

