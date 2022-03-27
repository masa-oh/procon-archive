(n,),*xy=$<.map{_1.split.map &:to_i}
ans=10**18
(0..n-2).each{|i|
  (i+1..n-1).each{|j|
    ax,ay=xy[i]
    bx,by=xy[j]
    ans=[ans, Math.sqrt((ax-bx)**2 + (ay-by)**2)].min
  }
}
p ans