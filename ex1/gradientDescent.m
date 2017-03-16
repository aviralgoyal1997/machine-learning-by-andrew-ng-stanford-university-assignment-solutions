function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
alpha=0.01;
m = length(y); 
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

  temp=theta-(alpha/m)*((((X*theta)-y)')*X)';
  theta=temp;
    J_history(iter) = computeCost(X, y, theta);

end
size(J_history)
end
