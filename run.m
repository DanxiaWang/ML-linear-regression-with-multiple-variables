clear; close all; clc
% Programming exercise 2

printf('Loading the data...\n');

[X, y] = loadData('data.txt');

printf('\nCheking if data is loaded successfully...\n');

printf('Expected diemnsions of X: 100 x 4\n');
printf('   Found dimensions of X: %s\n', sprintf('%d x %d', size(X)));
printf('Expected length of y: 100\n');
printf('   Found length of y: %d\n', length(y));
printf('Expected value of X(6,2): 141.639019\n');
printf('   Found value of X(6,2): %f\n', X(6,2));
printf('Expected value of X(13,1): 1\n');
printf('   Found value of X(13,1): %f\n', X(13,1));
printf('Expected value of y(20): 2789.130395\n');
printf('   Found value of y(20): %f\n', y(20));

printf('\nPress enter to move forward.\n');
pause;



printf('\nCheking if feature scaling works correctly...\n');

X = featureScale(X);

printf('Expected diemnsions of X: 100 x 4\n');
printf('   Found dimensions of X: %s\n', sprintf('%d x %d', size(X)));
printf('Expected value of X(6,2): 1.328419\n');
printf('   Found value of X(6,2): %f\n', X(6,2));
printf('Expected value of X(23,1): 1\n');
printf('   Found value of X(23,1): %f\n', X(23,1));


%printf('Plotting data...\n');
%plotData(x, y, 'x', 'y');
%printf('Please check if the plot seems right.\n');

printf('\nPress enter to move forward.\n');
pause;

printf('Checking if the function h works right...\n');

theta = [1; 2; 3; 4];
printf('Using theta = [1; 2; 3; 4] for tests\n');
printf('estimates = h(theta, X);\n');
estimates = h(theta, X);

printf('Expected length of estimates: 100\n');
printf('   Found length of estimates: %d\n', length(estimates));

printf('  Expected value of estimates(10): 8.519261\n');
printf('Calculated value of estimates(10): %f\n', estimates(10));

printf('\nPress enter to move forward.\n');
pause;


printf('Checking if the error function works right...\n');

printf('e = error(theta, X, y);\n');
e = error(theta, X, y);

printf('Expected length of e: 100\n');
printf('   Found length of e: %d\n', length(e));
printf('  Expected value of e(34): -1852.953797\n');
printf('Calculated value of e(34): %f\n', e(34));

printf('\nPress enter to move forward.\n');
pause;



printf('Checking if the function J works right...\n');

printf('  Expected value of J(theta, X, y): 4427644.377183\n');
printf('Calculated value of J(theta, X, y): %f\n', J(theta, X, y));
printf('  Expected value of J([4; 3; 2; 1], X, y): 4419401.226948\n');
printf('Calculated value of J([4; 3; 2; 1], X, y): %f\n', J([4; 3; 2; 1], X, y));

printf('\nPress enter to move forward.\n');
pause;



printf('Checking if the function JDerivative works right...\n');

printf('d = JDerivative(theta, X, y);\n');
d = JDerivative(theta, X, y);

printf('Expected length of d: 4\n');
printf('   Found length of d: %d\n', length(d));
printf('  Expected value of d(3): -46.271893\n');
printf('Calculated value of d(3): %f\n', d(3));

printf('\nPress enter to move forward.\n');
pause;


printf('Checking if gradientDescent finds optimal theta values...\n');

alpha = 0.1;
numIter = 100;

printf('[theta] = gradientDescent([0; 0; 0; 0], X, y, alpha, numIter);\n');
[theta] = gradientDescent([0; 0; 0; 0], X, y, alpha, numIter);
printf('  Expected value of theta: [2867.633576, 729.011602, -44.874866, 329.799123]\n');
printf('Calculated value of theta: %s\n', sprintf('[%f, %f, %f, %f]', theta));


printf('\nPress enter to move forward.\n');
pause;


printf('Plotting the changing cost with each gradientDescent step...\n');

[theta, costs] = gradientDescent([0; 0; 0; 0], X, y, alpha, numIter);

plotData(0:(length(costs)-1), costs, 'iteration', 'cost');


