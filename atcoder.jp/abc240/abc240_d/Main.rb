n,*as=$<.read.split.map &:to_i
cnt=0
ary=[[0,0]] # [直前の数字, 連続した個数]
ans=[]
as.each{|a|
  if a==ary[-1][0] && a==ary[-1][1]+1
    cnt-=a-1
    ary.pop
  else
    cnt+=1
    if a==ary[-1][0]
      ary[-1][1]+=1
    else
      ary<<[a,1]
    end
  end
  ans << cnt
}
puts ans