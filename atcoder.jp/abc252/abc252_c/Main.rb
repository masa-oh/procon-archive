require 'set'
n=gets.to_i
s=$<.map{_1.chomp.chars.map &:to_i}
min=10**9
ary=(0..9).map{|i|
  s.map{|nums|nums.index(i)}
}
ary.each{|ts|
  set=Set.new
  ts.each{|t|
    t+=10 while set.include? t
    set << t
  }
  min=[set.max, min].min
}
p min