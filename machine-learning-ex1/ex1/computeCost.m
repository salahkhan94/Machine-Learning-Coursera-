function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.



m = length(y); % number of training examples
j = zeros(m,1);
for i=1:m
    b = X(i,:);
    a = (b*theta);
    c = y(i);
    j(i) = (a - c)^2;
end
% You need to return the following variables correctly 
J = sum(j)/(2*m);


% =========================================================================

end
