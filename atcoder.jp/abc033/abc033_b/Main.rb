_=gets.to_i
s,p=$<.map{_1.chomp.split}.transpose
p=p.map &:to_i
puts (m=p.max)*2>p.sum ? s[p.index(m)] : :atcoder