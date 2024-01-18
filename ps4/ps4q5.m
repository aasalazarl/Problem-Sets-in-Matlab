function ps4q5
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 5, problem set 4

x = [-2 -1 2]'; % Set vector x
y = [-2 1 -1]'; % Set vector y

c = parabola(x,y) % Print the vector of the three
                  % coefficients ci

% Prepare plot of the parabola                  
x = linspace(-3,3); % Change values of x
y = c(1).*x.^2 + c(2).*x + c(3); % Set the parabola function
plot(x,y,-2,-2,'o',-1,1,'o',2,-1,'o')
xlabel('-3 <= x <= 3')
ylabel('y = c_1x^2 + c_2x + c_3')
legend('y = -0.9167x^2 + 0.2500x + 2.1667','(x,y) = (-2,-2)','(x,y) = (-1,1)','(x,y) = (2,-1)','Location','best')


end