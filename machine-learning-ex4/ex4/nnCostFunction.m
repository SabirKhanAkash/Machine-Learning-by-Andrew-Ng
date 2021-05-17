function [J grad] = nnCostFunction(nn_params, ...
                                   input_layer_size, ...
                                   hidden_layer_size, ...
                                   num_labels, ...
                                   X, y, lambda)

Theta1 = reshape(nn_params(1:hidden_layer_size * (input_layer_size + 1)), ...
                 hidden_layer_size, (input_layer_size + 1));

Theta2 = reshape(nn_params((1 + (hidden_layer_size * (input_layer_size + 1))):end), ...
                 num_labels, (hidden_layer_size + 1));

m = size(X, 1);
         
J = 0;
Theta1_grad = zeros(size(Theta1));
Theta2_grad = zeros(size(Theta2));

% ====================== YOUR CODE HERE ======================

h=sigmoid([ones(m, 1) X]*Theta1'); 

h1=sigmoid([ones(size(h,1), 1) h]*Theta2'); 
Y = zeros(size(h1));

T1=Theta1(:,2:size(Theta1,2)); 
T2=Theta2(:,2:size(Theta2,2));

for i=1:num_labels,

    c=i*ones(size(y));

    J = J -(1/m)*[(y==c)'*log(h1(:,i))+(1-(y==c))'*log(1-(h1(:,i)))]; 
end;

J = J + (lambda/(2*m))*(sum(sum(T1.^2))+sum(sum(T2.^2)));

for i=1:num_labels,
    Y(:,i)=(y==i);
end;

for t=1:m,

    a1=[1 X(t,:)];

    z2=Theta1*a1';
    a2=sigmoid(z2);

    a2=[1;a2];
    z3=Theta2*a2;
    a3=sigmoid(z3);

    del3=a3-Y(t,:)';

    del2=(Theta2'*del3).*[1;sigmoidGradient(z2)];
    del2=del2(2:end,:);

    Theta1_grad = Theta1_grad + del2*a1;
    Theta2_grad = Theta2_grad + del3*a2';
end;

Theta1_grad = (1/m) * Theta1_grad + ....
                      (lambda/m) * [zeros(size(Theta1, 1), 1) Theta1(:,2:end)];
Theta2_grad = (1/m) * Theta2_grad + ....
                      (lambda/m) * [zeros(size(Theta2, 1), 1) Theta2(:,2:end)];

grad = [Theta1_grad(:) ; Theta2_grad(:)];


end
