function ps1q2b % Creates a matrix from a vector using the built-in function 'reshape'
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 2, part (b), problem set 1

v = (-5:1:6); % Create a vector with entries from -5 to 6 and intervals of 1
              % between entries
reshape(v,2,6) % Use the 'reshape' function to create a 2 X 6 matrix w/ the
               % entries of vector v

end