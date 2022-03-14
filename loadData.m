function [X, y] = loadData(filename)
  data = load(filename);
  [m, n] = size(data);
  X = [ones(m,1), data(:, 1:n-1)];
	y = data(:, n);

end
