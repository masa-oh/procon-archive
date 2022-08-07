n,*ps=$<.read.split.map &:to_i
dp=Array.new(n+1,-1)
(0..n-2).each{|i|
  dp[i+2]=ps[i]
}
ans=0
x=n
while x>1
  x=dp[x]
  ans+=1
end
p ans