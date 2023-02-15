#!/usr/bin/env ruby
N = gets.to_i
XY = N.times.map { gets.split.map &:to_i }
(Q,), *ABCD = $<.map { _1.split.map(&:to_i) }
H = W = 1500

dots = Array.new(H) { Array.new(W, 0) }
acc = Array.new(H + 1) { Array.new(W + 1, 0) }

XY.each { |x, y| dots[x - 1][y - 1] += 1 }

# X方向の累積和
(0..H - 1).each do |i|
  (0..W - 1).each { |j| acc[i + 1][j + 1] = acc[i][j + 1] + dots[i][j] }
end

# Y方向の累積和
(0..H - 1).each do |i|
  (0..W - 1).each { |j| acc[i + 1][j + 1] += acc[i + 1][j] }
end

ABCD.each do |a, b, c, d|
  puts acc[c][d] - acc[a - 1][d] - acc[c][b - 1] + acc[a - 1][b - 1]
end
