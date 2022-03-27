n=gets.to_i
dp=Array.new(n+1,0)
dp[0]=1
(1..n).each{|i|
  dp[i]+=dp[i-1]
  dp[i]+=dp[i-2] if i-2>=0
}
p dp[-1]