function p = predict(theta, X)

m = size(X, 1);

% You need to return the following variables correctly
p = zeros(m, 1);

% ====================== YOUR CODE HERE ======================

theta1 = sigmoid(X*theta);

p = theta1 >= 0.5;


% =========================================================================


end
