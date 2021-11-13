require 'set'
n,*s=$<.read.split.map &:to_i
set=Set.new

(1..150).each{|a|
  (1..150).each{|b|
    set<<4*a*b+3*a+3*b
  }
}
p s.count{!set.include?(_1)}