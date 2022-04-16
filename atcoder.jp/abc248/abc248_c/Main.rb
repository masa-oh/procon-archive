MOD=998244353
N,M,K=gets.split.map &:to_i

# dp[i][j] := 配列のi番目までを決めた時、総和がjとなる場合の数
dp=Array.new(N+1){Array.new(K+1, 0)}
dp[0][0]=1
(0..N-1).each{|i|
  (0..K-1).each{|j|
    (1..M).each{|k|
      if j+k <= K
        dp[i+1][j+k] += dp[i][j]
        dp[i+1][j+k] %= MOD
      end
    }
  }
}

# 配列のN番目までを決めた時、総和がK以下となる場合の数を出力
puts dp[N].sum % MOD