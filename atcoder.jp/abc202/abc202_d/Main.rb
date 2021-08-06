a,b,k=gets.split.map &:to_i
M=30
ans=''

dp=Array.new(M+1){Array.new((M+1),0)} #dp[i][j]はaがi個とbがj個からなる文字列の総数
dp[0][0]=1

(0..a).each{|i|
  (0..b).each{|j|
    dp[i][j]+=dp[i-1][j] if i>0
    dp[i][j]+=dp[i][j-1] if j>0
  }
}

while a>0 && b>0 do
  if k<=dp[a-1][b]
    ans << 'a'
    a-=1
  else
    k-=dp[a-1][b]
    ans << 'b'
    b-=1
  end
end

puts ans << 'a'*a << 'b'*b