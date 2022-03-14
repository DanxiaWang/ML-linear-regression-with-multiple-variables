function [X] = featureScale(X)
  X = (X-mean(X))./std(X);
  X(:,1)=1;
  end