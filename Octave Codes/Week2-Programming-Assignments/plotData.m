function plotData(x, y)

figure; % open a new figure window

% ====================== YOUR CODE HERE ======================
plot(x,y,'rx','MarkerSize', 10);
ylabel('Profit in $10,000s');
xlabel('Population of City in 10,000s'); 
% Instructions: Plot the training data into a figure using the 
%               "figure" and "plot" commands. Set the axes labels using
%               the "xlabel" and "ylabel" commands. Assume the 
%               population and revenue data have been passed in
%               as the x and y arguments of this function.
%
% Hint: You can use the 'rx' option with plot to have the markers
%       appear as red crosses. Furthermore, you can make the
%       markers larger by using plot(..., 'rx', 'MarkerSize', 10);

% ============================================================

end
