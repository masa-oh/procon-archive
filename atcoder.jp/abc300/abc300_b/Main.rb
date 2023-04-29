#!/usr/bin/env ruby
H, W = gets.split.map &:to_i
A = H.times.map { gets.chomp.chars }
B = H.times.map { gets.chomp.chars }

ans = false

H.times do |i|
  W.times do |j|
    flg = true
    H.times do |ii|
      W.times { |jj| flg = false if A[(i + ii) % H][(j + jj) % W] != B[ii][jj] }
    end
    ans = true if flg
  end
end

puts ans ? "Yes" : "No"
