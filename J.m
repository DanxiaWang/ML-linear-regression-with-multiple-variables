function [cost] = J(theta, X, y)
  m=length(y);
  cost = 1./(2*m).*error(theta, X, y)'*error(theta, X, y);
end