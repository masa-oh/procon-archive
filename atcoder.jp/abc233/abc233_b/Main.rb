l,r=gets.split.map &:to_i
s=gets.chomp.chars
puts ((0..l-2).map{s[_1]}+(l-1..r-1).reverse_each.map{s[_1]}+(r..s.size-1).map{s[_1]})*''