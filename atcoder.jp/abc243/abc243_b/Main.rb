(n,),a,b=$<.map{_1.split.map &:to_i}
ans=[0,0]
aa=[]
bb=[]
n.times{|i|
  if a[i]==b[i]
    ans[0]+=1
  else
    aa << a[i]
    bb << b[i]
  end
}
ans[1]=aa.size-(aa-bb).size
puts ans