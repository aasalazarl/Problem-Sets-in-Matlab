function [f,tt,qq] = shoot7(v,a,b,q1a,q1b,q3a,q3b)  % File used with 'ps8q7.m'
                                                    % Shoots to find one solution from a set of initial conditions 
                                                    % specified in the vector v
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 7, problem set 8

n=length(v);
f = zeros(n,1); % f must be defined as a column vector

% vector of initial conditions
y0 = [q1a; v(1); q3a; v(2)];

% shoot from a to b
[tt,qq] = ode45('rhsq7',[a b],y0); % solve ODE's
nt=length(tt);

% function to minimize: target for b.c. 
f(1) = q1b - qq(nt,1);
f(2) = q3b - qq(nt,3);

end

