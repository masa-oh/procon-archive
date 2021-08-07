n=gets.to_i
ans=Float::INFINITY
(1...n).each{|i|
  if ans>(tmp=i.digits.sum+(n-i).digits.sum)
    ans=tmp
  end
}
p ans