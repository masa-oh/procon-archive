n,y=gets.split.map &:to_i
ans=[-1]*3
(0..n).each{|i|
  (0..n-i).each{|j|
    k = (y - 10000 * i - 5000 * j) / 1000
    ans = [i,j,k] if k >= 0 && i + j + k == n
  }
}
puts ans