function ps8q3 % Description of the horizontal and vertical
               % components of the velocity of a projectile
               % given by two coupled equations
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 3, problem set 8

% vector of initial conditions
vv0 = [ 20;        % vx0
        20 ];      % vz0

t0 = 0; tn = 10;   % time interval [s]

% numerical solution
[t,vv] = ode45('rhsq3',[t0 tn],vv0);

figure(1)
subplot(2,1,1)
plot(t,vv(:,1),'-')
xlabel('Time t [seconds]')
ylabel('v_x [m/s]')
title('Horizontal component (v_x vs t)')

subplot(2,1,2)
plot(t,vv(:,2),'-')
xlabel('Time t [seconds]')
ylabel('v_z [m/s]')
title('Vertical component (v_z vs t)')
suptitle('Horizontal and vertical components of the velocity of a projectile')

end

