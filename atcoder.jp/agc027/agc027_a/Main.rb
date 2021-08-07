(n,x),a=$<.map{_1.split.map &:to_i}
a.sort!
(0..n-2).each{|i|
  if x<a[i]
    p i; exit
  else
    x-=a[i]
  end
}
p x==a[n-1] ? n : n-1