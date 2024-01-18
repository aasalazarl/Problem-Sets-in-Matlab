function myplotData
% plotData   Plot (x,y) data from columns of an external file
%
data = load('xy.dat');    %  load contents of file into data matrix  

x = data(:,1);         %  x and y are in first two columns of data
y = data(:,2);
plot(x,y,'o');

% save data to external file
dataout=[x,y];
%save mydataout.dat dataout -ascii  % for a readable ascii file
save mydataout.mat dataout % for a binary file
