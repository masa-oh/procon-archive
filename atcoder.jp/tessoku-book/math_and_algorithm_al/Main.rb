#!/usr/bin/env ruby
(T,), (N,), *LR = $<.map { _1.split.map(&:to_i) }
c = Array.new(T + 1, 0)
LR.each do |l, r|
  c[l] += 1
  c[r] -= 1
end
acc = [c[0]]
(1..T - 1).each { |i| acc[i] = acc[i - 1] + c[i] }
puts acc
