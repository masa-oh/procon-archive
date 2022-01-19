(n,ma,mb),*abc=$<.map{_1.split.map &:to_i}
a,b,c=abc.transpose
INF=Float::INFINITY

# dp[i][ca][cb] = i 番目までの薬品の組み合わせで、物質 A が ca グラム、物質 B が cb グラムとなる溶液の最小コスト
dp=Array.new(n+1){Array.new(n*10+11){Array.new(n*10+11,INF)}}
dp[0][0][0]=0
(0..n-1).each do |i|
  (0..n*10).each do |ca|
    (0..n*10).each do |cb|
      next if dp[i][ca][cb]==INF
      dp[i+1][ca][cb]=[ dp[i+1][ca][cb], dp[i][ca][cb] ].min
      dp[i+1][ca+a[i]][cb+b[i]]=[ dp[i+1][ca+a[i]][cb+b[i]], dp[i][ca][cb]+c[i] ].min
    end
  end
end

ans=INF
(1..n*10).each do |ca|
  (1..n*10).each do |cb|
    ans=[ ans, dp[n][ca][cb] ].min if ca*mb==cb*ma
  end
end

ans=-1 if ans==INF
p ans