function A = evenChecker(m,n) % Creates a checkerboard matrix of
                              % ones and zeros
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 6, problem set 2

A = zeros(m,n); % Create a m-by-n matrix with zeros

for i = 1:m
    for j = 1:n
        if rem((i+j),2) == 0 % Check if i + j is an even number.
                             % The remainder function "rem" returns
                             % the remainder of a division
            A(i,j) = 1; % Substitute the (i,j) entry in matrix A by 1
        end
    end
end

end

