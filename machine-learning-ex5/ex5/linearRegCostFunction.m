function [J, grad] = linearRegCostFunction(X, y, theta, lambda)
m=length(y);
J = 0;
grad = zeros(size(theta));
[m,n]=size(X);
J=(sum(((X*theta)-y).^2))/(2*m) + ((lambda/(2*m))*(sum(theta.^2)-(theta(1,1) ^2)));
J


grad = zeros(size(theta));
grad1 = (1/m)*(((X*theta)-y)' * X)';
grad(1,1)=grad1(1,1);
for i=2:n
    grad(i,1)=grad1(i,1)+((lambda/m)*theta(i,1));


end
