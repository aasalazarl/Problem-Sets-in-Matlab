function M = sequint(m,n) % Creates an mxn matrix, entries from 1 to m*n
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 5, problem set 1

%v = (1:1:m*n); % Create a vector length m*n. Entries separated by intervals of 1
M = reshape((1:1:m*n),m,n); % Use the reshape function to created the m by n matrix with
                            % the entries from vector v
end

