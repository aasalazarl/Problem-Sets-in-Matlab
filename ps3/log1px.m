function ssum = log1px(x,tol,nmax) % Taylor approximation of ln(1+x)
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 3, problem set 3

% Code based on "sinser.m", by Mathieu Dumberry

%
% Synopsis: ssum = log1px(x)
%           ssum = log1px(x,tol)
%           ssum = log1px(x,tol,n)
%
% Input:    x   = argument of the sine function, i.e., compute ln(1+x)
%           tol = (optional) tolerance on accumulated sum. Default:  tol = 5e-9
%                 Series is terminated when abs(T_k/S_k) < delta.   T_k is the
%                 kth term and S_k is the sum after the kth term is added.                
%           nmax   = (optional) maximum number of terms. Default: n = 15
%
% Output:   ssum = value of series sum after nterms or tolerance is met

format long

% --- Determine tolerance and nmax depending on number of inputs
if nargin < 2, tol = 5e-9; end
if nargin < 3, nmax = 15; end

% --- Initialize the series
term = x; ssum = term;
fprintf('Taylor series approximation to ln(1+%e)\n\n  k        term            ssum\n',x);
fprintf('%3d    %11.3e    %11.3e\n',1,term,ssum);

for k = 2:1:nmax
    term = -term * x/k;
    ssum = ssum + term;
    fprintf('%3d    %11.3e    %12.8f\n',k,term,ssum);
    if abs(term/ssum)<tol, break; end
end

fprintf('\nTruncation error after %d terms is %g\n\n',k,abs(ssum-log(1+x)));
fprintf('\n ln(1+x) true value: %g\n', log(1+x))

end

