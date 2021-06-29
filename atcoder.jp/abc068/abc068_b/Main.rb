n=gets.to_i
dp=Array.new(n+1,0)
(1..n).each{|i|
  tmp=i
  count=0
  flg=true
  while flg
    if tmp.even?
      tmp/=2
      count+=1
    else
      flg=false
    end
    dp[i]=count
  end
}
dp.slice!(0)
puts dp.index(dp.max)+1