n,*a=$<.read.split.map &:to_i
ary=[0]
px=0
a.each{|x|
  t=(px+x)%360
  ary << t
  px=t
}
ary=ary.uniq
ary.sort!
s=ary.size
max=0
(0..s-1).each{|i|
  if i<s-1
    diff=ary[i+1]-ary[i]
  else
    diff=ary[0]+360-ary[i]
  end
  max=[diff,max].max    
}
p max