require 'set'

N = gets.to_i
S = $<.map &:chomp
set = Set.new

S.each do |s|
  set << [s, s.reverse].min
end

p set.size