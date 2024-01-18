function [J,f] = J_shoot(v,varargin)
%  Computes the Jacobian and function evaluation for the shooting method 
%  Uses a perturbation method to compute the derivatives
%  This function is compatible with newtonSys.m
%  This function is general and can be used for all cases

%  input v = vector, set of coefficients associated with
%            conditions of starting boundary
%        varargin = additional set of parameters that can be passed to 
%                   to user defined shoot m-file (stored in varargin{1})
%  output f = vector, function evaluation representing the match of
%             the set of conditions on ending boundary 
%         J = Jacobian matrix

% initialize vectors, matrices
n=length(v);
f = zeros(n,1); % f must be defined as a column vector
f2 = zeros(n,1); % f must be defined as a column vector
J = zeros(n,n);  

% compute the function f: shoot from left to right 
% (the name of the user-defined shooting function must be passed to
% newtonSys.m:)
f=feval(varargin{1},v,varargin{2:end});
 
% compute the Jacobian matrix
eps=1.e-6;
for j=1:n  % loop over columns of J
    temp=v(j);
    h=eps*abs(temp);  % h is a vector
    if (h==0)
        h=eps;
    end
    v(j)=temp+h; % replace set of v with small perturbation
    h=v(j)-temp;
    f2=feval(varargin{1},v,varargin{2:end});
    v(j)=temp;
    for i=1:n   % loop over rows of J
      J(i,j)=(f2(i)-f(i))/h;  % compute numerical derivative
    end
end


end
