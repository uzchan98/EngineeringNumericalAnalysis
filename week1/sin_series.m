% sin series approximation using 50 terms
clc;
clear;
close all;

% Define the range of x values
x = linspace(-2*pi, 2*pi, 1000);

% Calculate the actual sin(x) for reference
actual_sin = sin(x);

% Number of terms to include in the Taylor series
num_terms = 7;

% Initialize the Taylor series approximation
taylor_approx = zeros(size(x));

% Loop through the terms of the Taylor series
for n = 0:num_terms-1
    % Add the nth term of the Taylor series
    taylor_approx = taylor_approx + ((-1)^n * x.^(2*n + 1)) / factorial(2*n + 1);
end

% Plot results
figure;
hold on;
grid on;
title(sprintf('Sin(x) Approximation Using Taylor Series (%d Terms)',num_terms));
xlabel('x');
ylabel('y');
plot(x, actual_sin, 'k', 'LineWidth', 2, 'DisplayName', 'Actual sin(x)');
plot(x, taylor_approx, 'r--', 'LineWidth', 1.5, 'DisplayName', 'Taylor Approximation (50 Terms)');
legend show;
hold off;
