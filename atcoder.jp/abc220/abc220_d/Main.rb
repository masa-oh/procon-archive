n,*a=$<.read.split.map &:to_i
mod=998244353

dp=Array.new(n+1){Array.new(10,0)}
dp[1][(a[0]+a[1])%10]+=1
dp[1][(a[0]*a[1])%10]+=1

(2...n).each{|i|
  dp[i-1].each_with_index{|j,idx|
    if j>0
      f=(idx+a[i])%10
      g=(idx*a[i])%10
      dp[i][f]=(dp[i][f]+j)%mod
      dp[i][g]=(dp[i][g]+j)%mod
    end
  }
}

puts dp[n-1]