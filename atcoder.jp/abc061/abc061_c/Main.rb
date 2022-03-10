(n,k),*ab=$<.map{_1.split.map &:to_i}
h=Hash.new{|h,k|h[k]=0}
ab.each{|a,b|h[a]+=b}
h.keys.sort.each{|key|
  k>h[key] ? k-=h[key] : (puts key; break)
}