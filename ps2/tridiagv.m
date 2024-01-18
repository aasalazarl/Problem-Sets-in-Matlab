function A = tridiagv(a,b,n)
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 1, problem set 2

if numel(a) > 1 % Detect whether a is a vector
    M1 = diag(a); % Create diagonal with entries in vector a
    if numel(b) > 1 % Detect b as a vector
        for K = 1:-2:-1
            if K == 1
                bmod = b; % Restore bmod (b modified) by setting it equal to b
                bmod(1) = []; % Eliminate the first entry of vector bmod 
                M2 = diag(bmod,K); % Create matrix
            elseif K == -1
                bmod = b; % Restore bmod by setting it equal to b
                bmod(n) = []; % Eliminate the las entry of vector bmod
                M3 = diag(bmod,K); % Create matrix
            end
        end
    elseif numel(b) == 1 % Detect b as a scalar
        for K = 1:-2:-1
            if K == 1
                bmod = linspace(b,b,n); % Create a vector size n with entries equal to b
                bmod(1) = [];
            M2 = diag(bmod,K);
            elseif K == -1
                bmod = linspace(b,b,n); % Create a vector size n with entries equal to b
                bmod(n) = [];
                M3 = diag(bmod,K);
            end
        end
    end
end
            
if numel(a) == 1
    if numel(b) == 1 % Detect b as a scalar
        avector = linspace(a,a,n); % Create a vector size n with entries equal to a
        bvector = linspace(b,b,n-1); % Create a vector size n-1 with entries equal to b
        M1 = diag(avector); % Create diagonal matrix
        M2 = diag(bvector,1);
        M3 = diag(bvector,-1);
    elseif numel(b) > 1 % Detect b as a vector
        avector = linspace(a,a,n); % Create a vector size n with entries equal to a
        M1 = diag(avector); % Create diagonal matrix
        for K = 1:-2:-1
            if K == 1
                bmod = b; % Restore bmod (b modified) by setting it equal to b
                bmod(1) = []; % Eliminate the first entry of vector bmod 
                M2 = diag(bmod,K); % Create matrix
            elseif K == -1
                bmod = b; % Restore bmod by setting it equal to b
                bmod(n) = []; % Eliminate the las entry of vector bmod
                M3 = diag(bmod,K); % Create matrix
            end
        end
    else
        return
    end
end
   
A = M1+M2+M3; % Assemble the final matrix

end

