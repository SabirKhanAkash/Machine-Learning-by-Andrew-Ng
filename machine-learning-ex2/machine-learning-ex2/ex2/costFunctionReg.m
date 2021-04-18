function [J, grad] = costFunction(theta, X, y)

m = length(y);
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================

h=sigmoid(X*theta);

H=h.';
h1=log(H)*(-y);
h2=(log(1-H))*(1-y);

rcost = (lambda / (2 * m)) * (theta'*theta);
J=((h1-h2)/m)+rcost;

grad = (X'*(h-y)+lambda*theta)/m;

% =============================================================

end
