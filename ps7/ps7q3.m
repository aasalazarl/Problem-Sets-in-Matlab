function ps7q3 % Numerical evaluation of function fint in interval
               % [0,+inf] calling built-in function quad
% ID: 1517982, Alejandro Salazar Lobos
% Problem set 7, question 3

a = 0; b = 10^16; % limits of integration
tol = 10^(-16);   % tolerance
[Q FCNT] = quad('fint',a,b,tol); % integration and number of function evaluations

% Print answers
fprintf('  Upper limit: %3.15g \n  Numerical integration: %3.15g \n  Exact solution: sin(1) = %3.15g \n  Number of function evaluations: %3.15g \n',b,Q,sin(1),FCNT)

%Check answers
%format long
%Q
%sin(1)

end

