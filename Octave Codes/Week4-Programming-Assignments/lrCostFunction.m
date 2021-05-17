function [J, grad] = lrCostFunction(theta, X, y, lambda)

m = length(y); 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================

z=X*theta;
h=sigmoid(z);

H=h.';
h1=log(H)*(-y);
h2=(log(1-H))*(1-y);
n = lambda*sum(theta(2:size(theta)).^2)/(2*m);
J=((h1-h2)/m)+n;

grad(1) = 1/m*(X(:,1)'*(sigmoid(X*theta)-y));

grad(2:end) = 1/m*(X(:,2:end)'*(sigmoid(X*theta)-y))+(lambda/m)*theta(2:end);

grad = grad(:);

end
