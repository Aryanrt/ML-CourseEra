function J = computeCost(X, y, theta)
%COMPUTECOST Compute cost for linear regression
%   J = COMPUTECOST(X, y, theta) computes the cost of using theta as the
%   parameter for linear regression to fit the data points in X and y

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;

% display("aaaa"), disp(theta(1)), disp(theta(2));
% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta
%               You should set J to the cost.
result =0.00;

for i = 1:m,
	result = result + (theta(1) + theta(2) * X(i,2) - y(i))^2;
end;

result = result / (2 *m);
J = result;

% A Nicer Way
% a =0.00;
% temp = X * theta;
% disp("temp"), disp(temp);
% for i = 1:m,
%	a = a + (temp(i) - y(i))^2;
%end;
% disp ("The value of pi is 3:"), disp (J);
%  disp ("The value of new is 3:"), disp (a / (2*m));


% =========================================================================

end
