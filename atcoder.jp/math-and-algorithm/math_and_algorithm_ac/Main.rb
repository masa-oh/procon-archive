n,*a=$<.read.split.map &:to_i
dp1=Array.new(n,0) # 選んだ
dp2=Array.new(n,0) # 選ばなかった
dp1[0]=a[0]
(1..n-1).each{|i|
  dp1[i]=[dp1[i-1], dp2[i-1]+a[i]].max
  dp2[i]=[dp1[i-1], dp2[i-1]].max
}
p [dp1[-1], dp2[-1]].max