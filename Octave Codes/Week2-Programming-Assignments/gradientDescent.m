function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = size(X,1); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================

    predictions = X*theta ;
    sqrErrors = (predictions - y);

    J = 1/(m) * X' * sqrErrors;
    theta = theta - alpha*J;
    
    % ============================================================   

end

end
