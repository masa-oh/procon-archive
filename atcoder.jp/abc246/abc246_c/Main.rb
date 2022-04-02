n,k,x,*a=$<.read.split.map &:to_i
sum=0
use_count=0
ary=[]
a.each{|v|
  sum+=v
  use_count+=v/x
  ary<<v%x
}
ans=sum-x*[use_count,k].min
ans-=ary.max([k-use_count, n].min).sum if k>use_count
puts ans