function [J, grad] = costFunction(theta, X, y)

m = length(y); 
h=sigmoid(X*theta);

J = (sum((y.*log(h))+((1-y).*log(1-h))))*(-1/m);
grad= zeros(size(theta));
grad = (1/m)*((h-y)' * X)';










end
