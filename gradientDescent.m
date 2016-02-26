function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %

H = X * theta; %evaluated hypothesis function 
D = H - y; %diff versus observed
thetaChange = (alpha/m)*(X' * D); % sum of "delta" times x for each x in X
%update theta
thetaNew = theta - thetaChange;
theta = thetaNew;


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);
    
    %debug print
%    fprintf('New theta value: \n');
%    theta
%    fprintf('Cost function value:: \n');
%    J_history(iter) 
%    pause;
end

end
