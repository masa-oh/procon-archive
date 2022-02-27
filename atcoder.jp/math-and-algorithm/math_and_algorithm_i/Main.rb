n,s,*a=$<.read.split.map &:to_i
dp=Array.new(n+1){Array.new(s+1,false)}
dp[0][0]=true
(0..n-1).each{|i|
  (0..s).each{|j|
    if dp[i][j]
      dp[i+1][j]=true
      dp[i+1][j+a[i]]=true
    end
  }
}
puts dp[n][s] ? :Yes : :No