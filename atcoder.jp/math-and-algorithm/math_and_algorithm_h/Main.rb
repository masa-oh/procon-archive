n,s=gets.split.map &:to_i
p (1..n).sum{|i|
  (1..n).count{|j|
    i+j<=s
  }
}