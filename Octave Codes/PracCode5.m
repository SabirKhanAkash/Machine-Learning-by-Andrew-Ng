%Vectorized Implementation of Linear Regression

theta = [12 34; 34 56; 23 67; 23 34];
x = [32 44 34; 34 26 34; 3 44 45; 78 33 89];
Prediction = theta' * x


%Vectorized Implementation of Gradient Descent

delta = [12 4; 34 6; 3 67; 33 34];
alpha = [32 42 34; 4 26 4; 3 4 4; 7 3 89];
theta = theta - alpha * delta