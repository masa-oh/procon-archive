(n,),*xy=$<.map{_1.split.map &:to_i}
ans=0
[*0...n].combination(2).each{|a,b|
  tmp=Math::sqrt((xy[a][0]-xy[b][0]).abs**2+(xy[a][1]-xy[b][1]).abs**2)
  ans=tmp if tmp>ans
}
p ans