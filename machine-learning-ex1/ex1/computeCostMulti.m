function J = computeCostMulti(X, y, theta)
%COMPUTECOSTMULTI Compute cost for linear regression with multiple variables
%   J = COMPUTECOSTMULTI(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.

%for i=1:m,
%    inc = 0;
%    for j=1:size(X,2),
%        inc += theta(j)*X(i,j);
%    end
%    J += (inc-y(i)).^2;
%end
%J = J/(2*m);

% A better vectorization way to calculate J
J = (X*theta-y)'*(X*theta-y)/(2*m);

% =========================================================================

end
