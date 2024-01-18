function [xdat, ydat] = fakedata(ndat) % Generates data points (ndat equally spaced x points)
                                       % by calling the function 'humpy.m'
                                       
% ID: 1517982, Alejandro Salazar Lobos
% Solution to question 3, problem set 6

xdat = linspace(-3,3,ndat);
ydat = humpy(xdat);

end

