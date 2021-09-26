_,*a,x=$<.read.split.map &:to_i

a_size=a.size
a_sum=a.sum
tmp_sum=0
as=(0...a_size).map{tmp_sum+=a[_1]}

p (1..10**18+1).bsearch{|i|
  t=a_sum*(i/a_size)
  t+=as[i%a_size-1] if i%a_size!=0
  x<t
}