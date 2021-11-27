(n,w),*ab=$<.map{_1.split.map &:to_i}
ab.sort_by!{|a,b|-a}
ans=0
ab.each{|a,b|
  c=[b,w].min
  ans+=a*c
  w-=c
  break if w==0
}
p ans