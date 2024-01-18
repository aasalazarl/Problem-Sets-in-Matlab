function yhat = newlinterp(x,y,xhat) % Generates y-values for a
                                     % linear interpolation given
                                     % a set of x-values
                                     % Calls function 'binSearch.m',
                                     % provided on eclass
                                     % Function based on 'mylinterp.m',
                                     % provided on eclass
                                     
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 1, problem set 6

i = binSearch(x,xhat);
% Set y-intercept
a = y(i);
% Set slope
b = (y(i+1) - y(i))/(x(i+1) - x(i));
% Generate linear function
yhat = a + b*(xhat - x(i));


end

