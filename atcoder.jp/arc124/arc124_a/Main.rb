N,K=gets.split.map &:to_i
ck=K.times.map{gets.chomp.split}
dp=Array.new(N,K)

ck.each{|c,k|
  k=k.to_i
  dp[k-1]=1
  case c
  when ?L
    (0..k-2).each{dp[_1]-=1 if dp[_1]>1}
  when ?R
    (k..N-1).each{dp[_1]-=1 if dp[_1]>1}
  end
}

print dp.inject(:*)%998244353