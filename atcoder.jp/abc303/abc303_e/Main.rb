#!/usr/bin/env ruby
(n,), *uv = $<.map { _1.split.map(&:to_i) }
g = Hash.new { [] }
uv.each do |u, v|
  g[u] <<= v
  g[v] <<= u
end

ans = []
g.select { |_, v| v.size > 2 }.each { |k, v| ans << v.size }
((n - ans.size - ans.sum) / 3).times { ans << 2 }

puts ans.sort * " "
