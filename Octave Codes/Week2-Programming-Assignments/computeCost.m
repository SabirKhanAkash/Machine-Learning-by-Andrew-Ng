function J = computeCost(X, y, theta)

J = 0;

% ====================== YOUR CODE HERE ======================

m = size(X,1);
predictions = X*theta ;
sqrErrors = (predictions - y).^2;

J = 1/(2*m) * sum(sqrErrors);

% =========================================================================

end
