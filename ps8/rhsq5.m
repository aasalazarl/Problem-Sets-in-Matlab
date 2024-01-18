function dxdt = rhsq5(t,x,flag,k1,k2,k3,m1,m2)  % Used in ps8q5
% ID: 1517982, Alejandro Salazar
% Solution to question 5, problem set 8

% rhsq5  Right-hand sides of coupled ODEs for a spring-mass system
%
% Synopis:  dydt = rhsSmd(t,y,flag,k1,k2,k3,m1,m2)
%
% Input:    t      = time, the independent variable
%           x      = vector (length 4) of dependent variables
%                    x(1) = displacement x_1 and x(2) = velocity x_1
%                    x(3) = displacement x_2 and x(4) = velocity x_2
%           flag   = dummy argument for compatibility with ode45
%           ki     = spring constant
%           mi     = mass
%
% Output:   dxdt = column vector of dx(i)/dt values

dxdt = [x(2);                                  % dx1/dt
         (1/m1)*(-k1*x(1) + k2*(x(3) - x(1)));  % d2x1/dt2
         x(4);                                  % dx2/dt
         (1/m2)*(-k2*(x(3) - x(1)) - k3*x(3))]; % d2x2/dt2

end

