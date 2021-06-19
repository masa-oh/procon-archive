N = gets.to_i
A = gets.split.map(&:to_i).sort

dp=Array.new(N,0)
flg=true # 同じ数が2回目以上かどうか
tmp=0
(1..N-1).each {|i|
  if A[i] == A[i-1]
    tmp = flg ? tmp : i-1
    dp[i] = dp[i-1] + tmp
    flg = true
  else
    dp[i] = dp[i-1] + i
    flg = false
  end
}

puts dp[-1]