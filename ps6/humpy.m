function y = humpy(x) % Generates y-values of the function
                      % f(x) = 1/[(x+0.9)^2 + 0.7] + 1/[(x-1.1)^2 + 0.2]
                      
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 2, problem set 6

% Variation of the build-in Matlab function 'humps', provided in ps6
y = 1./((x+0.9).^2 + 0.7) + 1./((x-1.1).^2 + 0.2);

end

