function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)

m = size(X,1); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %






    
    % ============================================================

    % Save the cost J in every iteration    
    
    predictions = X*theta ;
    sqrErrors = (predictions - y);

    J = 1/(m) * X' * sqrErrors;
    theta = theta - alpha*J;
    %J_history(iter) = computeCost(X, y, theta);

end

end
