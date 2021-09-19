(n,m),*ab=$<.map{_1.split.map &:to_i}
ab.sort!{|x,y|(x[0]<=>y[0]).nonzero? || y[1]<=>x[1]}

dp=Array.new(m,n+1)
ab.transpose[1].each_with_index{|b,i|
  idx=dp.bsearch_index{|j|b<=j}
  dp[idx]=b
}
p dp.bsearch_index{|j|n+1<=j}||m