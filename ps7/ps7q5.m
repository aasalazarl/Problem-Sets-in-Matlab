function ps7q5 % Simpson's 3/8 rule integration of function fun5
               % in the interval [a,b]
               % Calls function simpson28.m
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 5, problem set 7

Iexact = -(5/29)*(exp(5*pi/2) + 1); % exact solution

a = 0; b = pi/2; % limits of integration

%npanel1 = 100; npanel2 = 200;
%n = 2; % Integrals evaluated with different number of panels

fprintf('\n        Iexact = %1.4e \n \n', Iexact)
fprintf('npanel          I            error \n')

for npanel = [100 200]
    I = simpson38('fun5',a,b,npanel); % integration
fprintf(' %1.3g       %1.4e    %1.4e \n',npanel,I,I-Iexact)
end

end

