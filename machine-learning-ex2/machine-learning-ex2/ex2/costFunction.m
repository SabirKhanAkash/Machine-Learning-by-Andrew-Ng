function [J, grad] = costFunction(theta, X, y)

m = length(y); % number of training examples
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta
%
% Note: grad should have the same dimensions as theta
%


z=X*theta;
h=sigmoid(z);

H=h.';
h1=log(H)*(-y);
h2=(log(1-H))*(1-y);
J=(h1-h2)/m;
s=h-y;
s=s.';

for i=1:3,    
    temp=(s)*X(:,i);
    grad(i)=temp(1);
end

grad=grad./m;


% =============================================================

end
