n=gets.to_i
p (0..60).map{|b|
  a=n/(2**b)
  c=n-a*(2**b)
  a+b+c
}.min
