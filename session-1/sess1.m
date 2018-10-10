x = ones(2, 4)
y = [1 10 1.03 sin(pi/4);[3, 20, 1.06, sin(pi/2)];[5, 30, 1.09, sin(3*pi/4)];[7, 40, 1.12, sin(pi)]]
z = identity(4)
w = inv(y)

M = sigmoid(2 * x * y * z * w)