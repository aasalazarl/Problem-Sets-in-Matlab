function [f,fder] = f2b(x)
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 2b, problem set 4

f = (1-x).*(3+x).^(1/2)-3.06.*x.*(1+x).^(1/2);
fder = -(1.53.*x)/(1+x).^(1/2)-3.06.*(1+x).^(1/2)-(3+x).^(1/2)+(1-x)/(2.*(3+x).^(1/2));

end

