(N,W),*wv=$<.map{_1.split.map &:to_i}
# dp[i][j]は、i個目までの品物で、重さがj以内に収まる選び方をした時の価値の最大値
dp=Array.new(N+1){Array.new(W+1,-1)}
dp[0][0]=0
(0..N-1).each{|i|
  w,v=wv[i]
  (0..W).each{|j|
    next if dp[i][j]==-1
    dp[i+1][j]=[dp[i+1][j], dp[i][j]].max if i+1<=N
    dp[i+1][j+w]=[dp[i+1][j+w], dp[i][j]+v].max if i+1<=N && j+w<=W
  }
}
p dp[-1].max