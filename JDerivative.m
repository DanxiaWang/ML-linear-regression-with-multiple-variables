function [d] = JDerivative(theta, X, y)
  
  [m,n] = size(X);
  
  d = sum(error(theta, X, y).*X)./m;
  d=d';
  
end