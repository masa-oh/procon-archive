n,m,k,s,t,x=gets.to_s.split.map &.to_i64
s-=1; t-=1; x-=1
uv=m.times.map{gets.to_s.split.map{|v|v.to_i-1}.to_a}.to_a
g=Array.new(n){[] of Int32}
MOD=998244353
uv.each{|(u,v)|
  g[u] << v
  g[v] << u
}
dp=Array.new(k+1){Array.new(n){[0,0]}}
dp[0][s][0]=1
(1..k).each{|i| # i回目の遷移
  (0..n-1).each{|j| # 頂点jに到達するパターンを数える
    g[j].each{|l| # 頂点jにくる直前の頂点をlとする
      dp[i][j][0]+=dp[i-1][l][0]
      dp[i][j][0]%=MOD
      # 頂点xに到達した回数が奇数のものを数える
      if j==x
        dp[i][j][1]+=dp[i-1][l][0]-dp[i-1][l][1]
      else
        dp[i][j][1]+=dp[i-1][l][1]
      end
      dp[i][j][1]%=MOD
    }
  }
}
p (dp[k][t][0]-dp[k][t][1])%MOD