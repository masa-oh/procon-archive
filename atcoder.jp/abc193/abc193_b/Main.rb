n,*apx=$<.map{_1.split.map &:to_i}
ans=10**10
apx.each{|a,p,x|
  ans=p if a<x && ans>p
}
p ans!=10**10 ? ans : -1