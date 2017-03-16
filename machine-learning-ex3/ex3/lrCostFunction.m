function [J, grad] = lrCostFunction(theta, X, y, lambda)
%LRCOSTFUNCTION Compute cost and gradient for logistic regression with 
%regularization
%   J = LRCOSTFUNCTION(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples
[m,n]=size(X);
% You need to return the following variables correctly 
J = 0;

h=sigmoid(X*theta);
J = (sum((y.*log(h))+((1-y).*log(1-h))))*(-1/m) + ((lambda/(2*m))*(sum(theta.^2)-(theta(1,1) ^2)));
grad = zeros(size(theta));
grad1 = (1/m)*((h-y)' * X)';
grad(1,1)=grad1(1,1);
for i=2:n
    grad(i,1)=grad1(i,1)+((lambda/m)*theta(i,1));
















grad = grad(:);

end
