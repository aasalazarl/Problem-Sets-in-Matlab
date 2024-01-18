function ps2q2thursday % Determines the coefficients and values of x 
                       % of the polynomial to be evaluated in the horner function with
% ID: 1517982, Alejandro Salazar

b = [3 -1 2 2]; % Set coefficients of polynomial
for x = 1:1:5 % Set the values of x
    p = horner(b,x)
end

end

