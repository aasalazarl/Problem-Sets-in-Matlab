function dqqdt = rhsq7(t,qq)
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 7, problem set 8

v = sqrt(qq(2)^2 + qq(4)^2);    % magnitude of velocity vector [m/s]
g = 9.8;                        % acceleration [m/s^2]
c = 0.03;                       % air drag coefficient [m^(-1)]

% ODE's
dqqdt = [ qq(2);             % dx/dt
          (-c*v*qq(2));      % dx2/dt2
          qq(4);             % dz/dt
          (-g-c*v*qq(4))];   % dz2/dt2

end

