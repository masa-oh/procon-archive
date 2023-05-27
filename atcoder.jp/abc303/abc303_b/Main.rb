#!/usr/bin/env ruby
require "set"
(n, m), *a = $<.map { _1.split.map(&:to_i) }
set = Set.new
a.each do |row|
  if row.size == 2
    set << row.sort
  end

  row.each_cons(3) do |pv, v, nv|
    set << [pv, v].sort
    set << [v, nv].sort
  end
end

ans = 0
(1..n - 1).each do |i|
  (i + 1..n).each { |j| ans += 1 if !set.include?([i, j]) }
end

p ans
