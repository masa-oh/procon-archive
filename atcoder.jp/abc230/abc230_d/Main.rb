(n,d),*lr=$<.map{_1.split.map &:to_i}
x=-10**18
ans=0
lr.sort_by{_2}.each{|l,r|
  (ans+=1; x=r) if x+d-1<l
}
p ans