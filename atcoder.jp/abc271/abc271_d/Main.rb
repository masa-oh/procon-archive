(n,s),*ab=$<.map{_1.split.map &:to_i}
dp=Array.new(n+1){Array.new(10010,false)}
dp[0][0]=''
(0..n-1).each{|i|
  (0..1).each{|j|
    (0..10001).each{|k|
      v = ab[i][j]
      ptr = j==0 ? ?H : ?T
      dp[i+1][k+v] = dp[i][k] + ptr if dp[i][k] && k+v<=10000
    }
  }
}
puts dp[n][s] ? [:Yes,dp[n][s]] : :No