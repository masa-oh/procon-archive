s=gets.chomp
ans=Float::INFINITY
(0..s.size-3).each{|i|
  ans=[(s[i,3].to_i-753).abs,ans].min
}
p ans