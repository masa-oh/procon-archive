n,*p=$<.read.split.map &:to_i
# c[i] := i回操作した時、喜ぶ人数
c=Array.new(n,0)
n.times.map{|i|
  # 人p[i]の正面、右隣、左隣に料理p[i]を移動させるような操作回数のとき、幸福度+1
  c[(p[i]-i-1)%n]+=1
  c[(p[i]-i)%n]+=1
  c[(p[i]-i+1)%n]+=1
}
p c.max