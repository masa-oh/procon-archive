n,m,k=gets.split.map &:to_i
MOD=998244353
return p m.pow(n, MOD) if k==0
# dp[i][j] := 長さiの配列をなし、最後にjを選んだ時の選び方の総和
dp=Array.new(n+1){Array.new(m+1,0)}
(1..m).each{dp[1][_1]=1}
dp_sum=dp.dup
(2..n).each{|i|
  (1..m).each{|j|
    dp_sum[i-1][j] = (dp_sum[i-1][j-1] + dp[i-1][j]) % MOD
  }
  (1..m).each{|j|
    dp[i][j] = dp[i][j] + dp_sum[i-1][j-k] % MOD if j - k >= 1
    dp[i][j] = dp[i][j] + (dp_sum[i-1][m] - dp_sum[i-1][j+k-1]) % MOD if j + k <= m
  }
}
p dp[-1].sum % MOD