function plotData(x, y, xLabel, yLabel)

figure; % open a new figure window
plot(x, y, 'ro', 'MarkerSize', 10);
set(gca, 'linewidth', 2, 'fontsize', 22);
xlabel(xLabel); % Set the x-axis label
ylabel(yLabel); % Set the y-axis label

end


