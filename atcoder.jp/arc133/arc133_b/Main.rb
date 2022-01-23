(n,),p,q=$<.map{_1.split.map &:to_i}

# pos[i]　=　配列qの値がiのときのindex
pos=Array.new(n+1,-1)
(0..n-1).each{|i|pos[q[i]]=i}

# g[i] = 配列qの値がiの倍数の時のindex（配列gはiの昇順、jの降順にソートされた状態）
g=Array.new(n+1){[]}
(1..n).each{|i|
  x=i
  while x<=n  # iの倍数を全探索
    g[i] << pos[x]
    x+=i
  end
  g[i].sort_by!{|v|-v}
}

# lower_boundで最長増加部分列(LIS)の長さを求める
# dp[i] = qのindexの最長増加部分列の長さがiとなるとき、その部分列の最終要素の最小値
dp=Array.new(n+1,10**9)
max=0
(0..n-1).each{|i|
  g[p[i]].each{|j|
    idx=dp.bsearch_index{|v|v>=j}  # dpの値が初めてj以上となるindexを探す
    dp[idx]=j
    max=[max,idx].max
  }
}
p max+1