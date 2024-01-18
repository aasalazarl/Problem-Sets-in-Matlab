function dvvdt = rhsq3(t,vv)  % Used in ps8q3

v = sqrt(vv(1)^2 + vv(2)^2);    % magnitude of velocity vector [m/s]
g = 9.8;                        % acceleration [m/s^2]
c = 0.03;                       % air drag coefficient [m^(-1)]

% ODE's
dvvdt = [ -c*v*vv(1);        % dvxdt
          -g-c*v*vv(2) ];    % dvzdt

end

