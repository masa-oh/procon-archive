n,*h=$<.read.split.map &:to_i
dp=Array.new(n,10**9)
dp[0]=0
(0..n-1).each{|i|
  dp[i+1]=[dp[i]+(h[i+1]-h[i]).abs, dp[i+1]].min if i+1<n
  dp[i+2]=[dp[i]+(h[i+2]-h[i]).abs, dp[i+2]].min if i+2<n
}
p dp[-1]