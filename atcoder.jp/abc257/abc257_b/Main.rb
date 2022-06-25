(n,k,q),a,l=$<.map{_1.split.map &:to_i}
g=Hash.new{|h,k|h[k]=false}
a.map{g[_1]=true}
l.map{|ll|
  tmp=g.select{|k,v|v}.keys.sort[ll-1]
  if !g[tmp+1] && (tmp+1 < n+1)
    g[tmp+1]=true
    g[tmp]=false
  end
}
puts g.select{|k,v|v}.keys.sort*' '