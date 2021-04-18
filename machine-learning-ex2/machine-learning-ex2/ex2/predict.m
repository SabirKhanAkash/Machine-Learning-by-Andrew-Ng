function p = predict(theta, X)

m = size(X, 1);

% You need to return the following variables correctly
p = zeros(m, 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned logistic regression parameters. 
%               You should set p to a vector of 0's and 1's
%

theta1 = sigmoid(X*theta);

p = theta1 >= 0.5;


% =========================================================================


end
