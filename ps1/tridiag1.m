function M = tridiag1(a,b,n) % Creates a symmetric tridiagonal function
                             % a corresponds to the diagonal, b to the off diagonal elements
                             % and n is the size of the nxn matrix
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 7, problem set 1

%v1 = linspace(a,a,n); % Create a vector size n to use in the built-in function diag
%v2 = linspace(b,b,n-1); % Use n-1 as size becuase matrices M2 and M3 must agree in size wih matrix M1
%M1 = diag(v1,0); % diag(V,K) V is the vector, K = 0 creates a diagonal with values V
%M2 = diag(v2,1); % b is the vector and K = 1 creates a line b above the main diagonal
%M3 = diag(v2,-1); % K = -1 creates a line b below the main diagonal
%M = M1+M2+M3; % Sum the matrices

M = diag(linspace(a,a,n),0)+diag(linspace(b,b,n-1),1)+diag(linspace(b,b,n-1),-1);

end

