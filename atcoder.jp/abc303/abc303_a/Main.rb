#!/usr/bin/env ruby
n = gets.to_i
s = gets.chomp
t = gets.chomp
ans = s.gsub(/0/, "o").gsub(/1/, "l") == t.gsub(/0/, "o").gsub(/1/, "l")
puts ans ? :Yes : :No
