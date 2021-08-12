n=gets.to_i

# 「(」を0、「)」を1と考え、bit全探索
[0,1].repeated_permutation(n){|ary|
  # 「(」,「)」が同数の場合のみ処理を継続
  next if ary.count(0)!=ary.count(1)
  
  # 全てのi（1<=i<=n）で「(」の個数が「)」の個数以上ならば、正しいカッコ列として出力
  left=right=0
  flg=true
  n.times{|i|
    ary[i]==0 ? left+=1 : right+=1
    (flg=false; break) if left<right
  }
  puts ary.map{_1==0 ? '(' : ')'}*'' if flg
}