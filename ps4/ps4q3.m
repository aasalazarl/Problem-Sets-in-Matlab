function ps4q3
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 3, problem set 4

f = @(x,c) x*tan(x) - c; % Define the parametrized function
v = 0.1:0.1:10; % Create vector for which values will be assigned to c
A = []; B = []; % Create matrices to be filled with values
z1 = []; z2 = []; % Create final vectors of zeros

for i = 1:100
    c = v(i);
    Z1 = fzero(@(x) f(x,c),0.9);
    A = [A Z1]; % Store values in matrix A
    Z2 = fzero(@(x) f(x,c),3.9);
    B = [B Z2]; % Store values in matrix B

    if i == 100
        z1 = A'; % First zeroes of parametriced function
        z2 = B'; % Second zeroes of parametriced function
        c = v';  % Vector with values of the parameter corresponding to the zeroes
        % Prepare the plot
        plot(c,z1,'-',c,z2,'-')
        xlabel('0.1 <= c <= 10')
        ylabel('Roots')
        legend('First roots','Second roots','Location','best')
    end
    
end