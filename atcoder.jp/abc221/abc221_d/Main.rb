(n,),*ab=$<.map{_1.split.map &:to_i}

x=[]
ab.each{|a,b|x<<[a,1];x<<[a+b,-1]}
x.sort_by!{_1[0]}

ans=Array.new(n+1,0)
c=0
(0..x.size-2).each{|i|
  c += x[i][1]
  ans[c] += x[i+1][0]-x[i][0]
}
puts ans[1..]