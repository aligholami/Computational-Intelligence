function [ret] = sigmoid_prime(input_mat)
    ret = (1 - sigmoid(input_mat).^2) / 2;
end
