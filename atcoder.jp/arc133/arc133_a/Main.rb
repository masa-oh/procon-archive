n,*a=$<.read.split.map &:to_i
x=a[..-2].find.with_index{|_,i|a[i]>a[i+1]}||a[-1]
puts a.reject{_1==x}