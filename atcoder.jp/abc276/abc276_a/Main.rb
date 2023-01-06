#!/usr/bin/env ruby
S = gets.chomp.chars
ans = -1
S.each_with_index { |s, i| ans = i + 1 if s == "a" }
p ans
