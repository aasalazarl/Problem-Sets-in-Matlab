function demo_fit_poly
% Least-squares fit to a linear set of functions.
% Example of data fit done in class

% data points
x=(1:6)';  % column vector x
y=[10 5.49 0.89 -0.14 -1.07 0.84]'; % column vector y

% first try with y = c1*x + c2 (linear fit)
[c,norm_r]=linefit(x,y)

% plot fit and data
figure(1)
xfit = linspace(0.5,7);
yfit1 = c(1)*xfit + c(2);
plot(x,y,'o',xfit,yfit1,'-'); 
xlabel('x'); ylabel('y'); legend('data','fit 1')



%***********
% now try model :   y = c1*x^2 + c2*x + c3
% so matrix A of y=Ac is

A2 = [x.^2, x, ones(size(x))];

% solve normal equations
c2 = (A2'*A2)\(A2'*y);

% plot fit and data
yfit2 = c2(1)*xfit.^2 + c2(2)*xfit + c2(3);
plot(x,y,'o',xfit,yfit1,'-',xfit,yfit2,'-'); 
xlabel('x'); ylabel('y'); legend('data','fit 1','fit 2')

% get a measure of the fit by looking at the norm of residual vector
r_2 = y - A2*c2;
norm_r_2 = norm(r_2)

%***************
% Retry fit with a different basis model: y = d1/x + d2*x
A3 = [1./x, x];
c3 = (A3'*A3)\(A3'*y);
r_3 = y - A3*c3; 
norm_r_3 = norm(r_3)

% plot both fit on same graph
yfit3 = c3(1)./xfit + c3(2)*xfit;
plot(x,y,'o',xfit,yfit1,'-',xfit,yfit2,'-',xfit,yfit3,'-'); 
xlabel('x'); ylabel('y');
legend('data','fit 1','fit 2', 'fit 3');

% Now try with polyfit built-in function
% evaluate coefficient fit of polynomial
%cp = polyfit(x,y,5);
%yfit4 = polyval(cp,xfit);
%figure(2)
%plot(x,y,'o',xfit,yfit2,'-',xfit,yfit4,'-'); 
%legend('data','fit 2','polyfit');

% to evaluate norm: 
%yfithat=polyval(cp,x);
%r_4 = y-yfithat;
%norm_r_4 = norm(r_4)

end

