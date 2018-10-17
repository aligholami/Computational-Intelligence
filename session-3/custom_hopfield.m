function [ output_args ] = custom_hopfield(num_iters, num_starts, target)

[num_rows, num_cols] = size(target);


hop_weights = ceil(rands(num_rows, num_cols));

% -1 on final rows and cols
hop_weights(:, num_cols) = -1;
hop_weights(num_rows, :) = -1;

% 0 on main diag
for row = 1:num_rows
    for col = 1:num_cols
        hop_weights(row, col) = 0; 
    end
end

% Reshape the input and the weights
new_shape = num_cols * num_rows;

hop_weights = reshape(hop_weights, [new_shape, 1]);
target = reshape(targets, [new_shape, 1]);

for i = 1:num_iters
   
    nxt = hop_weights * 
    
end


end

