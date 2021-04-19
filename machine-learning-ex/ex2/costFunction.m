function [J, grad] = costFunction(theta, X, y)

m = length(y);
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================

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
