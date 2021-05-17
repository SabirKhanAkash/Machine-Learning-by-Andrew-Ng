function p = predictOneVsAll(all_theta, X)

m = size(X, 1);
num_labels = size(all_theta, 1);

p = zeros(size(X, 1), 1);

X = [ones(m, 1) X];

% ====================== YOUR CODE HERE ======================

z = X*all_theta';
h = sigmoid(z);
[p1 p] = max(h, [], 2);

% =========================================================================

end
