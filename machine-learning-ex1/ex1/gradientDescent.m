function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
gradient  = zeros(2,1);
j1 = zeros(m,1);
j2 = zeros(m,1);

for iter = 1:num_iters
    for i=1:m
        b = X(i,:);
        a = (b*theta);
        c = y(i);
        j1(i) = (a - c);
        j2(i) = (a - c)*X(i,2);
    end
    gradient(1,1) = (1/m)*sum(j1);
    gradient(2,1) = (1/m)*sum(j2);
    theta(1,1) = theta(1,1) - (alpha*gradient(1,1));
    theta(2,1) = theta(2,1) - (alpha*gradient(2,1));  
    J_history(iter) = computeCost(X, y, theta);

end

end
