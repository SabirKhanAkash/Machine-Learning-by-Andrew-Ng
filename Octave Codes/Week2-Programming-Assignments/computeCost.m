function J = computeCost(X, y, theta)

% Initialize some useful values
%m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
m = size(X,1);
predictions = X*theta ;
sqrErrors = (predictions - y).^2;

J = 1/(2*m) * sum(sqrErrors);
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.





% =========================================================================

end
