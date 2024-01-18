function ps7q1 % Integration of function fint(x) using Trapezoidal and
               % Simpson methods
               % Produces tables of integral values for increasing number 
               % of intervals
               % Uses demoTrap.m and demoSimp.m (provided on eClass) as
               % templates
% ID: 1517982, Alejandro Salazar
% Solution to question 1, problem set 7

% Exact solution
a = -1; b = 5;    % limits of integration

Iexact = sin(exp(-a)) - sin(exp(-b)); % exact solution

% Trapezoidal rule

fprintf('Trapezoidal rule \n')
fprintf('\n\tIexact = %14.9f\n',Iexact);

fprintf('\n   nf        h            I            error       alpha\n');
errold = [];
for npanel = [8 16 32 64 128 256 512]      % number of panels calculated according to formula
                                           % npanel = nf - 1
  I = trapezoid('fint',a,b,npanel);        % integration
  err = I - Iexact;                        % error
  nf = npanel + 1;   h = (b-a)/(nf-1);     % number of nodes (function evaluations) and stepsize
  fprintf(' %4d   %9.9f %12.9f %14.4e',nf,h,I,err);

  if ~isempty(errold)
    fprintf('  %9.9f\n',log10(err/errold)/log10(h/hhold));
  else
    fprintf('\n');
  end
  hhold = h;  errold = err;          %  prep for next stepsize

end
  

% Simpson rule

fprintf('    \n')
fprintf('Simpson rule \n')
fprintf('\n\tIexact = %14.9f\n',Iexact);

fprintf('\n   nf        h            I            error       alpha\n');
errold = [];
for npanel = [4 8 16 32 64 128 256]          % number of panels calculated according to formula
                                             % npanel = (nf-1)/2
  I = simpson('fint',a,b,npanel);            % integration
  err = I - Iexact;                          % error
  nf = 2*npanel + 1;   h = (b-a)/(nf-1);     % number of nodes (function evaluations) and stepsize
  fprintf(' %4d   %9.9f %12.9f %14.4e',nf,h,I,err);
  
  if ~isempty(errold)
    fprintf('  %9.9f\n',log10(err/errold)/log10(h/hhold));
  else
    fprintf('\n');
  end
  hhold = h;  errold = err;           %  prep for next stepsize

end

end