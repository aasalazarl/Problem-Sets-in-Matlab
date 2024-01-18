function ps7q2 % Integration of fint(x) using Gauss-Legendre
               % quadrature with the function gaussQuad.m (provided
               % on eClass) for different numbers of nodes
               % Uses demoGauss.m (provided on eClass) as a template for
               % the production of tables
% ID: 1517982, Alejandro Salazar Lobos
% Problem set 7, question 2

a = -1; b = 5;    Iexact = sin(exp(-a)) - sin(exp(-b));

for n = [2 3 4] % Gauss-Legendre points per panel

% --- Truncation error as function of panel size
fprintf('\nGauss-Legendre quadrature with n = %d \n',n);
fprintf('\n\tIexact = %14.9f\n',Iexact);
fprintf('\n   nf       H            I           error       alpha\n');
k = 1;   %  alpha is computed only if k>1

for npanel = [4 8 16 32 64 128]
  nf = n*npanel;                        % number of function evaluations
  I = gaussQuad('fint',a,b,npanel,n);   % integration
  err = I - Iexact;                     % error
  H = (b-a)/npanel;                     % compute H for output only
  fprintf(' %4d %10.5f %14.9f %12.4e',nf,H,I,err);

  if k>1,  fprintf('  %8.2f\n',log(err/errold)/log(H/HHold));
  else,    fprintf('\n');  end
  HHold = H;  errold = err;   k = k + 1;  %  prep for next stepsize

end

end

end
