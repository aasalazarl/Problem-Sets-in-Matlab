function c = expFit(x,y) % Transforms a function
                         % y = c1exp(c2x) int
                         % v = d1x + d2
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 5, problem set 5

v = log(y);
[d,norm_r] = linefit(x,v);

% Find the coefficients c1 and c2 of the original function y = c1exp(c2x)
c = [exp(d(2)) d(1)];

end