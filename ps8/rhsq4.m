function dyydt = rhsq4(t,yy)  % Used in ps8q4
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 4, problem set 8

% rhsq5  Right-hand sides of Reyleigh oscillator system
%
% Synopis:  dydt = rhsSmd(t,y)
%
% Input:    t      = time, the independent variable
%           y      = vector (length 2) of dependent variables
%                    y(1) = displacement and y(2) = velocity
%
% Output:   dxdt = column vector of dx(i)/dt values

% non-linear 2nd order ODE
dyydt = [ yy(2);
       5*(yy(2) - (yy(2))^3 - yy(1)) ]; % yy(1) = y, yy(2) = dydt                      

end

