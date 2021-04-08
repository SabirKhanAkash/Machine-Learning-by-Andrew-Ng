options = optimset('GradObj', 'on', 'Maxiter', '100');
initialTheta = zeros(2,1)
[optTheta, functionVal, exitFlag] = fminunc(@costFunction(initialTheta), initialTheta, options);

optTheta
functionVal
exitFlag

