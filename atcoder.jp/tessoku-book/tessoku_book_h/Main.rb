#!/usr/bin/env ruby
H, W = gets.split.map &:to_i
X = H.times.map { gets.split.map &:to_i }
(Q,), *ABCD = $<.map { _1.split.map(&:to_i) }

acc = Array.new(H + 1) { Array.new(W + 1, 0) }
(1..H).each do |i|
  (1..W).each do |j|
    acc[i][j] += acc[i - 1][j] + acc[i][j - 1] - acc[i - 1][j - 1]
    acc[i][j] += X[i - 1][j - 1]
  end
end

ABCD.each do |a, b, c, d|
  puts acc[c][d] - acc[c][b - 1] - acc[a - 1][d] + acc[a - 1][b - 1]
end
