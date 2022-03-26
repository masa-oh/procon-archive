(n,k),a,b=$<.map{_1.split.map &:to_i}
x=true
y=true
(1..n-1).each{|i|
  px, py = x, y
  x = ((px && (a[i]-a[i-1]).abs<=k) || (py && (a[i]-b[i-1]).abs<=k)) ? true : false
  y = ((px && (b[i]-a[i-1]).abs<=k) || (py && (b[i]-b[i-1]).abs<=k)) ? true : false
}
puts (x||y) ? :Yes : :No