n,x,*a=$<.read.split.map &:to_i
ary=Array.new(n,false)
ary[x-1]=true
while true
  x=a[x-1]
  ary[x-1] ? break : ary[x-1]=true
end
p ary.count{_1}