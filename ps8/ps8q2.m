function ps8q2 % Computes numerical solutions of y = 20/(1 + 19exp(-2t))
               % between t=0 and t=5 using Euler, Midpoint and Runge-Kutta
               % for time-steps h
               % Prints the discretization error for each method and h
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 2, problem set 8

tn = 5;  y0 = 1;           % length of interval and initial condition
h = [0.2 0.1 0.05 0.025]';  % time-steps

fprintf('\n   h          GDE(Euler)      GDE(Midpt)      GDE(RK4)\n');
for i = 1:1:numel(h)
  [te,ye] = odeEuler('rhsq2',tn,h(i),y0); %  Euler solution
  [tm,ym] = odeMidpt('rhsq2',tn,h(i),y0); %  Midpoint solution
  [t4,y4] = odeRK4('rhsq2',tn,h(i),y0);   %  RK4 solution
  % --- global discretization errors
  yex = 20./(1 + 19.*exp(-2.*te)); %  exact solution at discrete t
  erre = max(abs(ye-yex));  
  errm = max(abs(ym-yex));   
  err4 = max(abs(y4-yex));
  fprintf('%9.6f %14.3e %14.3e %14.3e\n',...
           h(i),erre,errm,err4);
end

end

