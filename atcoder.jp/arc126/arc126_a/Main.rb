(t,),*c=$<.map{_1.split.map &:to_i}
c.each{|a,b,c|
  ans=0
  # bに着目
  bs=b/2
  if bs<c
    ans+=bs
    c-=bs
  else
    ans+=c
    bs-=c
    c=0
    as=a/2
    ans+=[as,bs].min
    a-=[as,bs].min*2
  end
  # cに着目
  cs=c/2
  ans+=[a,cs].min
  a-=[a,cs].min
  # aに着目
  if c.odd? && a>=3
    a-=3
    ans+=a/5+1
  else
    ans+=a/5
  end
  puts ans
}