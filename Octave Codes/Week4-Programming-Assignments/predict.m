function p = predict(Theta1, Theta2, X)
  
m = size(X, 1);
num_labels = size(Theta2, 1);

p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================

X = [ones(m,1) X];
z = X*Theta1';
h = sigmoid(z);

h = [ones(size(h,1),1) h];
z1 = h*Theta2';
h1 = sigmoid(z1);

[p1 p] = max(h1, [], 2);

% =========================================================================


end
