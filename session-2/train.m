function train(X, y, l1_p, l2_p, learning_rate)
    
    % Augment Input
    X = augment_matrix(X)
    
    % Intermediate Multiplications
    [num_rows, num_cols] = size(X)
    l1_w = rand(num_rows, l1_p)
    l2_w = rand(l1_p, l2_p)
    
    o_1 = sigmoid(l1_w.' * X)
    o_2 = l2_w.' * o_1
    % o_2 = o_2.'
    
    % Compute Error [num_classes, num_samples]
    err = o_2 - y
    
    l2_prime = 1
    
    sigma_2 = err * l2_prime
    
    % [5, 8] - [8, 1000] - [5, 1000] = [5, 5]
    sigma_1 = l2_w * sigma_2 * sigmoid_prime(o_1.')
    
    % Update layer 2 weights
    l2_w = l2_w + learning_rate * o_1 * sigma_2.'
    
    % Update layer 1 weights
    % l1_w = l1_w + learning_rate * X * sigma_1.'
    
end