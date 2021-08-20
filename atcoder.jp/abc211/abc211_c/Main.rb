S=gets.chomp.chars
T='*chokudai'.chars
M=10**9+7

# dp[1]は'c'を作れる個数、dp[2]は'ch'を作れる個数、…
# …、dp[7]は'chokuda'を作れる個数、dp[8]は'chokudai'を作れる個数
dp=Array.new(9,0)
dp[0]=1

S.each{|c|
  i=T.index(c)
  next if i.nil?
  dp[i]+=dp[i-1]
  dp[i]%=M
}

puts dp[8]