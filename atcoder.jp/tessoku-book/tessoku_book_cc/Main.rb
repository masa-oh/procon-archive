#!/usr/bin/env ruby
n = gets.chomp.chars
ans = 0
(0...n.size).each { |i| ans += (n[i] == "1" ? 1 : 0) * (2**(n.size - i - 1)) }
p ans
