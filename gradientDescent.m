function [theta, costs] = gradientDescent(theta, X, y, alpha, maxIter)
  m = length(y);
	costs = [J(theta, X, y)];
  for i = 1:maxIter
    theta_new = theta - (alpha.*JDerivative(theta, X, y));
    theta = theta_new;
		costs = [costs J(theta, X, y)];
  end
end
