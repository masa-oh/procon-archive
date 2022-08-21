(n,m,t),as,*xy=$<.map{_1.split.map &:to_i}
flg=true
h=xy.to_h
as.each_with_index{|a,i|
  break flg=false if t<=a
  t-=a
  t+=h[i+2] if h[i+2]
}
puts flg ? :Yes : :No