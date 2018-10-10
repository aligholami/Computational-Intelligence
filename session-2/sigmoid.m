function [ret] = sigmoid(input_mat)
    ret = 2 ./ (1 + exp(-input_mat)) - 1;
end