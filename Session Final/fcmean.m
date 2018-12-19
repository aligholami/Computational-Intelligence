function [centers] = fcmean(data, num_iters, num_clusters)

[num_rows, num_cols] = size(data);

% U Matrix -> Shows membershipness of data in clusters
U = zeros(num_rows, num_clusters);

% Center of clusters
V = zeros(num_cols, num_clusters);

% A fuzzy variable 
m = 2;
eps_val = 0.01;

% Performs the center selection according to slide 8/13 in lecture 17_11_B
for e = 1: num_iters
    for i = 1: num_clusters
        nominator = 0;
        denominator = 0;
           
        % Step 2
        for k = 1:num_rows
            nominator = nominator + U(k, i).^m * data(k, :);
            denominator = denominator + U(k, i).^m; 
            size(nominator)
            size(denominator)
            V(:,i) = nominator ./ denominator;
            
            % Step 3
            denom_update_rule = 0;
            updated_U = 0;
            for j = 1:num_clusters
                nom = abs(data(k, :) - V(i));
                denom = abs(data(k, :) - V(j));
                denom_update_rule = denom_update_rule + nom / denom;
            end
            
            
            updated_U = 1 / denom_update_rule;
            % Step 4 (stop condition)
            if abs(U(k:i) - updated_U) < eps_val
                break
            end
            U
        end
    end 
end

centers = V;
end