function dqdx = rhsq6(x,q)  % Right-hand sides of coupled ODEs of shooting method
                            % to solve  q'' - q^2x^2 + 1 = 0
                            % with b.c. q(0)=qa, q(1)=qb
% ID: 1517982, Alejandro Salazar Lobos
% Soution to question 6, problem set 8

% This is the RHS function that must be used with "shoot6.m"
% We must redefine Te here (incovenient)
dqdx = [ q(2);
         ( (q(1)^2)*(x^2) - 1)];


end