require 'set'
gets
set=Set.new(gets.split.map &:to_i)
p (0..2001).find{|i|!set.include?(i)}