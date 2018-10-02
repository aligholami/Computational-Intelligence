function sigmoid_prime = sigmoid_prime(input_matrix)
    (num_rows, num_cols) = size(input_matrix)

    mat_output = zeros(num_rows, num_cols)

    for row 1:num_rows
        for col 1:num_cols
            mat_output[row][col] = (1 - sigmoid(input_matrix)).^2 / 2
        end
    end
end