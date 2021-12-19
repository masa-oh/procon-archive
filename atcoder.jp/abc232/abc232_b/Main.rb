require 'set'
s,t=$<.map &:chomp
alps=[*'a'..'z'].map.with_index{|a,i|[a,i]}.to_h
s=s.chars.map{alps[_1]}
t=t.chars.map{alps[_1]}

set=Set.new
s.zip(t).each{|i,j|
  set << (i-j)%26
}
puts set.size==1 ? :Yes : :No