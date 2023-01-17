#!/usr/bin/env ruby
(D,), (N,), *LR = $<.map { _1.split.map(&:to_i) }

arr = Array.new(D + 1) { [0, 0] }

LR.each do |l, r|
  arr[l - 1][0] += 1
  arr[r][1] += 1
end

c = 0

D.times do |d|
  c += arr[d][0] - arr[d][1]
  puts c
end
