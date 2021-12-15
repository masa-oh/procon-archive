n,*a=$<.read.split.map &:to_i
p (-100..100).map{|i|
  a.sum{|j|(j-i)**2}
}.min