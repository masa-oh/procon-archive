n,*a=$<.read.split.map &:to_i
h=a.tally
p (0..50000).sum{|i|
  if i<50000
    (h[i]||0) * (h[100000-i]||0)
  else
    h[i] ? h[i]*(h[i]-1)/2 : 0
  end
}