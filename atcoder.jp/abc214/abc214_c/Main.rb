(n,),s,t=$<.map{_1.split.map &:to_i}
dp=Array.new(n,0)
dp[0]=t[0]
(1..n).each{|i|
  if i<n
    dp[i]=[dp[i-1]+s[i-1], t[i]].min
  else
    dp[0]=[dp[i-1]+s[i-1], t[0]].min
  end
}
(1..n-1).each{|i|
  dp[i]=[dp[i-1]+s[i-1], t[i]].min
}
puts dp