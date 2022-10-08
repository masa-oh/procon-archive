(n,m),*kx=$<.map{_1.split.map &:to_i}
ary=Array.new(n){Array.new(n,false)}
n.times.map{ary[_1][_1]=true}

kx.each{|(k,*xs)|
  xs.product(xs).each{|a,b|
    ary[a-1][b-1]=true
    ary[b-1][a-1]=true
  }
}
puts ary.all?{|v|v.all?(true)} ? :Yes : :No