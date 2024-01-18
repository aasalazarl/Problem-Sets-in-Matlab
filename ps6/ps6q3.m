function ps6q3 % Compares data points, linear interpolation
               % cubic spline interpolation and exact function
               % f(x) = 1/[(x+0.9)^2 + 0.7] + 1/[(x-1.1)^2 + 0.2]
               
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 3, problem set 6

[xdat, ydat] = fakedata(11); % To be used in the interpolations
[x, y] = fakedata(200); % To be used when finding the fit
xhat = [ ];
ylinterp = [ ];
ysplint = [ ];

% Generate xhat points
    % To be used in both linear and cubic spline ('not-a-knot' end) interpolations
for i = 1:1:(numel(xdat)-1)
    v = linspace(xdat(i),xdat(i+1),20);
    xhat = [xhat v];    

end

% Generate ylinterp for linear interpolation and
% ysplint for cubic spline interpolation
for i = 1:1:numel(xhat)
    % Linear interpolation
        % Calls 'newlinterp.m'
    v1 = newlinterp(xdat,ydat,xhat(i));
    ylinterp = [ylinterp v1];
    
    % Cubic spline ('not-a-knot' end) interpolation
        % Calls built-in function 'spline'
    v2 = spline(xdat,ydat,xhat(i)); % Generate vector to store values of yhat_slpinterp in a single matrix
    ysplint = [ysplint v2];

end

% Find the fits
fit_linterp = norm(y-ylinterp)./norm(y);
fit_splint = norm(y-ysplint)./norm(y);

% Print results
fprintf('Fit cubic spline interpolation %10.4g \n', fit_splint)
fprintf('Fit linear interpolation %15.4g \n', fit_linterp)

% Plot 1) 11 data points (xdat, ydat),
% 2) cubic spline interpolation function,
% 3) linear interpolation,
% 4) exact function f(x) = 
plot(xdat,ydat,'ok',xhat,ysplint,'b',xhat,ylinterp,'r',x,y,'k')
xlabel('x')
ylabel('y')
legend('Data points','Cubic spline interpolation','Linear interpolation','f(x) = 1/[(x+0.9)^2 + 0.7] + 1/[(x-1.1)^2 + 0.2]','Location','best')
title({'Comparison of cubic-spline and linear interpolations with original function f(x)','200 points generated for f(x)'})

end

