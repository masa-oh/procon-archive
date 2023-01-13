#!/usr/bin/env ruby
N, K = $<.read.split.map &:to_i
ans = 0
(1..N).each { |i| (1..N).each { |j| ans += 1 if (K - i - j).between?(1, N) } }
p ans
