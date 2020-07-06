function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

thetaX = sigmoid(X* theta);

for i=1:m,
	J += (-y(i) *log(thetaX(i)) -(1-y(i))*(log(1- thetaX(i))));
end;
for i=2:size(X,2),
	J += ((lambda * (theta(i)^2))/2);
end;

J /=  m;

for j=1:size(X,2),
	temp = 0;
	for i=1:m,
	 	temp += (( thetaX(i) - y(i))*X(i,j));
	end;
	if(j>1)
		temp += ( lambda * theta(j));
	endif;
	grad(j) = temp/m;
end;




% =============================================================

end
