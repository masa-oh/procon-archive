n=gets.to_i
ans=-1
(1..30).each{|i|
  ans=i and break if n==(3**i+1)*(3**(30-i))
}
puts ans