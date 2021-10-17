s=gets.chomp
n=s.size
s+=s
ary=n.times.map{|i|s[i,n]}
puts ary.min
puts ary.max
