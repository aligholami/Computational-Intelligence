function [ augmented ] = augment_matrix( input_matrix )
    
    [num_rows, num_cols] = size(input_matrix)
    
    ones_row = ones(1, num_cols)
    
    augmented = [input_matrix;ones_row];
end

