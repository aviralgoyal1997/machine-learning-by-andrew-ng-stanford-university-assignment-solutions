function g = sigmoid(z)

g = zeros(size(z));

g=(1+exp(-z)).^-1;
end
