function ps8q7
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 7, problem set 8

% Specify tolerance and max number of iterations:
ttol=1.e-6; ftol=1.e-6; maxit=15;

% domain boundaries [0,5]
a=0; b=5;

q1a=0; q1b=10; % conditions on q1 at a and b
q3a=0; q3b=2;  % conditions on q3 at a and b

v0=[1;1]; % initial guess for q2 and q4'

% Find the proper values of v by multi-directional newton method
% Note that the filenames of both the Jacobian evaluation  ('J_shoot') 
% and the shooting attempt ('shoot7') must be passed, along with 
% parameters that are required by 'shoot_multi' 
v = newtonSys('J_shoot',v0,ttol,ftol,maxit,0, ...
              'shoot7',a,b,q1a,q1b,q3a,q3b);

% final solution: recompute shoot, with the determined of v
[f,tt,qq] = shoot7(v,a,b,q1a,q1b,q3a,q3b);

figure(1)
plot(qq(:,1),qq(:,3),'-')
xlabel('x (horizontal)'); ylabel('z (vertical)');
title('Trajectory (z vs x)')
suptitle('Projectile motion')

fprintf(' Initial conditions (velocities): \n Horizontal: vx0 = %1.9g \n Vertical: vz0 = %1.9g \n',qq(1,2),qq(1,4))

end