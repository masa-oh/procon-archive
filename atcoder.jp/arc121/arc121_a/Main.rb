N = gets.to_i
X = []
Y = []
ans = []
N.times do
  x, y = gets.split(" ").map(&:to_i)
  X << x
  Y << y
end

X_max = X.max(2)
X_min = X.min(2)
Y_max = Y.max(2)
Y_min = Y.min(2)

ans << (X_max[0] - X_min[0]).abs if (X_max[0] - X_min[0]).abs > (Y[X.index(X_max[0])] - Y[X.index(X_min[0])]).abs
ans << (X_max[0] - X_min[1]).abs if (X_max[0] - X_min[1]).abs > (Y[X.index(X_max[0])] - Y[X.index(X_min[1])]).abs
ans << (X_max[1] - X_min[0]).abs if (X_max[1] - X_min[0]).abs > (Y[X.index(X_max[1])] - Y[X.index(X_min[0])]).abs

ans << (Y_max[0] - Y_min[0]).abs if (Y_max[0] - Y_min[0]).abs >= (X[Y.index(Y_max[0])] - X[Y.index(Y_min[0])]).abs
ans << (Y_max[0] - Y_min[1]).abs if (Y_max[0] - Y_min[1]).abs >= (X[Y.index(Y_max[0])] - X[Y.index(Y_min[1])]).abs
ans << (Y_max[1] - Y_min[0]).abs if (Y_max[1] - Y_min[0]).abs >= (X[Y.index(Y_max[1])] - X[Y.index(Y_min[0])]).abs

puts ans.max(2)[1]