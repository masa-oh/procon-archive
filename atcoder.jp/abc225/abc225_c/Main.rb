(n,m),*b=$<.map{_1.split.map &:to_i}
flg=true

# 位置関係が正しいか
tmp=(0..10**9).bsearch{|x|7*x+1>b[0][0]}
left=7*(tmp-1)+1
flg=false if b[0][-1]>left+6

# 順番に並んでいるか
b.each_with_index{|line,idx|
  (1...m).each{|i|flg=false if line[i]-line[i-1]>1}
  if idx>0
    flg=false if b[idx][0]-b[idx-1][0]!=7
  end
}

puts flg ? :Yes : :No