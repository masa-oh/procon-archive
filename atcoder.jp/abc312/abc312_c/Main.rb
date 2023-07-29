#!/usr/bin/env ruby
(N, M), A, B = $<.map{_1.split.map(&:to_i)}
A.sort!
B.sort!.reverse!
l = 0
r = 10**9 + 10
ans = (l..r).bsearch do |x|
  a = (A.bsearch_index{_1 > x} || A.size)
  b = (B.bsearch_index{_1 < x} || B.size)
  # p "#{x}円で売ってもいいと思っている：#{a}人"
  # p "#{x}円で買ってもいいと思っている：#{b}人"
  a >= 0 && b >= 0 && a >= b
end
p ans