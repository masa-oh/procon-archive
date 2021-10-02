require 'set'

n=gets.to_i
(p(n) && exit) if n<=3

s=Set.new
(2..Integer.sqrt(n)).each{|i|
  (2..).each{|j|
    i**j<=n ? s << i**j : break
  }
}
p n-s.size