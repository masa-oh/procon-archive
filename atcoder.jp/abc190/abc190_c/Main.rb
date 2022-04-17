require 'set'
n,m=gets.split.map &:to_i
ab=m.times.map{gets.split.map &:to_i}
k=gets.to_i
cd=k.times.map{gets.split.map &:to_i}

ans=0
[0,1].repeated_permutation(k).each{|ary|
  set=Set.new
  ary.each_with_index{|v,i|set << cd[i][v]}
  ans=[ans, ab.count{|a,b|set.include?(a) && set.include?(b)}].max
}
p ans