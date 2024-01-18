function ps3q1thursday
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 1, problem set 3

format long

% --- Define angles
xdeg = [20 35 50 65]; % Angles in degrees
xrad = xdeg.*(pi/180); % Convert to radians

% --- sine approximation
s = xrad - (xrad.^3)./factorial(3) + (xrad.^5)./factorial(5);
Eabs_s = abs(s - sin(xrad)); % Absolute error
Erel_s = abs((s-sin(xrad))./sin(xrad)); % Relative error
fprintf('angle(degrees)   approx. sine     Eabs        Erel\n') % Headers

for i = 1:4
    fprintf('      %2d         %11.3e  %11.3e %11.3e\n',xdeg(i),s(i),Eabs_s(i),Erel_s(i)) % Generate table

end    

% --- cosine approximation
c = 1 - (xrad.^2)./factorial(2) + (xrad.^4)./factorial(4); % Operation to calculate s(x) approximation to sin(x)
Eabs_c = abs(s - cos(xrad)); % Absolute error
Erel_c = abs((s-cos(xrad))./cos(xrad)); % Relative error
fprintf('angle(degrees)  approx. cosine    Eabs        Erel\n') % Headers

for i = 1:4
    fprintf('      %2d         %11.3e  %11.3e %11.3e\n',xdeg(i),c(i),Eabs_c(i),Erel_c(i)); % Set table

end

end

