k,s=gets.split.map &:to_i
ans=0
(0..k).each{|x|
  (0..k).each{|y|
    ans += 1 if (s - x - y).between?(0, k)
  }
}
p ans