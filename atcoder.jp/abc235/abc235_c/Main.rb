(n,q),a,*xk=$<.map{_1.split.map &:to_i}
g=Hash.new{|h,k|h[k]=[]}
a.each_with_index{|v,i|g[v]<<i+1}
xk.each{|x,k|
  puts g[x] ? g[x][k-1]||-1 : -1
}