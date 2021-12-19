require 'set'
n,m=gets.split.map &:to_i
ab=m.times.map{gets.split.map &:to_i}
cd=m.times.map{gets.split.map &:to_i}

set1=Set.new(ab.map{_1.sort})
flg=false

[*0...n].permutation.each{|ary|
  set2=Set.new(cd.map{|c,d|[ary[c-1]+1, ary[d-1]+1].sort})
  flg=true if set1==set2
}
puts flg ? :Yes : :No