s = gets.chomp.chars
n = s.size - 1 # +が入る場所の数

# bit全探索。1が立っているところに+を入れる。
p [0,1].repeated_permutation(n).sum{|ary|
  tmp = [s[0]]
  sum = 0
  n.times{|x|
    if ary[x] == 1
      sum += tmp.join.to_i
      tmp = []
    end
    tmp << s[x+1]
  }
  sum += tmp.join.to_i
}