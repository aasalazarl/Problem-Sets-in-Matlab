function ps7q4 % Calculates the exact integration of a set of data points
               % by means of cubic-spline interpolations
               % Uses function gaussQuad.m (provide on eClass)
               % Explanation on the choice of number of panels and nodes in
               % each panel provided at the end as added commented text
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 4, problem set 7

% Data points
x = [-3.0:0.6:3.0]';
y = [0.25 0.42 0.78 1.45 1.59 1.37 2.56 4.96 1.57 0.62 0.33]';

a = -3; b = 3;      % limits of integration

npanel = 10; n = 2; % number of panels and nodes

%format long

I = gaussQuad('fun4',a,b,npanel,n,x,y)


% Explanation of chosen values of npanel and nnode (N and n, respectively,
% in the instructions:

% 1) There are 10 spaces between the 11 data points, such that each panel
%    has two data points, one on each corner. npanel = 10 corresponds to
%    the 10 cubic-spline interpolations between data points.
% 2) For the interpolation, I am using a cubic-spline between panels. This
%    means that there are four coefficients in the cubic polynomials for each
%    interpolation in each of the ten panels. When integrating, the even
%    powers cancel, and I end up with two coefficients, implying 2 function
%    evaluations per panel (that is 2 G-L points/nodes).
%    Alternatively, the MINIMUM number of function evaluations (or nodes) 
%    can be found with the following formula:
%    K = 2n-1 => n = (K+1)/2, where K is the order of the polynomial and n
%    is the number of Gauss-Legendre points. For a cubic-spline, K = 3, and
%    so n = 2.

end

