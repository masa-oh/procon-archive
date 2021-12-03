n=gets.to_i
sqrt=Integer::sqrt(n)
ans=0
(1..sqrt).each{|i|
  ans+=(n/i-n/(i+1))*i
}
(1..n/(sqrt+1)).each{|i|
  ans+=n/i
}
p ans