function [f,xx,qq] = shoot6(v,a,b,qa,qb)  % Shooting method
                                          % to solve  q'' - q^2x^2 + qe = 0
                                          % with b.c. q(0)=qa, q(1)=qb
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 6, problem set 8

% Using this first method, the boundary values and other parameters are
% defined here.  
% (This is inconvenient: discrepancies in parameters between two files can
%  lead to errors)

a=0; b=1;
qa=1;qb=1;
 
% vector of initial condition:
q0 = [qa;v];

% shoot from a to b
[xx,qq] = ode45('rhsq6',[a b],q0); % solve ODE's
nx=length(xx);

% function to minimize: difference between y(x=1) and desired b.c. value
f = qb - qq(nx,1);
 
end

