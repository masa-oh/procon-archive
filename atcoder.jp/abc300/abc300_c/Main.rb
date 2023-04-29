#!/usr/bin/env ruby
H, W = gets.split.map &:to_i
C = $<.map { _1.chomp.chars }
N = [H, W].min

ans = false

counts = Array.new(H) { Array.new(W, 0) }
ans = Array.new(N, 0)

# 前処理
(1..H - 1).each do |i|
  (1..W - 1).each do |j|
    if C[i][j] == "#" && C[i - 1][j - 1] == "#"
      counts[i][j] = counts[i - 1][j - 1] + 1
    end
  end
end

(1..H - 2).each do |i|
  (1..W - 2).each do |j|
    next if C[i][j] == "."

    if C[i - 1][j - 1] == "#" && C[i - 1][j + 1] == "#" &&
         C[i + 1][j - 1] == "#" && C[i + 1][j + 1] == "#"
      size = counts[i][j]
      ans[size - 1] += 1
    end
  end
end

puts ans * " "
