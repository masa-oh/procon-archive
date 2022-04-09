INF=Float::INFINITY
n,k,*a=$<.read.split.map &:to_i
j=-1
ans=INF
a.map.with_index{|v,i|[v,i]}.sort_by{|v,i|[v,-i]}.each{|v,i|
  if k<=i
    next if j==-1
    ans=[ans,i-j].min
  else
    j=[i,j].max
  end
}
puts ans!=INF ? ans : -1