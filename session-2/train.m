function train(X, y, l1_p, l2_p)
    
    X = augment_matrix(X)
    [num_rows, num_cols] = size(X)
    l1_w = rand(num_rows, l1_p)
    l2_w = rand(l1_p, l2_p)
    
    o_1 = sigmoid(l1_w.' * X)
    o_2 = l2_w.' * o_1
    o_2 = o_2.'
    
end