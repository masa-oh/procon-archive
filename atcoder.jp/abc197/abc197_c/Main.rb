n,*a=$<.read.split.map &:to_i
ans=Float::INFINITY
# 方針：aに区切りを入れることを考え、aに入れる区切りの数iに注目して全探索する
(0..n-1).each{|i|
  # 0（aの1番目の要素の左）に加えて、1〜n-1から区切りをi個選ぶ場合の選び方を全列挙する
  [*1..n-1].combination(i).each{|j|
    divs=j.dup.unshift(0).push(n) # 区切りを入れる位置を表す配列
    ors=(1..i+1).map{|k|a[divs[k-1], divs[k]-divs[k-1]].inject(:|)}
    xor=ors.inject(:^)
    ans=xor if ans>xor
  }
}
p ans