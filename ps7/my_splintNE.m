function yhat = my_splintNE(x,y,xhat)
% my_splintNE  Cubic-spline interpolation with natural end conditions
%
% This code is identical to my_splintFE.m 
% except for the changes in the boundary conditions
%
% Synopsis:   yhat = my_splintNE(x,y,xhat)
%
% Input:   x,y  = vectors of discrete x and y = f(x) values
%          xhat = (scalar or vector) x values where interpolant is evaluated 
%
% Output:  yhat = (vector or scalar) value(s) of the cubic spline interpolant
%                 evaluated at xhat.  size(yhat) = size(xhat)

% --- Set up system of equations for b(i)
x = x(:);  y = y(:);  xhat = xhat(:);  %  convert to column vectors
n = length(x);

dx=zeros(n,1); divdif=zeros(n,1);
for i=1:(n-1)
   dx(i) = x(i+1)-x(i);       %  vector of x(i+1) - x(i) values
   divdif(i) = (y(i+1)-y(i))/dx(i);         %  vector of divided differences
end

alpha = [0; dx(2:n-1); 0];                  %  sub diagonal
bbeta = [1; 2*(dx(1:n-2)+dx(2:n-1)); 1];    %  main diagonal
gamma = [0; dx(2:n-1); 0];                  %  super diagonal


A     = tridiags(n,bbeta,alpha,gamma);      %  Sparse, tridiagonal matrix

% Alter first row 
A(1,2)=0.5; A(1,1)=1.0;
% Alter last row 
A(n,n-1)=0.5; A(n,n)=1.0;

delta = [ 1.5*divdif(1); ...
          3*(divdif(2:n-1).*dx(1:n-2) + divdif(1:n-2).*dx(2:n-1)); ...
          1.5*divdif(n-1) ];

% --- Solve the system for b 
% [ comment out the parts that deal with sparse systems]
%
mmdflag = spparms('autommd');     %  Store minimum degree ordering flag
spparms('autommd',0);             %  Set that flag to zero
b = A\delta;                      %  Solve the system
spparms('autommd',mmdflag);       %  Reset the minimum degree ordering flag

% --- Compute coefficients of spline interpolants
for i=1:n-1
    a(i) = y(i);
    c(i) = (3*divdif(i) - 2*b(i) - b(i+1))/dx(i);
    d(i) = (b(i) - 2*divdif(i) + b(i+1))/(dx(i).^2);
end
b(n) = [];    %  discard b(n)

% evaluation of the spline at xhat points
nhat=length(xhat);
for k=1:nhat
% first Locate xhat value in the x vector
    i=ordSearch(x,xhat(k));
    if i==n
        i=n-1;  %for last data point 
    end
% distance from left knot point
    xx = xhat(k) - x(i);
% evaluation of the piecewise polynomial (nested)
    yhat(k) = a(i) + xx*(b(i) + xx*(c(i) + xx*d(i)) );
end
