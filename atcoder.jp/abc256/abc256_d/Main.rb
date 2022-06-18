(n,),*lr=$<.map{_1.split.map &:to_i}
lr=lr.flat_map{|l,r|[l,0,r,1]}.each_slice(2).sort_by{|v1,v2|[v1,v2]}

l=0
cnt=0
lr.each{|v1,v2|
  if v2==0
    l=v1 if cnt==0
    cnt+=1
  else
    cnt-=1
    puts [l,v1]*' ' if cnt==0
  end
}