#!/usr/bin/env ruby
(n, m), *ab = $<.map { _1.split.map(&:to_i) }
g = Array.new(n) { [] }
ab.each do |a, b|
  g[a - 1] << b
  g[b - 1] << a
end
g.each { |arr| puts [arr.size, *arr.sort].join(" ") }
