function g = sigmoid(z)
%SIGMOID Compute sigmoid function
%   g = SIGMOID(z) computes the sigmoid of z.
s = size(z);
% You need to return the following variables correctly 
g = zeros(size(z));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the sigmoid of each value of z (z can be a matrix,
%               vector or scalar).
for c = 1:s(1)
    for r = 1:s(2)
        g(c,r) = 1/(1 + (exp(-z(c,r))));
    end
end


% =============================================================

end
