n=gets.to_s.to_i64
s=n.times.map{gets.to_s.chomp.chars}.to_a
flg=false

n.times{|i|
  n.times{|j|
    # 縦を調べる
    flg=true if i<n-5 && (0..5).count{|k|s[i+k][j]=='.'} <= 2
    # 横を調べる
    flg=true if j<n-5 && (0..5).count{|k|s[i][j+k]=='.'} <= 2
    # 斜めを調べる
    flg=true if i<n-5 && j<n-5 && (0..5).count{|k|s[i+k][j+k]=='.'} <= 2
    flg=true if i>=5 && j<n-5 && (0..5).count{|k|s[i-k][j+k]=='.'} <= 2
  }
}

puts flg ? :Yes : :No