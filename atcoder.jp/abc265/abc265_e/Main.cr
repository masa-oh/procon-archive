MOD=998244353
n,m=gets.to_s.split.map &.to_i64
a,b,c,d,e,f=gets.to_s.split.map &.to_i64
xy=m.times.map{gets.to_s.split.map &.to_i64}.to_a
s=Set.new(xy)
# dp[i][p][q] := 合計i回の移動のうち、移動1をp回、移動2をq回、移動3をr回行う経路の場合の数
dp=Array.new(n+1){Array.new(n+1){Array.new(n+1,0i64)}}
dp[0][0][0]=1
(1i64..n).each{|i|
  (0i64..i).each{|p|
    (0i64..i).each{|q|
      next if p+q>=i
      r=[i-1-p-q, 0i64].max
      dp[i][p+1][q] = (dp[i][p+1][q] + dp[i-1][p][q]) % MOD if !s.includes? [(p+1)*a+q*c+r*e, (p+1)*b+q*d+r*f]
      dp[i][p][q+1] = (dp[i][p][q+1] + dp[i-1][p][q]) % MOD if !s.includes? [p*a+(q+1)*c+r*e, p*b+(q+1)*d+r*f]
      dp[i][p][q] = (dp[i][p][q] + dp[i-1][p][q]) % MOD if !s.includes? [p*a+q*c+(r+1)*e, p*b+q*d+(r+1)*f]
    }
  }
}
ans = 0i64
dp[n].map{|arr|
  arr.map{|v|
    ans = (ans + v) % MOD
  }
}
p ans