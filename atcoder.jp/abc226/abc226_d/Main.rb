require 'set'
(n,),*xy=$<.map{_1.split.map &:to_i}

s=Set.new
(0...n).each{|i|
  (0...n).each{|j|
    next if i==j
    a=xy[j][0]-xy[i][0]
    b=xy[j][1]-xy[i][1]
    d=a.gcd(b)
    a/=d
    b/=d
    s<<[a,b]
  }
}
p s.count