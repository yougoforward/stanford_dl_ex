function [f,g] = logistic_regression(theta, X,y)
  %
  % Arguments:
  %   theta - A column vector containing the parameter values to optimize.
  %   X - The examples stored in a matrix.  
  %       X(i,j) is the i'th coordinate of the j'th example.
  %   y - The label for each example.  y(j) is the j'th example's label.
  %

  m=size(X,2);
  
  % initialize objective value and gradient.
  f = 0;
  g = zeros(size(theta));


  %
  % TODO:  Compute the objective function by looping over the dataset and summing
  %        up the objective values for each example.  Store the result in 'f'.
  %
  % TODO:  Compute the gradient of the objective by looping over the dataset and summing
  %        up the gradients (df/dtheta) for each example. Store the result in 'g'.
  %
%%% YOUR CODE HERE %%%

  % linear_regression function realized by Hailong Zhu,email: hlzhu@tju.edu.cn
  % github address https://github.com/yougoforward/
  f = y*log(sigmoid((theta'*X)'))+(1-y)*log(1-sigmoid((theta'*X)'));
  g = X*(sigmoid((theta'*X))-y)';
  
  % end of relization by hlzhu
