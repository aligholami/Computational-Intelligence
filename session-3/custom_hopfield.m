function [ output_args ] = custom_hopfield(num_iters, target)

[num_rows, num_cols] = size(target);

hop_weights = ceil(rands(num_cols, num_cols));

% -1 on final rows and cols
hop_weights(:, num_cols) = -1;
hop_weights(num_rows, :) = -1;

% 0 on main diag
for row = 1:num_rows
    for col = 1:num_cols
        hop_weights(row, col) = 0; 
    end
end

converged_matrix = []
 
for i = 1:num_iters
    % Hop_weights is a matrix of    
    nxt = target * hop_weights
    nxt = sign(nxt)
    target = nxt
    converged_matrix = nxt
end

output_args = converged_matrix

end

