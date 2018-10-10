num_features = 2
num_samples = 50
num_classes = 5

X = rand(num_features, num_samples)
y = zeros(num_classes, num_samples)

[num_rows, num_cols] = size(y)

for col = 1:num_cols
    idx = randi([1, num_classes])
    y(idx, col) = 1
end



