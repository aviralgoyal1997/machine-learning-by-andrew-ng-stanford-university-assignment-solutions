function [J, grad] = costFunctionReg(theta, X, y, lambda)

m = length(y); 

[m,n]=size(X);
h=sigmoid(X*theta);

J = (sum((y.*log(h))+((1-y).*log(1-h))))*(-1/m) + ((lambda/(2*m))*(sum(theta.^2)-(theta(1,1) ^2)));
grad = zeros(size(theta));
grad1 = (1/m)*((h-y)' * X)';
grad(1,1)=grad1(1,1);
for i=2:n
    grad(i,1)=grad1(i,1)+((lambda/m)*theta(i,1));



end
