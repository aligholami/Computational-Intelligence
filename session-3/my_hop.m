data = load('data.mat');

data_p = zeros(400, 10);

for i = 1:10
    data_p(:, i) = reshape(double(numbers{i}), [400, 1]);
end

% query = data_p(:, 6);
query = rands(400, 1);
    
hopfield_network = newhop(data_p);
[Y, Pf, Af] = hopfield_network(cell(10, 50), {}, query);

imagesc(reshape(Y{end}, [20, 20]));

