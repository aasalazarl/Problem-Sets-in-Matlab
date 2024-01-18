function ps6q4 % Explores the fits of linear interpolation and
               % cubic spline interpolation to the exact function
               % f(x) = 1/[(x+0.9)^2 + 0.7] + 1/[(x-1.1)^2 + 0.2]
               % Interpolations are based on ndat = [5,30] data points of
               % f(x)
               % 200 interpolated points (xinterpolated,yinterpolated) are 
               % compared with 200 points (xinterpolated,y), with y
               % generated with function f(x) evaluated at xinterpolated)
               
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 4, problem set 6

fprintf('    ndat    Fit cubic-spline interpolation    Fit linear interpolation \n')

ndat = 5:1:30; % Create a vector of values ndat

% Create empty vectors where fits will be stored to generate the plot
fit_linterp = [ ];
fit_splint = [ ];

for i = 1:1:numel(ndat)
    xhat = [ ]; % x interpolation vector
    ylinterp = [ ]; % Empty vector where the y linear interpolation will be rewritten in each loop
    ysplint = [ ]; % Empty vector where the y cubic spline interpolation will be rewritten in each loop
    [xdat, ydat] = fakedata(ndat(i)); % Create xdat and ydat for each ndat(i) value
    number = ndat(i); % 'number' will substitute ndat(i) value in table of fit results
    
    % Generate xhat points
        % To be used in both linear and cubic spline ('not-a-knot' end) interpolations
    for j = 1:1:(numel(xdat)-1)
        v = linspace(xdat(j),xdat(j+1),200/(ndat(i)-1)); % Because of the nature of ndat, exactly 200 points cannot be generated
                                                         % I will compensate for this by generating points (xlin,ylin)
                                                         % and (xspline,yspline) based on numel(ylinterp) and numel(yplint), respectively
                                                         % See line 51
        xhat = [xhat v];
    end
        
    % Generate ylinterp for linear interpolation and
    % ysplint for cubic spline ('not-a-knot' end) interpolation
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

% Generat points (x__,y__) of the function f(x), to which interpolation will be compared, for each value ndat(i)    
    % (xlin,ylin)
[xlin, ylin] = fakedata(numel(ylinterp));
    % (xspline,yspline) 
[xspline, yspline] = fakedata(numel(ysplint));
% NOTE: (xlin,ylin) and (xpline,yspline) are the real (x,y) values of the
% function f(x); I have separated them here in order to adjust them to the
% numel of the corresponind linear or cubic-spline interpolations

% Calculate the fits
fl = norm(ylin-ylinterp)./norm(ylin); % Variable fl for the linear fit (changed in each iteration)
fit_linterp = [fit_linterp fl]; % Stores the fit values of the linear interpolation for all ndat(i)
fs = norm(yspline-ysplint)./norm(yspline); % Variable fs fot the cubic spline fit (changed in each iteration)
fit_splint = [fit_splint fs]; % Stores the fit values of the cubic spline interpolation for all ndat(i)

% Print fit results
fprintf('    %3.f    %20.4f    %28.4f \n',number,fs,fl)

end

% Plot the graph of the fits as functions of ndat
plot(ndat,fit_splint,'-o',ndat,fit_linterp,'-s')
xlabel('ndat')
ylabel('fit')
legend('Fit cubic-spline interpolation','Fit linear interpolation','Location','best')
title({'fit vs ndat', 'Fit results for cubic-spline and linear interpolations'})

end

% Questions:

% 1) What is the number of "fake" data (ndat) points required so that the
% cubic-spline interpolation fit is better than the linear fit?
% 
% Answer: From the graph "fit vs ndat", it can be seen that the
% cubic-spline interpolation fit is better than the linear fit at
% ndat = 9. This is corroborated by the table of fit values.
% An increase in the value of ndat after ndat = 8 always produces
% cubic-spline fit values that are smaller than the linear fit values.
% Therefore, the number of "fake" data(ndat) points required so that the
% cubic-spline interpolation fit is better than the linear fit is 9.

% 2) Why are both fits not monotonously decreasing with ndat? In other
% words, why does increasing ndat from 14 to 15, for example, results in a
% worsening of the fit, not improvement?
% 
% Answer: The "fit" value is the norm of the difference between the 
% y-values of the function f(x) (evaluated at ndat equally-spaced x-values) 
% and the yinterp-values (of the linear or cubic-spline interpolation) divided by 
% the norm of the f(x) values: fit = norm(y-yinterp)/norm(y). 
% A small number of data points makes the interpolations not too reliable, 
% so the difference in y-yinterp might be huge at some points due to the shape 
% of the actual curve f(x). Small ndat values produce x-values spacings 
% that produce unreliable results: an increase (or decrease) in the ndat-value might 
% provide for a spacing between x-values that can correspond to either 
% smaller or bigger y-yinterp values in an almost random way. 
% Reliability can be achieved by chosing a ndat-value for which an increase 
% in ndat produces smaller and smaller y-yinterp differences. 
% This conclusion is supported by the graph "fit vs ndat", where it can be 
% seen that after ndat = 21, the differences y-yinterp tend to decrease
% with and increase in ndat.
