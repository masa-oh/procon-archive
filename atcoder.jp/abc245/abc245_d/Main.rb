n,m=gets.split.map &:to_i
a=gets.split.map(&:to_i).reverse
c=gets.split.map(&:to_i).reverse
b=[]
(0..m).each{|i|
  b << c[i]/a[0]
  (0..n).each{|j|
    c[i+j] -= a[j]*b[-1]
  }
}
puts b.reverse*' '