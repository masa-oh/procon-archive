(h,w),*a=$<.map{_1.split.map &:to_i}
x=a.map &:sum
y=a.transpose.map &:sum

puts h.times.map{|i|
  w.times.map{|j|x[i]+y[j]-a[i][j]}*' '
}