(n,p,q,r),a=$<.map{_1.split.map &:to_i}
h=Hash.new(false) # 累積和
x=0
h[x]=true
n.times.each{|i|x+=a[i];h[x]=true}
flg=false
h.keys.each{|k|
  flg=true if h[k+p] && h[k+p+q] && h[k+p+q+r]
}
puts flg ? :Yes : :No