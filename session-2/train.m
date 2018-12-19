function train_once(X, y, l1_p, l2_p, learning_rate, num_epochs)

    % Augment Input
    X = augment_matrix(X)

    % Intermediate Multiplications
    [num_rows, num_cols] = size(X)

    % Layer 1 weight dims: [P, J]
    l1_w = rand(num_rows, l1_p)

    % Layer 2 weight dims: [J, K]
    l2_w = rand(l1_p, l2_p)
    
    for i=1:num_epoch

        o_1 = sigmoid(l1_w.' * X)
        o_2 = l2_w.' * o_1
        % o_2 = o_2.'

        % Compute Error [num_classes, num_samples]
        % Error dims: [K, 1]
        err = o_2 - y

        % Linear activation on layer 2
        l2_prime = 1

        % Sigma2 dims: [K, 1]
        sigma_2 = err * l2_prime

        % Sigma1 dims: [J, 1]
        sigma_1 = l2_w * sigma_2 * sigmoid_prime(o_1.')

        % Update layer 2 weights
        l2_w = l2_w + learning_rate * o_1 * sigma_2.'

        % Update layer 1 weights
        %  [P, 1] * [J, 1].T = [P, J]
        l1_w = l1_w + learning_rate * X * sigma_1.'

    end

end