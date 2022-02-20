require 'set'
(n,x),*ab=$<.map{_1.split.map &:to_i}
set=Set.new
n.times.map{|i|
  a,b=ab[i]
  if i==0
    set=Set[a,b]
  else
    nset=Set.new
    set.map{_1+a}.each{nset<<_1}
    set.map{_1+b}.each{nset<<_1}
    set=nset
  end
}
puts set.include?(x) ? :Yes : :No