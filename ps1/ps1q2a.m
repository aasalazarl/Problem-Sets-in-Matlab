function ps1q2a % Creates a matrix from a vector using the built-in function 'reshape'
% ID: 1517982, Alejandro Salazar Lobos
% Solution to problem 2, part (a), problem set 1

v = (2:2:24); % Creates a vector with entries from 2 to 24 and intervals of 2
              % between entries
reshape(v,3,4) % Use the 'reshape' function to create a 3 X 4 matrix
               % w/ the entries of vector v

end