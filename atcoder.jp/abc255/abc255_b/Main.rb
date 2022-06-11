(n,k),a,*xy=$<.map{_1.split.map &:to_i}
ary=[*1..n]-a
ans=0
ary.each{|i|
  x0, y0 = xy[i-1]
  tmp=Float::INFINITY
  a.each{|j|
    x1, y1 = xy[j-1]
    tmp = [(x0-x1)**2+(y0-y1)**2, tmp].min
  }
  ans=[ans, tmp].max
}
puts Math.sqrt(ans)