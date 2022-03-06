MOD=998244353
n=gets.to_i
dp=Array.new(n){Array.new(11,0)}
(1..9).each{|i|dp[0][i]=1}
(1..n-1).each{|i|
  (1..9).each{|j|
    dp[i][j]=(dp[i-1][j-1]+dp[i-1][j]+dp[i-1][j+1])%MOD
  }
}
p dp[-1].sum%MOD