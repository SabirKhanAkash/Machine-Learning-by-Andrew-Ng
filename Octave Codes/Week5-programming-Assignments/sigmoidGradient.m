function g = sigmoidGradient(z)

g = zeros(size(z));

% ====================== YOUR CODE HERE ======================

g=sigmoid(z).*(1-sigmoid(z));

% =============================================================

end
