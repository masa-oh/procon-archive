_=gets.to_i
as=gets.split.map &:to_i
ans=0

loop {
  as=as.map{|a| a.even? ? a/2 : -1}
  break if as.include?(-1)
  ans+=1
}

puts ans