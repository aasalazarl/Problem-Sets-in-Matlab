function ps8q6  % Shooting method
                % to solve  q'' - q^2x^2 + qe = 0
                % with b.c. q(0)=qa, q(1)=qb 
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 6, problem set 8

v0=1; % initial guess for q' at x=a

%-- Option a: 
% 1) Find value of v which matches b.c. at x=b 
% parameters must be redefined in the function 'shoot6.m' 
v = fzero('shoot6',v0); 
% 2) final solution: recompute shoot, with the determined of v
[f,xx,qq] = shoot6(v);

figure(1)
subplot(2,1,1);
plot(xx,qq(:,1),'-');
xlabel('x')
ylabel('q(x)')
title('q vs x')

subplot(2,1,2);
plot(xx,qq(:,2),'-');
xlabel('x')
ylabel('dq/dx')
title('dq/dx vs x')
suptitle('Shooting method')


end

